Þ            ­         À
     Á
  %   Ã
  !   é
  #     K   /  5   {  4   ±     æ  º   ö  .   ±  M   à  !   .     P  ^   \     »     Ò     è  3   |     °     ¹     Í     Ý  ç   ô     Ü  ã   l  7   P       3   §  ;   Û  ´     ª   Ì     w  J        Ð  a   ^  Z   À          (  ¸   6  2   ï  N   "  c   q  ¦   Õ  G   |  Í   Ä          £  :   ±     ì       (        D  «   M  "  ù  }     Ã        ^     l  £   ù       \  <       N   ²  K      E   M   I      #   Ý   !   !     #!  "   <!  #   _!     !     !  G   -"     u"  ^   ù"  /   X#  D   #  9   Í#  =   $  ;   E$  o   $  8   ñ$     *%  û   º%  5   ¶&      ì&  ¶   '  ]   D(  ¨   ¢(     K)  N   Ò)  j   !*     *     +  N   *+     y+     |+     +     +     +     µ+     Ã+     Ñ+     ×+     ä+     í+     ö+     ý+     ,     
,     ,      ,     (,     0,  	   8,     B,     F,  	   R,     \,     e,     k,     o,     u,     },     ,  l  ,     ö-  $   ø-  *   .  F   H.  ?   .  %   Ï.  U   õ.     K/    `/  B   x0  j   »0  A   &1     h1     y1     2     2  Å   12  E   ÷2     =3     M3     Z3     j3  ?  3  Ã   À4  ®   5  J   36     ~6  `   6  Q   þ6    P7  õ   W8     M9  e   `9  Â   Æ9  n   :  «   ø:     ¤;     ©;  Þ   °;  3   <  W   Ã<     =  ô   ±=  _   ¦>  þ   ?     @     @  T   $@  *   y@  <   ¤@  Q   á@     3A  ,  CA  u  pB  Í   æC  õ   ´D     ªE  ¸   ÀE  Ë   yF  Ý   EG  ª  #H  $   ÎI  6   óI  V   *J  Q   J  q   ÓJ  4   EK  2   zK     ­K  $   ÀK  %   åK     L  ©   )L  ]   ÓL  ½   1M     ïM  B   N  `   ÄN  a   %O  e   O  d   íO     RP  L   âP  ì   /Q  K  R  Q   hS  á   ºS    T     ¤U  ß   &V  µ   W  v   ¼W      3X  Æ   ÔX     Y  e   §Y     Z     Z     Z     Z     3Z     IZ     WZ     eZ     kZ     xZ     Z     Z     Z     Z     Z     ¦Z     ´Z     ¼Z     ÄZ  	   ÌZ     ÖZ     ÚZ  	   æZ     ðZ     ùZ     ÿZ     [     	[     [     [         O   L       E         Q      >   *               m             j   u   ,   Z   @   -       =      v                  R   U   a      <   `   f   ~   z   F          4   6      ;   x   T       Y           %       g   {       "   B   ^               )          q   _             l      r          '       C           /       I   .      V   0   P   &              3   s   :   (           8       b   2      K       A       S   X   1   \   n   5   D   t   H   k          $       N   J   ]             e   9      !   
                 G       ?   d       W   h       y          [                         7   p   |   }   #      M   i       +   	   c      w   o    / A Macintosh DMG containing the files. A directory containing the files. A directory containing the mac app. A list containing the file lists that will be contained within the package. A macintosh drive image containing a dmg. (Mac only.) A tar.bz2 file targeting Linux x86 and Linux x86_64. A tar.bz2 file. A zip file containing a Macintosh application targeting Macintosh OS X on Intel processors. Game data will be included inside the application, which appears to the user as a single file. A zip file containing a macintosh application. A zip file targeting Windows x86, Macintosh x86, Linux x86, and Linux x86_64. A zip file targeting Windows x86. A zip file. Adds a pattern marking files as executable on platforms that support it. (Linux and Macintosh) Advanced Configuration All Desktop Platforms Allows Ren'Py to run on the integrated GPU on platforms that have both integrated and discrete GPUs. Right now, this is only supported on Mac OS X. An optional description of the package to be built. Archives Basic Configuration Build Functions Building Distributions By calling build.archive, it's possible to declare a new archives and the file lists they will be included in. (It's rare to use anything but the all file list, however.) To use an archive, classify files into a list with its name. By default, all files classified into the "archive" file list will be placed in an archive.rpa archive, which is included in the all file list. Calling the build.documentation function with patterns marks files matching those patterns as documentation. Documentation files are included twice in a Macintosh application - both inside and outside of the application itself. Classifies files that match `pattern` into `file_list`. Classifying and Ignoring Files Clears the list of patterns used to classify files. Declares a package that can be built by the packaging tool. Declares a pattern that matches documentation. In a mac app build, files matching the documentation pattern are stored twice - once inside the app package, and again outside of it. Declares the existence of an archive. If one or more files are classified with `name`, `name`.rpa is build as an archive. The archive is included in the named file lists. Documentation Files that are not otherwise classified are placed in the "all" file list. For example, if this is set to "mygame", the user will be able to run mygame.exe on Windows, mygame.app on Macintosh, and mygame.sh on Linux. For example, the following will archive images in images.rpa, and game scripts into scripts.rpa:: For example, to mark all txt and html files in the base directory as documentation, call:: For example: For example:: Gives the path to the directory the archive files will be placed in. This may be an absolute or a relative path. A relative path is considered to be relative to the projects directory. If an archive file is empty, it will not be built. If true and updates are being built, an update will be built for this package. If true, any zip or tar.bz2 file will be built in standalone DLC mode, without an update directory. If true, empty directories (including directories left empty by file archiving) will be removed from generated packages. If false, empty directories will be included. If true, this will be hidden from the list of packages in the launcher. It's also possible to add new types of packages to the Ren'Py build process. This is done by calling the build.package function with a package name, type, and a string containing the file lists to include. Linux x86/x86_64 Macintosh x86 Matches all characters except for the directory separator. Matches all characters. Matches all txt files. Matches txt files in the game directory. Packages Please think twice about archiving your game. Keeping files open will help others run your game on future platforms - platforms that may not exist until after you're gone. Ren'Py includes support for building game distributions. Upon choosing "Build Distributions" in the launcher, Ren'Py will scan itself and the project to determine the files to include in the distribution, will create any archives that are necessary, and will build package and update files. Ren'Py supports combining files into a simple archive format. While not very secure, this protects files from casual copying. Say we wanted to build a normal version of our game, and one containing bonus material. We could classify the bonus files in to a "bonus" file list, and then declare an all-premium package with:: Special Files Supported package types are "zip" and "tar.bz2" to generate files in those formats, and "directory" to create a directory filled with files. The build process can be configured by setting variables and calling function that live in the build namespace. This must be done from inside an init python block. The build process works by first classifying files in the Ren'Py distribution and your game into file lists. These file lists are then added to package files. The classification is done by the build.classify function. It takes a patterns and a space-separated list of filenames. Patterns are matched from first to last, with the first match taking precedence (even if a more-specific pattern follows.) Patterns are matched with and without a leading /. Patterns may include the following special characters: The directory separator. The empty string will not build any package formats (this makes dlc possible). The following values are substituted in using python's str.format function. The following variables provide further control of the build process: The format of the package. A string containing a space separated list of: The icon that is used on Macintosh. The icon that is used on Windows. The name of the package. The value of build.directory_name. The value of build.executable_name. The value of build.version. The zip and tar.bz2 files that Ren'Py produces contain permissions information that must be present for Ren'Py to run on Linux and Macintosh. There are a few basic variables and functions that many games will use. There are seven file lists that files can be classified into by default. (Ren'Py places its own files into the first six of these.) There are two files that can be included in your game's base directory to customize the build. These files will be included in Android builds. These files will be included in all packages, and in Android builds. These files will be included in packages targeting Linux. These files will be included in packages targeting Macintosh. These files will be included in packages targeting Windows. These files will be included in packages that require the Ren'Py engine files. (Linux, Macintosh, and Windows.) These files will be included in the archive.rpa archive. These icon files much be in specific formats. You'll need to use a program or web service (such as http://iconverticons.com/ ) to convert them. This is also used to determine the name of the directory in which the package files are placed. For example, if you set build.directory_name to mygame-1.0, the archive files will be placed in mygame-1.0-dists in the directory above the base directory. This is set to False when :func:`gui.init` is called. This is used to automatically generate build.directory_name and build.executable_name, if neither is set. This should not contain spaces, colons, or semicolons. This is used to create the names of directories in the archive files. For example, if this is set to "mygame-1.0", the Linux version of the project will unpack to "mygame-1.0-linux". This variable controls the name of the executables that the user clicks on to start the game. This variable should not contain special characters like spaces, colons, and semicolons. If not set, it defaults to :var:`build.name` a dash, and :var:`config.version`. This variable should not contain special characters like spaces, colons, and semicolons. If not set, it defaults to :var:`build.name`. To exclude files from distribution, classify them as None or the empty string. Unpacking and re-packing a zip file on Windows and then running it on Linux or Macintosh is not supported. When true, files required to support themes that existed before Ren'Py 6.99.9 will be included in the build. When false, such files are excluded. Windows x86 With no configuration, Ren'Py will build the following four kinds of packages: \* \*\* \*\*.txt ``{directory_name}`` ``{executable_name}`` ``{version}`` `description` `dlc` `file_lists` `format` `hidden` `name` `update` all android app-directory app-dmg app-zip archive directory dmg game/\*.txt icon.icns icon.ico linux mac renpy tar.bz2 windows zip Project-Id-Version: renpy-doc
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-08-04 18:15+0900
PO-Revision-Date: 2017-08-04 20:17+0900
Last-Translator: 
Language-Team: Japanese <ja@li.org>
Language: ja
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2014-06-30 06:08+0000
X-Generator: Poedit 1.5.7
 / ãã¡ã¤ã«ãå«ã Macintosh DMG  ãã¡ã¤ã«ãå«ããã£ã¬ã¯ããªã¼ Macintosh ç¨ã®ã¢ããªã±ã¼ã·ã§ã³ãå«ããã£ã¬ã¯ããªã¼ ããã±ã¼ã¸ã«å«ã¾ãããã¡ã¤ã«ãªã¹ãã®ãªã¹ã dmg ãå«ã Machintosh ãã©ã¤ã Linux x86 ã¨ Linux x86_64. ãã¿ã¼ã²ããã¨ãã tar.bz2 ãã¡ã¤ã«ã§ãã tar.bz2 ãã¡ã¤ã« ã¤ã³ãã«ãã­ã»ããµä¸ã® Mac OS X ãã¿ã¼ã²ããã¨ãããããã¯ã¢ããªã±ã¼ã·ã§ã³ãå«ã zip ãã¡ã¤ã«ã§ããã²ã¼ã ãã¼ã¿ã¯ã¢ããªã±ã¼ã·ã§ã³ã«å«ã¾ããã¦ã¼ã¶ã¼ã«å¯¾ãã¦ã²ã¨ã¤ã®ãã¡ã¤ã«ã¨ãã¦æä¾ããã¾ãã Macintosh ç¨ã®ã¢ããªã±ã¼ã·ã§ã³ãå«ã zip ãã¡ã¤ã« Windows x86, Macintosh x86, Linux x86,  Linux x86_64 ãã¿ã¼ã²ã¼ãã¨ãã zip ãã¡ã¤ã«ã§ãã Windows x86 ãã¿ã¼ã²ããã¨ãã zip ãã¡ã¤ã«ã§ãã zip ãã¡ã¤ã« ãµãã¼ããããã©ãããã©ã¼ã  ( Linux ã Mac ) ã§å®è¡å¯è½ãã¡ã¤ã«ã¨ãã¦ãã¼ã¯ãããã¿ã¼ã³ãè¿½å ãã¾ãã é«åº¦ãªè¨­å® All Desktop Platforms çµã¿è¾¼ã¿ã¨å¤ä»ãã® GPU ãä¸¡æ¹ãããã©ãããã©ã¼ã ã§ã¯ãçµã¿è¾¼ã¿ã® GPU ã§èµ·åããããã«ãã¾ããç¾å¨ããã¯ Mac OS X ã§ã®ã¿ãµãã¼ãããã¾ãã ãã«ãããããã±ã¼ã¸ã«å¯¾ããä»»æã®èª¬ææã§ãã ã¢ã¼ã«ã¤ã åºæ¬è¨­å® ãã«ãé¢æ° éå¸ç©ã®ãã«ã build.archive ãå¼ã³åºããã¨ã§ãæ°ããã¢ã¼ã«ã¤ãã¨ãããããå«ã¾ãããã¡ã¤ã«ãªã¹ããå®£è¨ã§ãã¾ãã( all ãã¡ã¤ã«ãªã¹ãä»¥å¤ãä½¿ããã¨ã¯ãã£ãã«ããã¾ããã) ããã¢ã¼ã«ã¤ããä½¿ã£ã¦ããã¡ã¤ã«ããã®ååã®ãªã¹ãã«åé¡ãã¾ãã ããã©ã«ãã§ã¯ã archive ããã¡ã¤ã«ãªã¹ãã«åé¡ããããã¹ã¦ã®ãã¡ã¤ã«ã¯ã all ãã¡ã¤ã«ãªã¹ãã«å«ã¾ãã archive.rpa ã¢ã¼ã«ã¤ãã«ç½®ããã¾ãã ãã¿ã¼ã³ãå¼æ°ã« build.documentation é¢æãå¼ã³åºãã¨ãã­ã¥ã¡ã³ãã¨ãã¦ãããã®ãã¿ã¼ã³ã«ããããããã¡ã¤ã«ããã¼ã¯ãã¾ãã `pattern` ã«ããããããã¡ã¤ã«ã `file_list` ã«åé¡ããã ãã¡ã¤ã«ã®åé¡ã¨ç¡è¦ ãã¡ã¤ã«ãåé¡ããããã«ä½¿ç¨ãããã¿ã¼ã³ã®ãªã¹ããã¯ãªã¢ãã¾ãã ããã±ã¼ã¸ãã¼ã«ã«ãã«ããããããã±ã¼ã¸ãå®£è¨ãã¾ãã ãã­ã¥ã¡ã³ãã«ããããããã¿ã¼ã³ãå®£è¨ãã¾ãã mac ã¢ããªã®ãã«ãã§ã¯ãã®ãã¿ã¼ã³ã«ããããããã­ã¥ã¡ã³ãã¯äºåº¦ä¿å­ããã¾ãã - ä¸åº¦ç®ã¯ app ããã±ã¼ã¸åã«ãäºåº¦ç®ã¯ãã®å¤é¨ã§ãã ã¢ã¼ã«ã¤ãã®å­å¨ãå®£è¨ãã¾ããä¸ã¤ä»¥ä¸ã®ãã¡ã¤ã«ã `name` ã«åé¡ãããã¨ã `name`.rpa ãã¢ã¼ã«ã¤ãã¨ãã¦ãã«ãããã¾ããã¢ã¼ã«ã¤ãã¯ååããããã¡ã¤ã«ãªã¹ãã«å«ã¾ãã¾ãã ãã­ã¥ã¡ã³ã ä»ã«åé¡ããã¦ããªããã¡ã¤ã«ã¯ã all ããã¡ã¤ã«ãªã¹ãã«å¥ãããã¾ãã ä¾ãã°ãããã ã mygame ãã«è¨­å®ãããã¨ãã¦ã¼ã¶ã¼ã¯ Windows ã§ã¯ mygame.exe, Linux ã§ã¯ mygame.sh, Machintoshã§ã¯ mygame.app ãå®è¡ãããã¨ã«ãªãã¾ãã ä¾ãã°ãä»¥ä¸ã®ã³ã¼ãã¯ç»åã image.rpa ã«ãã¹ã¯ãªããã script.rpa ã«ä¿å­ãã¾ã :: ä¾ãã°ããã¼ã¹ãã£ã¬ã¯ããªã¼ã«ãããã¹ã¦ã®ãã­ã¹ãã¨ html ãã¡ã¤ã«ããã­ã¥ã¡ã³ãã¨ãã¦ãã¼ã¯ããæ¹æ³ã¯æ¬¡ã®éãã§ã :: ä¾: ä¾ :: ã¢ã¼ã«ã¤ããã¡ã¤ã«ãåºåããããã£ã¬ã¯ããªã¼ã¸ã®ãã¹ãä¸ãã¾ããããã¯çµ¶å¯¾ã¾ãã¯ç¸å¯¾ãã¹ã§ããç¸å¯¾ãã¹ã¯ãã­ã¸ã§ã¯ãã®ãã£ã¬ã¯ããªã¼ããå§ã¾ãã¾ãã ç©ºã®ã¢ã¼ã«ã¤ãã¯ãã«ãããã¾ããã True  ãªããã®ããã±ã¼ã¸åãã®ã¢ãããã¼ã¿ããã«ãããã¾ãã True ã®å ´åã update ãã£ã¬ã¯ããªã¼ã¯ç¡ãã¨ãªãã zip ã tar.bz2 ãã¡ã¤ã«ãåç¬ã® DLC ã¢ã¼ãã§ãã«ãããã¾ãã True ã®å ´åã¯ç©ºã®ãã£ã¬ã¯ããªã¼ (ã¢ã¼ã«ã¤ãã³ã°ã®æç¹ã§ç©ºã«ãªããã£ã¬ã¯ããªã¼ãå«ã) ãçæãããããã±ã¼ã¸ããé¤å¤ããã False ã®å ´åã¯ç©ºã®ãã£ã¬ã¯ããªã¼ãå«ã¾ãã¾ãã True ãªãããã¯ã©ã³ãã£ã¼ã®ããã±ã¼ã¸ãªã¹ãã§ã¯éè¡¨ç¤ºã«ãªãã¾ãã Ren'Py ã®ãã«ãå¦çã«æ°ããã¿ã¤ãã®ããã±ã¼ã¸ãè¿½å ãããã¨ãå¯è½ã§ããããã¯ããã±ã¼ã¸ã®ååã¨å«ããã¹ããã¡ã¤ã«ãªã¹ãã®æå­åãå¼æ°ã« build. package é¢æ°ãå¼ã³åºãã¦è¡ãã¾ãã Linux x86/x86_64 Macintosh x86 ãã£ã¬ã¯ããªã¼ã®åºåãä»¥å¤ã®ãã¹ã¦ã®æå­ã«ããããã¾ãã ãã¹ã¦ã®æå­ã«ããããã¾ãã ãã¹ã¦ã®ãã­ã¹ããã¡ã¤ã«ã«ããããã¾ãã ã²ã¼ã ãã£ã¬ã¯ããªã¼ã®ãã­ã¹ããã¡ã¤ã«ã«ããããã¾ãã ããã±ã¼ã¸ ãã ããªãã®ã²ã¼ã ãã¢ã¼ã«ã¤ããããã¨ã«ã¤ãã¦ã¡ãã£ã¨èãã¦ã¿ã¦ãã ããããã¡ã¤ã«ããªã¼ãã³ãªã¾ã¾ã«ãã¦ããã°ããªãã®é ã«ã¯ãªãã£ãå°æ¥ã®ãã©ãããã©ã¼ã ã§ãèª°ããã²ã¼ã ãå®è¡ããå©ãã«ãªãã§ãããã Ren'Py ã¯ éå¸ç©ã®ãã«ãããµãã¼ããã¦ãã¾ããã©ã³ãã£ã¼ã®ã Build Distributions ããé¸æãããã¨ã§ã Ren'Py ã¯èªåèªèº«ã¨ãã®ãã­ã¸ã§ã¯ããã¹ã­ã£ã³ããéå¸ç©ã«å«ã¾ãããã¡ã¤ã«ãæ±ºå®ããå¿è¦ãªã¢ã¼ã«ã¤ããçæãã¦ããã±ã¼ã¸ã¨ã¢ãããã¼ããã¡ã¤ã«ã®ãã«ãããã¾ãã Ren'Py ã¯ãã¡ã¤ã«ã®ã²ã¨ã¤ã®ã¢ã¼ã«ã¤ãã¸ã®çµ±åããµãã¼ããã¦ãã¾ããããã»ã©å®å¨ã§ã¯ããã¾ããããããã¯åç´ãªã³ãã¼ãããã¡ã¤ã«ãå®ãã¾ãã éå¸¸çã®ã²ã¼ã ã¨ãã¼ãã¹è¦ç´ ãè¿½å ãããã®ããã«ããããã¨ããã¨ããã¼ãã¹ãã¡ã¤ã«ãã bonus ããã¡ã¤ã«ãªã¹ãã«åé¡ãã¦ãæ¬¡ã®ããã« all-premium ããã±ã¼ã¸ãå®£è¨ãã¾ãã :: ç¹å¥ãªãã¡ã¤ã« ãµãã¼ããããã¿ã¤ãã¯å¯¾å¿ãããã©ã¼ãããã§çæããã "zip" ã¨ "tar.bz2" ããã¡ã¤ã«ãå«ããã£ã¬ã¯ããªã¼ãä½æãã "directory" ã§ãã ãã«ãå¦çã¯ build ååç©ºéã«ããå¤æ°ã®è¨­å®ã¨é¢æ°ã®å¼ã³åºãã«ãã£ã¦è¨­å®åºæ¥ã¾ããããã¯ init python ãã­ãã¯åããå®è¡ãããªããã°ãªãã¾ããã ãã«ãå¦çã¯æåã« Ren'Py èªèº«ã¨ã²ã¼ã ã®ãã¡ã¤ã«ããã¡ã¤ã«ãªã¹ãã«åé¡ãããã¨ããå§ã¾ãã¾ãããããã®ãã¡ã¤ã«ãªã¹ãã¯ããã±ã¼ã¸ãã¡ã¤ã«ã«å«ã¾ãã¾ãã åé¡ã¯ buildclassify é¢æ°ã§å®è¡ããã¾ããããã¯ãã¡ã¤ã«åã®ãã¿ã¼ã³ã¨ãã¹ãã¼ã¹ã§åºåããããã¡ã¤ã«ãªã¹ããåãã¾ãããã¿ã¼ã³ã¯æåããæå¾ã¾ã§ãããããã¾ãããæåã®ããããåªåããã¾ãã ( ããéå®çãªãã¿ã¼ã³ãæ¬¡ã«ç¶ãã¦ããå ´åãã§ãã ) ãã¿ã¼ã³ã«ã¯ä»¥ä¸ã®ç¹å¥ãªæå­ãå«ã¾ããã§ãããã ãã£ã¬ã¯ããªã¼ã®åºåãã æå­åãç©ºã ã¨ä½ããã«ãããã¾ããã ä»¥ä¸ã®å¤ã¯ python ã®ãã©ã¼ãããæ§æãä½¿ç¨ãã¦ä»£å¥ããã¾ãã ä»¥ä¸ã®å¤æ°ã¯ãã«ããã­ã»ã¹ã®ãããªãæ©è½ãæä¾ãã¾ãã ããã±ã¼ã¸ã®ãã©ã¼ãããã§ãã¹ãã¼ã¹ã§åºåãããä»¥ä¸ã®ãªã¹ãã®æå­åã§ãã : Macintosh ä¸ã§ä½¿ç¨ãããã¢ã¤ã³ã³ã§ãã Windows ä¸ã§ä½¿ç¨ãããã¢ã¤ã³ã³ã§ãã ããã±ã¼ã¸å build.directory_name ã®å¤ã§ãã build.executable_name ã®å¤ã§ãã build.version ã®å¤ã§ãã Ren'Py ãçæãã zip ã¨ tar.bz2 ãã¡ã¤ã«ã¯ Ren'Py ãLinux ã Macintosh ã§èµ·åããããã«å¿è¦ãªãã¼ããã·ã§ã³æå ±ãå«ãã§ãã¾ãã å¤ãã®ã²ã¼ã ãä½¿ç¨ããããã¤ãã®åºæ¬çãªå¤æ°ã¨é¢æ°ãããã¾ãã ããã©ã«ãã§ã¯ãã¡ã¤ã«ãåé¡ããããã¡ã¤ã«ãªã¹ãã 7 ã¤ããã¾ãã ( Ren'Py ã¯æ¬ä½ã®ãã¡ã¤ã«ããããã®ãã¡æåã® 6 ã¤ã«éç½®ãã¾ãã ) ãã«ããã«ã¹ã¿ãã¤ãºããããã«ãã²ã¼ã ã®ãã¼ã¹ãã£ã¬ã¯ããªã¼ã«å«ãããã2ã¤ã®ãã¡ã¤ã«ãããã¾ãã ãããã®ãã¡ã¤ã«ã¯ Android ãã«ãã«å«ã¾ãã¾ãã ãããã®ãã¡ã¤ã«ã¯ãã¹ã¦ã®ããã±ã¼ã¸ã¨ Android ãã«ãã«å«ã¾ãã¾ãã ãããã®ãã¡ã¤ã«ã¯ Linux ãã¿ã¼ã²ããã¨ããããã±ã¼ã¸ã«å«ã¾ãã¾ãã ãããã®ãã¡ã¤ã«ã¯ Macintosh ãã¿ã¼ã²ããã¨ããããã±ã¼ã¸ã«å«ã¾ãã¾ãã ãããã®ãã¡ã¤ã«ã¯ Winddows ãã¿ã¼ã²ããã¨ããããã±ã¼ã¸ã«å«ã¾ãã¾ãã ãããã®ãã¡ã¤ã«ã¯ Ren'Py ã¨ã³ã¸ã³ãã¡ã¤ã«ãå¿è¦ã¨ããããã±ã¼ã¸ã«å«ã¾ãã¾ããã(Linux, Macintosh, Windows) ãããã®ãã¡ã¤ã«ã¯ archive.rpa ã¢ã¼ã«ã¤ãã«å«ã¾ãã¾ãã ãããã®ã¢ã¤ã³ã³ãã¡ã¤ã«ã¯ç¹å¥ãªãã©ã¼ãããã§ããããããå¤æããããã«ãã­ã°ã©ã ãã¦ã§ããµã¼ãã¹ ( http://iconverticons.com/ ã®ãããª ) ãä½¿ç¨ããå¿è¦ãããã§ãããã ããã±ã¼ã¸ãã¡ã¤ã«ãåºåããããã£ã¬ã¯ããªã¼åãæ±ºå®ããããã«ãããã¯ä½¿ããã¾ããä¾ãã°ã build.directory_name ã mygame-1.0 ã«è¨­å®ããã¨ããã¼ã¹ãã£ã¬ã¯ããªã¼ã®è¦ªãã©ã«ãã¼ã«å­å¨ãã mygame-1.0-dists ã«ã¢ã¼ã«ã¤ããã¡ã¤ã«ãåºåããã¾ãã :func:`gui.init` ãå¼ã³åºãããã¨ããã¯ False ã«è¨­å®ããã¾ãã ããã«ãä½¿ç¨ãã¦è¨­å®ããã¦ããªããã°èªåçã« build.directory_name ã¨ build.executable_name ãçæãã¾ããããã«ã¯ã¹ãã¼ã¹ãã³ã­ã³ãã»ãã³ã­ã³ãå«ããã¦ã¯ããã¾ããã ã¢ã¼ã«ã¤ããã¡ã¤ã«åã®ãã£ã¬ã¯ããªã¼åãæ±ºå®ããããã«ããã¯ä½¿ããã¾ããä¾ãã°ããã ã mygame-1.0 ãã«è¨­å®ãããã¨ããã­ã¸ã§ã¯ãã® Linux ãã¼ã¸ã§ã³ã¯ã mygame-1.0-linux ãã«è§£åããã¾ãã ãã®å¤æ°ã¯ã¦ã¼ã¶ã¼ãã²ã¼ã ãéå§ããããã«ã¯ãªãã¯ããå®è¡ãã¡ã¤ã«ã®ååãå¶å¾¡ãã¾ãã ãã®å¤æ°ã«ã¯ã¹ãã¼ã¹ãã³ã­ã³ãã»ãã³ã­ã³ãªã©ç¹æ®ãªæå­ã¯å«ãã¦ã¯ããã¾ãããè¨­å®ããã¦ããªããã°ããã©ã«ãã§ :var:`build.name` ? :var:`config.version` ã«ãªãã¾ãã ãã®å¤æ°ã«ã¯ã¹ãã¼ã¹ãã³ã­ã³ãã»ãã³ã­ã³ãªã©ç¹æ®ãªæå­ãå«ãã¦ã¯ããã¾ãããè¨­å®ãããªãã¨ããã©ã«ãã§ :var:`build.name` ã§ãã éå¸ç©ãããã¡ã¤ã«ãé¤å¤ããããã«ã¯ãããããNoneã¾ãã¯ç©ºã®æå­åã«åé¡ãã¾ãã Windows ä¸ã§ zip ãã¡ã¤ã«ãè§£åãã¦åå§ç¸®ããã¨ã Linux ã Macintosh ä¸ã§ã®ãã®ãã¡ã¤ã«ã®å®è¡ã¯æªãµãã¼ãã«ãªãã¾ãã True ãªããRen'Py 6.99.9ä»¥åã«å­å¨ãã¦ãããã¼ãã®ãµãã¼ãã«å¿è¦ãªãã¡ã¤ã«ããã«ãã«å«ã¾ãã¾ããFalse ãªããã®ãããªãã¡ã¤ã«ã¯é¤å¤ããã¾ãã Windows x86 ãªã«ãè¨­å®ããªãã¨ã Ren'Py ã¯ä»¥ä¸ã®åç¨®é¡ã®ããã±ã¼ã¸ããã«ããã¾ãã \* \*\* \*\*.txt ``{directory_name}`` ``{executable_name}`` ``{version}`` `description` `dlc` `file_lists` `format` `hidden` `name` `update` all android app-directory app-dmg app-zip archive directory dmg game/\*.txt icon.icns icon.ico linux mac renpy tar.bz2 windows zip 