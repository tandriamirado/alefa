program alefa;

{ <description>

  Copyright (C) 2020 Thierry Andriamirado <thierry.andriamirado@netsika.net>

  This source is free software; you can redistribute it and/or modify it under
  the terms of the GNU General Public License as published by the Free
  Software Foundation; either version 2 of the License, or (at your option)
  any later version.

  This code is distributed in the hope that it will be useful, but WITHOUT ANY
  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
  FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
  details.

  A copy of the GNU General Public License is available on the World Wide Web
  at <http://www.gnu.org/copyleft/gpl.html>. You can also obtain it by writing
  to the Free Software Foundation, Inc., 59 Temple Place - Suite 330, Boston,
  MA 02111-1307, USA.
}


{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, CustApp,
  { you can add units after this }
  process;

const
  authorMail = 'thierry.andriamirado@netsika.net';
  authorTwitter = 'http://twitter.com/tandriamirado';
  
type

  { TAlefa }

  TAlefa = class(TCustomApplication)
  private
    appToRun: string;
    procExec: TProcess;
    // Options:
    optInfinite: boolean;
    optShowExitCode : boolean;
    optUntilExitCode0 : boolean;
    optTries: integer;
    optWait: longint;
    optFileList: String;
    FileListMode: boolean;
    ShellCmd, CmdEndingStr: String;
    procedure RunItAsIs;
    procedure setOptions;
    procedure initAlefa;
    procedure postExecTry;
    procedure RunInFileListMode;
  protected
    procedure DoRun; override;
  public
    FileList: TStringList;
    constructor Create(TheOwner: TComponent); override;
    destructor Destroy; override;
    procedure WriteHelp; virtual;
    procedure ShowUsage;
  end;

{ TAlefa }

procedure TAlefa.RunItAsIs;
var
  pathAppToRun, parametersAppToRun : String;
  nbTries: Integer;
  nbEndStr: String;
begin
  nbTries := 0;
  if optInfinite then nbEndStr := 'Infinite' else nbEndStr := IntToStr(optTries) +':';

//  procExec.CommandLine := 'sh -c "' + appToRun +'"';
  procExec.CommandLine := ShellCmd + appToRun + CmdEndingStr;

  
  repeat
    if nbTries > 0 then begin
       Sleep(optWait);
       writeln('++ Try #' + IntToStr(nbTries + 1) + ' / ' + nbEndStr + ':');
    end;
    procExec.Active := true;           // go!
    nbTries := nbTries + 1;
    postExecTry;
    //writeln('nbTries: ' + IntToStr(nbTries));
  until ((nbTries = optTries) and (optInfinite = false)) or ((procExec.ExitStatus = 0)  and (optInfinite = false));

end;

procedure TAlefa.RunInFileListMode;
var
  FileNumber, i: integer;
  tmpFileName: String;
begin
  writeln('+RunInFileListMode');

  if FileExists(optFileList) then begin
       // Populate the FileList TSringList:
       FileList.LoadFromFile(optFileList);
       FileNumber := FileList.Count;
       writeln('+Filelist: ' + optFileList + ', ' + IntToStr(FileNumber) + ' items.');
     end else begin
       writeln('Error: File ' + optFileList + ' doesn''t exist!');
       Halt;
     end;

  { TODO 2 -cFeature : Add feature: check if each file in the FileList exists! }

//  procExec.CommandLine := 'sh -c "' + appToRun +'"';

  for i := 0 to (FileNumber -1) do begin
      tmpFileName := FileList.Strings[i];
//      if FileExists(tmpFileName) then begin
         writeln(IntToStr(i) + ': ' + tmpFileName);
         procExec.CommandLine := ShellCmd + appToRun + ' ' + tmpFileName + CmdEndingStr;
         procExec.Active := true;
         postExecTry
//      end else writeln(IntToStr(i) + ': ' + tmpFileName + ' doesn''t exist! Not processed!');
  end;
end;

procedure TAlefa.setOptions;
begin
  { Alefa's options }
  // -i, --infinite: infinite retries
  if HasOption('i', 'infinite') then optInfinite := true;
  // -t, --tries=NUMBER: tries NUMBER times. Default: 5
  if HasOption('t', 'tries') then optTries := StrToInt(GetOptionValue('t', 'tries'))
     else optTries := 1;
  // -u, --unlimits: unlimits tries, equiv: -t 0
  if HasOption('u', 'unlimits') then begin
     OptUntilExitCode0 := true;
     optTries := 0;
  end;
  // -w, --wait: SECONDS between retries. Default: 1
  if HasOption('w','wait') then optWait := StrToInt(GetOptionValue('w','wait')) * 1000
     else optWait := 1000;
  // -x, --exitcode: show exit code
  if HasOption('x', 'exitcode') then OptShowExitCode := true;

  // -d, --exclude_file_list: the exclude file list
  if (HasOption('d', 'exclude_file_list')) or (HasOption('l', 'file_list')) then begin
     FileListMode := true;
     //if HasOption('d', 'exclude_file_list') then
     //   optFileList := GetOptionValue('d','exclude_file_list')
     //   else optFileList := GetOptionValue('l','file_list');
     optFileList := GetOptionValue('l','file_list');          // When exclude_file_list implemented: Delete and uncomment 3 lines above!
     FileList := TStringList.Create;
//     writeln('+Filelist: ' + optFileList + ', ' + IntToStr(FileList.Count) + ' items.');
  end;

  { Processe's options }
  procExec.Options := procExec.Options + [poWaitOnExit];
end;

procedure TAlefa.initAlefa;
begin
  {$IFDEF UNIX}
  ShellCmd := 'sh -c "';
  CmdEndingStr := '"';
  {$ENDIF}
  {$IFDEF WINDOWS}
  ShellCmd := 'c:\windows\system32\cmd.exe /c ';
  CmdEndingStr := '';
  {$ENDIF}

  OptShowExitCode := false;
  OptUntilExitCode0 := false;
  optTries := 0;
  FileListMode := false;
end;

procedure TAlefa.postExecTry;
begin
  if OptShowExitCode then writeln('Exit Code: ' + IntToStr(procExec.ExitStatus));
end;

procedure TAlefa.DoRun;
var
  ErrorMsg: String;

begin
  initAlefa;
  // quick check parameters
//  ErrorMsg:=CheckOptions('h i x t: u w:: l:: d::','help infinite exitcode tries: unlimits wait:: file_list:: exclude_file_list::');
ErrorMsg:=CheckOptions('h i x t: u w:: l::','help infinite exitcode tries: unlimits wait:: file_list::');

  if ErrorMsg<>'' then begin
    WriteHelp;
    writeln('');
    ShowException(Exception.Create(ErrorMsg));
    Halt;
  end;

  if ParamCount = 0 then begin
    ShowUsage;
    Halt;
  end;
  
  // parse parameters

  if HasOption('h', 'help') then begin
    // Show help screen and exit
    WriteHelp;
    Halt;
  end else begin
    // Core
    appToRun := ParamStr(ParamCount);
    setOptions;

    // Run it!
    if (not FileListMode) then RunItAsIs          // 'Normal' run mode
       else RunInFileListMode;                    // File List Mode

    //postExecTry;
  end;

  { add your program here }

  // stop program loop
  Terminate;
end;

constructor TAlefa.Create(TheOwner: TComponent);
begin
  inherited Create(TheOwner);
  StopOnException:=True;
  procExec := TProcess.Create(nil);
end;

destructor TAlefa.Destroy;
begin
  ExitCode := procExec.ExitStatus;
//  writeln('Alefa ExitCode: ' + IntToStr(ExitCode));
  procExec.Free;
  if FileListMode then FileList.Free;
  inherited Destroy;
end;

procedure TAlefa.WriteHelp;
begin
  { add your help code here }
  writeln('Alefa, application launch helper');
  writeln('Copyright (c) 2020 by Thierry Andriamirado');
  WriteLn('');
  WriteLn('  -h,  --help               show this help screen.');
  WriteLn('[Normal mode]');
  WriteLn('');
  writeln('Usage: ', ExtractFileName(ExeName),' [OPTION]... FILE');
  WriteLn('Execute FILE. FILE has to be the last argument, after all the OPTIONs.');
  WriteLn('');
  WriteLn('Mandatory arguments to long options are mandatory for short options too.');
  WriteLn('');
  writeln('  -i,  --infinite           Re-run until end of time');
  writeln('  -l,  --file_list          Run command on each file in the list');
  WriteLn('  -t,  --tries=NUMBER       Set number of retries to NUMBER (0 unlimits).');
  WriteLn('  -u,  --unlimits           Tries until exit code = 0 (equiv: --tries=0).');
  WriteLn('  -w,  --wait=SECONDS       Wait SECONDS between retries.');
  WriteLn('  -x,  --exitcode           Show exitcode. Can be useful for testing purposes.');
  WriteLn('');
  WriteLn('[File list mode]');
  WriteLn('  -l,  --file_list=PATH_TO_FILELIST       File listing the files to work with');
//  WriteLn('  -d,  --exclude_file_list=PATH_TO_FILELIST       File listing the files to excluDe');
  WriteLn('');
  writeln('Type "man alefa" for the complete manual page');
  WriteLn('--');
//  WriteLn('Report bugs to <' + authorMail + '>');
  WriteLn('Report bugs to ' + authorTwitter);

end;

procedure TAlefa.ShowUsage;
begin
  writeln('Alefa, application launch helper');
  writeln('Copyright (c) 2020 by Thierry Andriamirado');
  WriteLn('');
  writeln('Usage: ', ExtractFileName(ExeName),' [OPTION]... COMMAND');
  WriteLn('Execute COMMAND. COMMAND has to be the last argument, after all the OPTIONs.');
  WriteLn('');
  writeln('Usage #2: ', ExtractFileName(ExeName),' [OPTION]... "COMMAND [--OPTIONS]"');
  WriteLn('Execute COMMAND with its own OPTIONS. COMMAND has to be the last argument, after all the alefa''s OPTIONs. Note the double quotes enclosing the executable file and its parameters.');
  WriteLn('');
  WriteLn('Mandatory arguments to long options are mandatory for short options too.');
  WriteLn('--');
  writeln('Type "alefa --help" for help');
  writeln('Type "man alefa" for the complete manual page');
  WriteLn('--');
 //  WriteLn('Report bugs to <' + authorMail + '>');
  WriteLn('Report bugs to ' + authorTwitter);

end;


var
  Application: TAlefa;

// {$IFDEF WINDOWS}{$R alefa.rc}{$ENDIF}

{$R *.res}

begin
  Application:=TAlefa.Create(nil);
  Application.Run;
  Application.Free;
end.

