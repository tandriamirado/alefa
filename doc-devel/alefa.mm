<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1438250973853" ID="ID_1268543984" MODIFIED="1438253836322" TEXT="Alefa">
<node CREATED="1438252199622" ID="ID_867931580" MODIFIED="1438252265866" POSITION="right" TEXT="1substitute">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Commande de substitution &#224;&#160;executer SI la commande n'a pas retourn&#233; un exitcode de 0 apr&#232;s un certain nombre d'essais.
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1438252199634" ID="ID_1086294595" MODIFIED="1438252199634" POSITION="right" TEXT="2mail">
<node CREATED="1438252199635" ID="ID_1067534819" MODIFIED="1438252199635" TEXT="2.1mail if succeeded"/>
<node CREATED="1438252199636" ID="ID_1476344364" MODIFIED="1438252199636" TEXT="2.2mail if failed"/>
<node CREATED="1438252199638" ID="ID_1006430263" MODIFIED="1438252199638" TEXT="2.3mail result"/>
</node>
<node CREATED="1438252199640" ID="ID_1191534973" MODIFIED="1438252405285" POSITION="right" TEXT="3if">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      --if
    </p>
    <p>
      Execute uniquement si la condition est ok
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1438252199644" ID="ID_1803289237" MODIFIED="1438252199644" TEXT="3.1creneau horaire"/>
<node CREATED="1438252199646" ID="ID_1502503654" MODIFIED="1438252521356" TEXT="3.2resultat d&apos;une autre commande">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Utile pour tous les autres cas non-pr&#233;vus par 'alefa'
    </p>
    <ul>
      <li>
        <p>
          exitcode = 0
        </p>
      </li>
      <li>
        <p>
          exitcode = x
        </p>
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
<node CREATED="1438252199652" ID="ID_983829499" MODIFIED="1438252199652" TEXT="3.3existence d&apos;un fichier">
<node CREATED="1438252199653" ID="ID_1966126246" MODIFIED="1438252199653" TEXT="3.3.1fichier existe"/>
<node CREATED="1438252199654" ID="ID_470726418" MODIFIED="1438252199654" TEXT="3.3.2fichier n&apos;existe pas"/>
</node>
<node CREATED="1438252199656" ID="ID_247505583" MODIFIED="1438252199656" TEXT="3.4programme en cours d&apos;execution">
<node CREATED="1438252199657" ID="ID_422733892" MODIFIED="1438252199657" TEXT="3.4.1pgm est en cours d&apos;exec"/>
<node CREATED="1438252199659" ID="ID_767208885" MODIFIED="1438252199659" TEXT="3.4.2pgm n&apos;est pas en cours d&apos;execution"/>
</node>
<node CREATED="1438252199660" ID="ID_1128270013" MODIFIED="1438252199660" TEXT="3.5Connect&#xe9;"/>
<node CREATED="1438252199662" ID="ID_392859108" MODIFIED="1438252199662" TEXT="3.6partition mont&#xe9;e"/>
<node CREATED="1438252199664" ID="ID_1580403635" MODIFIED="1438252597078" TEXT="3.7p&#xe9;riph&#xe9;rique connect&#xe9;">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      ex: un p&#233;riph&#233;rique USB
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1438252199668" ID="ID_1754275023" MODIFIED="1438252615779" TEXT="3.8un hote sur le reseau r&#xe9;pond">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      ping
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1438252199671" ID="ID_1625013714" MODIFIED="1438252636906" POSITION="right" TEXT="4Reprise">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Continue si interrompu (cas de reboot ou halt, etc...)
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1438252199674" ID="ID_1995555446" MODIFIED="1438252679887" POSITION="right" TEXT="5next execute">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Commande ou shell &#224;&#160;executer si l'action a r&#233;ussi ou a &#233;chou&#233;.
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1438252199676" ID="ID_1960464054" MODIFIED="1438252199676" TEXT="5.1if failed"/>
<node CREATED="1438252199678" ID="ID_958422219" MODIFIED="1438252199678" TEXT="5.2if succeeded"/>
</node>
<node CREATED="1438252199679" ID="ID_609988172" MODIFIED="1438252818990" POSITION="right" TEXT="6shell-script dir">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        reconnaissance automatique de la commande &#224;&#160;ex&#233;cuter, exemple 'cmdxxxx' permettant de lancer:
      </li>
      <li>
        <p>
          cmdxxxx-before (&#224; lancer avant de lancer l'action)
        </p>
      </li>
      <li>
        <p>
          cmdxxxx-failed
        </p>
      </li>
      <li>
        <p>
          cmdxxxx-succeeded
        </p>
      </li>
    </ul>
    <p>
      L'utilisateur peut cr&#233;er des scripts &#224;&#160;mettre dans ce repertoire, respectant ces noms.
    </p>
    <ul>
      <li>
        <p>
          Tester et exec cmdxxxx-before avant de lancer
        </p>
      </li>
      <li>
        <p>
          tester et exec cmdxxxx-failed ou cmdxxxx-succeeded apr&#232;s avoir lanc&#233;.
        </p>
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1438252199696" ID="ID_626743591" MODIFIED="1438252876639" POSITION="right" TEXT="7user">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Run as 'user'. sudo si shell, gksu si gnome, etc...
    </p>
    <p>
      saisie + cryptage du mot de passe (???!!!)
    </p>
    <p>
      le plus simple reste de lancer 'alefa' avec un sudo (!)
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1438252199702" ID="ID_1445258989" MODIFIED="1438252889694" POSITION="right" TEXT="8exec de commande &#xe0; distance">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      rsh? ssh?
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1438252199704" ID="ID_950966820" MODIFIED="1438252989506" TEXT="8.1exec de la m&#xea;me commande sur plusieurs machines en m&#xea;me temps">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        log s&#233;par&#233;? (= 1 par machine? 1 sur chaque machine?)
      </li>
      <li>
        <p>
          1 log commun sur la machine 'ma&#238;tre'?
        </p>
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1438252199710" ID="ID_122530978" MODIFIED="1438252199710" POSITION="right" TEXT="9exec seulement si hote appelant = xxx"/>
<node CREATED="1438252199711" ID="ID_1168092708" MODIFIED="1438252199711" POSITION="right" TEXT="10fonctionnement">
<node CREATED="1438252199712" ID="ID_317073565" MODIFIED="1438253013711" TEXT="10.1detect shell">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      shell &#224;&#160;uiliser
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1438252199715" ID="ID_410619149" MODIFIED="1438252199715" TEXT="10.2dbus">
<node CREATED="1438252199716" ID="ID_1269388168" MODIFIED="1438252199716" TEXT="10.2.1message quand ok ou failed">
<node CREATED="1438252199717" ID="ID_707993322" MODIFIED="1438253040515" TEXT="10.2.1.1ok">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      afficher ok apres t tries, s secondes
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1438252199720" ID="ID_128365796" MODIFIED="1438253075665" TEXT="10.2.1.2failed">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        <p>
          apres t tries, s secondes
        </p>
      </li>
      <li>
        <p>
          code d'erreur interpr&#233;t&#233;
        </p>
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node CREATED="1438252199724" ID="ID_291412032" MODIFIED="1438253100963" TEXT="10.3viewlog">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        <p>
          par date
        </p>
      </li>
      <li>
        <p>
          par soft
        </p>
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1438252199728" ID="ID_922410235" MODIFIED="1438253115302" TEXT="10.4injection de commandes (&apos;y&apos;, etc...)">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      N&#233;cessite donc 1 'enregistreur'?
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1438252199731" ID="ID_1034304100" MODIFIED="1438253131099" TEXT="10.5mode &apos;net&apos;">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      D&#233;tection auto de connexion, attente auto de connexion, etc... si la commande a besoin du net.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1438252199740" FOLDED="true" ID="ID_1918716570" MODIFIED="1438253302765" POSITION="right" TEXT="11macro-commandes">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Suite d'actions &#224;&#160;lire dans fichier
    </p>
    <ul>
      <li>
        <p>
          avec tests
        </p>
      </li>
      <li>
        <p>
          avec boucles et it&#233;rations
        </p>
      </li>
    </ul>
  </body>
</html>
</richcontent>
<node CREATED="1438252199746" ID="ID_1582104126" MODIFIED="1438252199746" TEXT="11.1editeur de macros">
<node CREATED="1438252199747" ID="ID_1529822702" MODIFIED="1438252199747" TEXT="11.1.1FreeVision"/>
<node CREATED="1438252199748" ID="ID_1716833243" MODIFIED="1438252199748" TEXT="11.1.2gtk2"/>
</node>
</node>
<node CREATED="1438252199750" ID="ID_855034625" MODIFIED="1438252199750" POSITION="right" TEXT="12chroot"/>
<node CREATED="1438252199751" ID="ID_635647688" MODIFIED="1438253386442" POSITION="right" TEXT="13waitfor">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p style="margin-left: 0px; text-indent: 0px; margin-top: 12px; margin-right: 0px; margin-bottom: 12px">
      Attend qu'une condition soit remplie et execute
    </p>
    <ul>
      <li>
        connexion internet
      </li>
      <li style="margin-left: 0px; margin-top: 0px; text-indent: 0px; margin-right: 0px; margin-bottom: 0px">
        branchement d'un p&#233;riph&#233;rique
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1438252199757" ID="ID_704263205" MODIFIED="1438252199757" POSITION="right" TEXT="14interrompre">
<node CREATED="1438252199758" ID="ID_441952332" MODIFIED="1438252199758" TEXT="14.1&#xe0; date=d et heure=h"/>
<node CREATED="1438252199759" ID="ID_106254031" MODIFIED="1438252199759" TEXT="14.2apr&#xe8;s s secondes ou m minutes ou h heure ou j jour"/>
<node CREATED="1438252199761" ID="ID_1320260781" MODIFIED="1438252199761" TEXT="14.3condition inverse &#xe0; &apos;if&apos; se passe entre temps"/>
</node>
<node CREATED="1438252199762" ID="ID_636860742" MODIFIED="1438252199762" POSITION="right" TEXT="15daemon: alefad">
<node CREATED="1438252199764" ID="ID_1922076158" MODIFIED="1438252199764" TEXT="15.1continue si mode reprise"/>
</node>
<node CREATED="1438252199765" ID="ID_559214107" MODIFIED="1438253450231" POSITION="right" TEXT="16infinite">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Toujours relancer quel que soit le r&#233;sultat pr&#233;c&#233;dent.
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1438252199768" ID="ID_62307908" MODIFIED="1438253506891" POSITION="right" TEXT="17Interactive (-v)">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p style="margin-left: 0px; text-indent: 0px; margin-top: 12px; margin-right: 0px; margin-bottom: 12px">
      Interactive, ou View:
    </p>
    <ul>
      <li>
        interactivit&#233; genre 'top' mais en 'mieux': utilisation de TVision (?)
      </li>
      <li style="margin-left: 0px; margin-top: 0px; text-indent: 0px; margin-right: 0px; margin-bottom: 0px">
        Par exemple pour les commandes infinites + wait (renouvellement de la m&#234;me commande &#224; l'infini, type 'alefa -i -w 30 mailq' pour attendre qu'un mail soit envoy&#233;): permet par exemple de selectionner une chaine (QueueID) et de quitter et/ou envoyer mail quand la chaine n'y est plus ;-)))
      </li>
      <li style="margin-left: 0px; margin-top: 0px; text-indent: 0px; margin-right: 0px; margin-bottom: 0px">
        Voir modularit&#233; et r&#233;-utilisabilit&#233; du code entre TVision et GTK (!!!)
      </li>
    </ul>
    <p style="margin-left: 0px; margin-top: 0px; text-indent: 0px; margin-right: 0px; font-family: Sans Serif; font-size: 10pt; margin-bottom: 0px">
      <br />
      
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1438252199785" ID="ID_290683034" MODIFIED="1438252199785" TEXT="17.1Commandes">
<node CREATED="1438252199787" ID="ID_1233739464" MODIFIED="1438253602437" TEXT="17.1.1when (w)">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p style="margin-left: 0px; text-indent: 0px; margin-top: 12px; margin-right: 0px; margin-bottom: 12px">
      Declencher une action quand...
    </p>
  </body>
</html></richcontent>
<node CREATED="1438252199790" ID="ID_1781224216" MODIFIED="1438252199790" TEXT="17.1.1.1chaine n&apos;est plus l&#xe0;"/>
<node CREATED="1438252199792" ID="ID_1701495145" MODIFIED="1438252199792" TEXT="17.1.1.2chaine appara&#xee;t"/>
</node>
</node>
<node CREATED="1438252199793" ID="ID_1032421881" MODIFIED="1438252199793" TEXT="17.2Actions possibles">
<node CREATED="1438252199794" ID="ID_404704533" MODIFIED="1438252199794" TEXT="17.2.1Quitter et arreter alefa"/>
<node CREATED="1438252199796" ID="ID_706332779" MODIFIED="1438252199796" TEXT="17.2.2Quitter et laisser alefa en tache de fond"/>
<node CREATED="1438252199797" ID="ID_1740548180" MODIFIED="1438252199797" TEXT="17.2.2.1Commande de r&#xe9;cup&#xe9;ration type &apos;screen -x&apos;"/>
<node CREATED="1438252199799" ID="ID_1584982347" MODIFIED="1438252199799" TEXT="17.2.3envoyer mail"/>
<node CREATED="1438252199800" ID="ID_894920061" MODIFIED="1438252199800" TEXT="17.2.4commande personnalis&#xe9;e"/>
</node>
<node CREATED="1438252199801" ID="ID_258232875" MODIFIED="1438253698416" TEXT="17.3Sortie de logs">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        Sortie de logs, en plus des sorties normales du soft. (<b>Genre tail</b>, mais en plus &#233;volu&#233;!).
      </li>
      <li style="margin-left: 0px; text-indent: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 12px">
        Sortie de r&#233;sultat de commande r&#233;guli&#232;rement lanc&#233;e. (Exemple d'utilisation: backup-manager avec un df -h etc... pour voir si place disque ne va pas d&#233;passer. Trouver un meilleur exemple)
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1438252199813" ID="ID_793474825" MODIFIED="1438252199813" TEXT="17.4Alefa Manager">
<node CREATED="1438252199814" ID="ID_774114696" MODIFIED="1438253744287" TEXT="17.4.1gestion des &apos;alefa&apos;">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <ul>
      <li style="margin-left: 0px; text-indent: 0px; margin-top: 12px; margin-right: 0px; margin-bottom: 0px">
        Voir les sorties des diff&#233;rents 'alefa' en cours
      </li>
      <li style="margin-left: 0px; margin-top: 0px; text-indent: 0px; margin-right: 0px; margin-bottom: 0px">
        lancer de nouvelles commandes 'alefa'<br />
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node CREATED="1438252199819" ID="ID_894256167" MODIFIED="1438253792729" POSITION="right" TEXT="18view -v[x] (PAS -v)">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p style="margin-left: 0px; text-indent: 0px; margin-top: 12px; margin-right: 0px; margin-bottom: 12px">
      Rmq: '-v' = mode interactive. Switch 'view' = form&#233; par 2 caracteres.
    </p>
    <ul>
      <li>
        -vt: view time
      </li>
    </ul>
    <p style="margin-left: 0px; margin-top: 0px; text-indent: 0px; margin-right: 0px; font-family: Sans Serif; font-size: 10pt; margin-bottom: 0px">
      <br />
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1438252199823" ID="ID_150894355" MODIFIED="1438252199823" POSITION="right" TEXT="19galefa">
<node CREATED="1438252199825" ID="ID_1769265676" MODIFIED="1438252199825" TEXT="19.1Memes fonctionnalit&#xe9;s que la commande interactive (-v)"/>
</node>
<node CREATED="1438252199826" ID="ID_1008546360" MODIFIED="1438253811905" POSITION="right" TEXT="20Same command">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Lancer la m&#234;me commande sur plusieurs fichiers.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</map>
