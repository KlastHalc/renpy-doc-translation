Þ    f      L     |           ¡  Ñ   °	  e   
     è
  %     ª   ©  ©   T  Å   þ  ú   Ä  f   ¿  /   &     V     g  G   p  a   ¸  *        E  8   b  ¤     I   @  J     ~   Õ     T     p  Ö     N   X  v   §  ú     r     ^        ë  b        é          "  H   <  %     -   «     Ù     ù  ð     î   v  i  e     Ï  ü   æ     ã  W     U   Y     ¯     Á  >   a  U      G   ö  ¯   >  ]   î  m   L      º   1   Í      ÿ   X   !  :   _!  æ   !     "  =   #  ¼   B#  F   ÿ#  @   F$  Ã   $  ò   K%  3   >&     r&  ,   õ&  ¼   "'  O   ß'  _   /(  O  (  |   ß)     \*  A   a*     £*     ·*     ;+     P+     j+  -   v+     ¤+     ¶+  ï   Ð+    À,  Ù   [.  ì   5/  [   "0  '  ~0  Þ   ¦1  å   2  »   k3     '4  ë   F4  
   25     =5     D5  l  V5  b  Ã6    &8  x   +9  Â   ¤9  K   g:  ½   ³:  Ò   q;    D<  (  [=     >  6   ?     C?     S?  Y   Z?  S   ´?     @     '@  Y   C@  º   @  ]   XA  c   ¶A     B     µB     ÔB    êB  L   öC  ²   CD    öD     ~F  {   G  É   G     WH  !   ÜH  3   þH     2I  U   HI  A   I  N   àI     /J  ±   EJ  S  ÷J    KL    iM  .   ëN  i  O  !   P  s   ¦P  f   Q     Q     Q  R   +R  N   ~R  H   ÍR  Ã   S  x   ÚS  z   ST     ÎT  T   äT     9U     FU  =   ÈU  W  V  x   ^W  Z   ×W  ÿ   2X  d   2Y  c   Y  þ   ûY  -  úZ  ?   (\  ¡   h\  )   
]  â   4]  j   ^  {   ^  ¡  þ^      `  	   6a  I   @a     a  §   ªa     Rb     bb     ~b  6   b     ¼b  3   Ïb  X  c  Ä   \d  ½   !e  1  ße  i   g  N  {g  >  Êh     	j  ô   *k  /   l  =  Ol  
   m  ,   m     Åm     	   ?          E   e   8      *         !         `       U       2       Z   ]           G       =       N   9   B          %                  0       &   4       R   T   f       [      c   5   I   /   O   <   .   $       D   P              F       K                     \   _   6   b   X   
      #      >      Y           Q   A   3   ;   S      H           W   V       (       @         L   "   d      7       ,      J       ^      M         '   :   1          C          )       a                 +       -       (Double underscore) Returns `s` immediately translated into the current language. Strings enclosed in this function will be added to the list of translatable strings. Note that the string may be double-translated, if it matches a string translation when it is displayed. (Single underscore) Returns `s` unchanged. Ren'Py will scan for strings enclosed in this function, and add them to the list of translatable strings. The strings will not be translated until they are displayed. A string giving the language to translate to, or None to use the default language of the game script. Adding labels can also confuse the translation process. To prevent this, labels that are given the hide clause are ignored when generating translations.:: All interface text can be translated. Along with the use of string translations for dialogue, unsanctioned translators may be interested in using the techniques described above to translate images and styles. Alternate languages are referred to by names which can double as python identifiers. (Starts with a letter or underscore, followed by letters, numbers, and underscores.) As Ren'Py is a visual novel engine, we expect most translation to involve dialogue. Ren'Py includes a flexible framework that allows dialogue to be split, combined, reordered, and omitted entirely. Be very careful when changing dialogue that has been translated, especially when that dialogue is repeated in more than one place inside a label. In some cases, it may be necessary to assign a translation identifier directly, using a statement like:: Changes the current language to `language`, which can be a string or None to use the default language. Changes the language of the game to `language`. Default Language Dialogue Enter the language to extract, and click "Extract String Translations". Enter the language to merge to (often the same language), and choose "Merge String Translations". Extracting and merging string translations Generating Translation Files If :var:`config.language` is set, that language is used. If a game doesn't include support for changing the language, it may be appropriate to use an init python block to set :var:`config.language` to the target language. If the RENPY_LANGUAGE environment variable is set, that language is used. If the game has ever chosen a language in the past, that language is used. If this is the first time the game has been run, :var:`config.default_language` is used. (This defaults to the None language.) Image and File Translations Images and Files In addition to dialogue, Ren'Py is able to translate text found in menus and other strings. Interface translations are a 1-to-1 substitution. Wherever a string is found, it will be replaced by a single replacement. In addition, there are three functions that are related to string translation: In the example above, the first unit generated is assigned the identifier start_636ae3f5, and contains the statement:: It may be necessary to change styles - especially font-related styles - when translating a game. Ren'Py handles this with translate style blocks and translate python blocks. These blocks can change language-related variables and styles. For example:: It's also possible to run non-dialogue statements, such as conditionals or Python. For example, we can translate:: It's best to ask a game's creators for permission before creating an unsanctioned translation. It's possible to customize styles based on the language, so that the game can automatically switch to a font appropriate for the language that was chosen. It's possible to include variant images and other files that are used when a language is selected. Menu and String Translations Menus and Interface Strings More Complex Translations Or a statement can be removed, by replacing it with the pass statement:: Otherwise, the None language is used. Play through the game until all text is seen. Primary and Alternate Languages Ren'Py contains a comprehensive framework for the translation of visual novels. There are four main types of things that can be translated: Ren'Py expects each game to be written in a single primary language. This is called the ``None`` language, regardless of what language it actually is. (For example, if the game was written in English, English will be the ``None`` language.) Ren'Py handles this by looking in the translation directory for the image. For example, if the "piglatin" language is in use, and "library.png" is loaded, Ren'Py will use "game/tl/piglatin/library.png" in preference to "game/library.png". Ren'Py includes a small amount of support for creating translations without the active assistance of the game's creators. This support consists of the ability to automatically create a string translation file from all of the strings in the game. Since string translations are used for untranslated dialogue, this technique makes it possible to translate a game. Ren'Py will generate:: Ren'Py's translation support is currently focused on sanctioned translations, where the game's creators either release the game scripts to the translator or create translation templates themselves. Support for unsanctioned translations is more limited. Replace existing translations Return to the main menu, select the target project, and choose "Generate Translations". Returns the set of known languages. This does not include the default language, None. Reverse languages Reverses the strings before merging. This can be used, for example, to use a set of english -> russian translations to create a russian -> english translation. Select the source project, and choose "Generate Translations". Set the RENPY_LANGUAGE environment variable to the language you want to translate to. Set the RENPY_UPDATE_STRINGS environment variable to a non-empty value. String substitutions can be translated using the !t conversion flag. So the following will be translatable using a combination of the dialogue and string translation systems:: String translations are also applied to dialogue strings that are not translated as dialogue. String translations can be extracted from one project, and moved to another. This is a multiple-step process: Style Translations Style translations may be added to any .rpy file. Styles The Language action can be used to add a language preference to the preferences screen:: The default language is chosen using the following method: The fundamental unit of translation is a block of zero or more translatable statements, optionally followed by a single say statement. Translatable statements are the voice and nvl statements. For example take the following game:: The main dialogue of the script can be translated, including a provision for splitting, combining, omitting, and reordering lines. The main way to switch languages is with the Language action. The name of the current language, or None if the default language is being used. This should be treated as a read-only variable. To change the language, call :func:`renpy.change_language`. The second unit is given the identifier start_bd1ad9e1m and contains:: The third unit has the identifier start_9e949aac, and contains:: The translate strings statement can also be used to translate the None language. This can be used to when the game is written in a non-English language, to translate the Ren'Py user interface. :: The translation files live in directories underneath the "tl" subdirectory of the game directory. For example, if you create a piglatin translation of the tutorial project, translation files will be placed under ``tutorial/game/tl/piglatin``. There are a couple of options that control merging: There are two language-related variables. One is :var:`config.language`, which is used to change the default language of the game. There are two translation-related functions: There will be one translation file created per game script file. The common.rpy file will also be created to contain translations of strings that are common to all games made using Ren'Py. These units are created automatically by Ren'Py when the game script is loaded. This can be translated by editing the generated files. A finished translation might look like:: This is broken up into multiple translation units. Each unit has an identifier assigned to it, with the identifier being generated from the label preceding the unit, and the statements inside the unit. (If multiple units would be assigned the same translation number, a serial number to the second and later units to distinguish them.) This will update the "game/tl/language/strings.rpy" file with a translation template that contains all of the strings in it. Tips To create a string translation file, perform the following steps: Translate Statement Translate statements do not need to contain 1-to-1 translations of the original language. For example, a long line could be split:: Translating Dialogue Translating substitutions Translation Translation Actions, Functions, and Variables Translation Units Unsanctioned Translations When a block in the main script is encountered, Ren'Py checks to see if a translate statement corresponding to that block exists. If so, it executes the translate statement instead of the translated block, showing the user the translation. When a language is activated - either at the start of the game, or after a language change - Ren'Py resets the styles to their contents at the end of the init phase. It then runs all translate python blocks and translate style blocks associated with the current language, guaranteeing that blocks appearing earlier in a file are executed first. Finally, it rebuilds styles, allowing the changes to take effect. When checked, this will cause non-trivial existing translations (those that are not empty or the source string) to be replaced. By default, merging will refuse to overwrite non-trivial translations that already exist. When generating translations, Ren'Py will scan the script files for menus, and for strings enclosed inside the _() function. It will then place the strings inside a translate strings block. For example, if we have the following script:: When the None language is selected, most of Ren'Py's translation functionality is disabled. When the project scripts are available, translation files can be generated by opening the project in the Ren'Py Launcher, and choosing "Generate Translations". The launcher will prompt you for the name of the language to generate, and will then proceed to create or update the translation files. When the same string is used in multiple places, the string can be distinguished using the {#...} text tag. Even though they display the same, Ren'Py considers all of these distinct strings for the purpose of translation:: When translating a game, it may be necessary to replace a file with a translate version. For example, if an image contains text, it might make sense to replace it with a version of the image where the text is in another language. When you generate translations for a language, Ren'Py will generate a translate statement corresponding to each translation unit. When translating the script above, Ren'Py will generate:: Which can then be translated:: While translation blocks may include Python, this Python should not have side effects visible outside of the block. That's because changing languages will restart the translation block, causing the side effects to occur multiple times. `language` into:: or equivalently:: Project-Id-Version: renpy-doc
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-09-25 21:42+0900
PO-Revision-Date: 2017-11-19 17:46+0900
Last-Translator: 
Language-Team: Japanese <ja@li.org>
Language: ja
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2015-03-29 05:43+0000
X-Generator: Poedit 1.5.7
 (2éã¢ã³ãã¼ã¹ã³ã¢) `s` ãç¾å¨ã®è¨èªã«ç´ã¡ã«ç¿»è¨³ãã¦è¿ãã¾ãããã®é¢æ°ã§å²ã¾ããæå­åã¯ãç¿»è¨³å¯è½ãªæå­åã®ãªã¹ãã«è¿½å ããã¾ããç¿»è¨³å¾ã®æå­åãè¡¨ç¤ºãããæã«ãæå­åç¿»è¨³ã«ãããããã¨æå­åã2éã«ç¿»è¨³ããã¦ãã¾ããã¨ã«æ³¨æãã¦ãã ããã (åä¸ã®ã¢ã³ãã¼ã¹ã³ã¢) `s` ãå¤æ´ããã«è¿ãã¾ããRen'Py ã¯ãã®é¢æ°ã§å²ã¾ããæå­åãã¹ã­ã£ã³ããç¿»è¨³å¯è½ãªæå­åã®ãªã¹ãã«ãããè¿½å ãã¾ããæå­åã¯è¡¨ç¤ºãããã¾ã§ç¿»è¨³ããã¾ããã ç¿»è¨³åã®è¨èªã®æå­åãã¾ãã¯ None ã®ã¨ãã¯ã²ã¼ã ã¹ã¯ãªããã®æ¢å®ã®è¨èªãä½¿ãã¾ãã ã©ãã«ã®è¿½å ã«ãã£ã¦ãç¿»è¨³ã®éç¨ã§æ··ä¹±ãçºçãã¾ãããããé²ãã«ã¯ãã©ãã«ã« hide ç¯ãä¸ãã¦ç¿»è¨³ã³ã¼ãããç¡è¦ãããããã«ãã¾ãã:: ãã¹ã¦ã®ã¤ã³ã¿ã¼ãã§ã¤ã¹ã®ãã­ã¹ããç¿»è¨³ã§ãã¾ãã å°è©ã®æå­åç¿»è¨³ãä½¿ã£ãå ´åãèªå¯ãåãã¦ããªãç¿»è¨³èã¯ç»åãã¹ã¿ã¤ã«ã®ç¿»è¨³ã«å¯¾ãã¦ä¸è¨ã§èª¬æããæ¹æ³ãä½¿ããã¨ãã§ãã¾ããã å¯è¨èªã¯ãPython ã®è­å¥å­ã¨ãã¦ãæ¯ãèããååã«ãã£ã¦é¢é£ä»ãããã¾ãã(è±å­ã¾ãã¯ã¢ã³ãã¼ã¹ã³ã¢ã§å§ã¾ããè±æ°å­ã¨ã¢ã³ãã¼ã¹ã³ã¢ãç¶ãã¾ãã) Ren'Py ãã¸ã¥ã¢ã«ããã«ã¨ã³ã¸ã³ã®éçºèã¨ãã¦ã¯ãã»ã¨ãã©ã®ç¿»è¨³ãå°è©ã¨å¯¾å¿ãããã¨ãæå¾ãã¦ãã¾ããRen'Py ã«ã¯æè»ãªãã¬ã¼ã ã¯ã¼ã¯ããããå°è©ã®åå²ãçµåãä¸¦ã¹æ¿ããå®å¨ãªçç¥ãè¡ãã¾ãã ã©ãã«ã®ä¸­ã®è¤æ°ã®å ´æã§åãå°è©ãç¹°ãè¿ãããå ´åã¯ãç¿»è¨³ãããå°è©ã®å¤æ´ã«ã¯ç¹ã«æ³¨æãã¦ä¸ãããããã¤ãã®ä¾ã§ã¯ãæ¬¡ã®ããã«ç¿»è¨³ç¨ã®è­å¥å­ãã¹ãã¼ãã¡ã³ããä½¿ã£ã¦ç´æ¥å²ãå½ã¦ãå¿è¦ãããã§ããã:: ç¾å¨ã®è¨èªã `language` ã«å¤æ´ãã¾ãããã®å¤ã¯æå­åãã¾ãã¯æ¢å®ã®è¨èªã®å ´åã¯ None ã«ã§ãã¾ãã ã²ã¼ã ã®è¨èªã `language` ã«å¤æ´ãã¾ãã æ¢å®ã®è¨èª å°è© æ½åºããè¨èªãé¸ã³ã  "Extract String Translations" ãã¯ãªãã¯ãã¾ãã çµ±åããè¨èªãå¥åãã "Merge String Translations" ãé¸æãã¾ãã ç¿»è¨³æå­åã®æ½åºçµ±å ç¿»è¨³ãã¡ã¤ã«ã®çæ :var:`config.language` ãè¨­å®ããã¦ããã°ããã®è¨èªãä½¿ç¨ããã¾ãã ã²ã¼ã ã«è¨èªåãæ¿ãæ©è½ãå«ã¾ãã¦ããªãå ´åã¯ãinit python ãã­ãã¯ã§ :var:`config.language` ã«ç¿»è¨³åã®è¨èªãè¨­å®ããã®ãé©åã§ãããã RENPY_LANGUAGE ç°å¢å¤æ°ãè¨­å®ããã¦ããã°ããã®è¨èªãä½¿ç¨ããã¾ãã éå»ã«ã²ã¼ã ã§è¨èªãé¸æãããã¨ãããã°ããã®è¨èªãä½¿ç¨ããã¾ãã ã²ã¼ã ãæåã«éå§ãããæã¯ã :var:`config.default_language` ãä½¿ç¨ããã¾ãã ( ãã®ããã©ã«ãå¤ã¯ None è¨èªã§ãã ) ç»åã¨ãã¡ã¤ã«ã®ç¿»è¨³ ç»åã¨ãã¡ã¤ã« å°è©ã«ã¤ãã¦ããã«ãRen'Py ã§ã¯ã¡ãã¥ã¼ã®ãã­ã¹ãããã®ä»ã®æå­åãç¿»è¨³ã§ãã¾ããã¤ã³ã¿ã¼ãã§ã¤ã¹ã®ç¿»è¨³ã¯1å¯¾1ã§å¯¾å¿ãã¦ãã¾ããæå­åãè¦ã¤ããã¨ãããã¯åä¸ã®æå­åã§ç½®æããã¾ãã ããã«ãæå­åã®ç¿»è¨³ã«é¢é£ãã 3 ã¤ã®é¢æ°ãããã¾ã: ä¸è¨ã®ä¾ã«ããã¦ãçæããã1ã¤ç®ã®ã¦ãããã«ã¯ start_636ae3f5 ã¨ããè­å¥å­ãå²ãå½ã¦ãããæ¬¡ã®ã¹ãã¼ãã¡ã³ããå«ãã§ãã¾ã:: ã²ã¼ã ã®ç¿»è¨³æã«ãã¹ã¿ã¤ã«ã®å¤æ´ (ç¹ã«ãã©ã³ãé¢ä¿ã®ã¹ã¿ã¤ã«) ãå¿è¦ã«ãªãã§ããããRen'Py ã§ã¯ããã«å¯¾ã translate style ãã­ãã¯ã¨ translate python ãã­ãã¯ã§å¯¾å¿ãã¦ãã¾ãããããã®ãã­ãã¯ã«ã¯ãè¨èªé¢ä¿ã®å¤æ°ãã¹ã¿ã¤ã«ãå¤æ´ããããã®ã³ã¼ããå«ãããã¨ãã§ãã¾ããä¾ãã° :: æ¡ä»¶æã Python ã®ã³ã¼ããªã©ã®ãå°è©ä»¥å¤ã®ã¹ãã¼ãã¡ã³ããå®è¡ãããã¨ãã§ãã¾ããä¾ãã°æ¬¡ã®ã³ã¼ã :: æ­£å¼ã«èªå¯ããã¦ããªãç¿»è¨³ãä½æããåã«ãã²ã¼ã å¶ä½èã®è¨±è«¾ãå¾ããã¨ãæåã§ãã è¨èªã«åããã¦ã¹ã¿ã¤ã«ãã«ã¹ã¿ãã¤ãºã§ãããããããè¨èªãé¸æãããæã«ã²ã¼ã ã§ä½¿ç¨ããããã©ã³ããèªåçã«åãæ¿ãããã¨ãã§ãã¾ãã ããè¨èªãé¸æãããã¨ãã«ãéå¸¸ã¨ã¯ç°ãªãç»åããã®ä»ã®ãã¡ã¤ã«ãå«ãããã¨ãã§ãã¾ãã ã¡ãã¥ã¼ã¨æå­åã®ç¿»è¨³ ã¡ãã¥ã¼ã¨ã¤ã³ã¿ã¼ãã§ã¤ã¹ã®æå­å ããè¤éãªç¿»è¨³ ã¾ãã¯ãpass ã¹ãã¼ãã¡ã³ãã«ç½®ãæãããã¨ã§åé¤ã§ãã¾ã:: ãããä»¥å¤ã®å ´åã¯ãNone è¨èªãä½¿ç¨ããã¾ãã ãã¹ã¦ã®ãã­ã¹ããè¡¨ç¤ºãããã¾ã§ã²ã¼ã ãåããã¾ãã ä¸»è¨èªã¨å¯è¨èª Ren'Py ã«ã¯ããã¸ã¥ã¢ã«ããã«ãç¿»è¨³ããããã®åæ¬çãªãã¬ã¼ã ã¯ã¼ã¯ãããã¾ããããã«ãã£ã¦ä¸»ã«4ç¨®é¡ã®ãã®ãç¿»è¨³ã§ãã¾ã: Ren'Py ã¯ãããããã®ã²ã¼ã ã1ã¤ã®ä¸»è¨èªã«ãã£ã¦æ¸ããã¦ããã¨æ³å®ãã¾ãããã®ã¨ãã®è¨èªã¯ ``None`` è¨èªã¨å¼ã°ãã¾ããããã®è¨èªãå®éã«ä½ã§ãã£ã¦ãæ§ãã¾ããã(ä¾ãã°ãã²ã¼ã ãè±èªã§æ¸ããã¦ããå ´åã¯ãè±èªã ``None`` è¨èªã¨ãªãã¾ãã) ãã®ãããªå ´åã« Ren'Py ã¯ç»åãç¿»è¨³ãã£ã¬ã¯ããªã¼ã®ä¸­ããæ¢ãã¾ããä¾ãã°ãpiglatinãè¨èªã«ããã¦ãlibrary.pngããèª­ã¿è¾¼ãã¨ããRen'Py ã¯ãgame/tl/piglatin/library.pngãããgame/library.pngããããåªåãã¦ä½¿ãã¾ãã Ren'Py ã«ã¯ãã²ã¼ã å¶ä½èããã®ååãªæ¯æ´ãç¡ãå ´åã®ç¿»è¨³ã®ä½æã«ãå°ãã ãå¯¾å¿ãã¦ãã¾ããããã¯ãã²ã¼ã ã®ãã¹ã¦ã®æå­åããèªåçã«æå­åç¿»è¨³ãã¡ã¤ã«ãä½æããæ©è½ã§ããæªç¿»è¨³ã®å°è©ã«å¯¾ãã¦æå­åç¿»è¨³ãè¡ããã¨ã§ããã®æ¹æ³ã«ããã²ã¼ã ã®ç¿»è¨³ãå¯è½ã¨ãªãã¾ãã Ren'Py ã¯æ¬¡ã®ã³ã¼ããçæãã¾ã :: Ren'Py ã®ç¿»è¨³ãµãã¼ãã¯ç¾å¨ãæ­£å¼ã«èªå¯ããã¦ããç¿»è¨³ãã¤ã¾ãã²ã¼ã ã®å¶ä½èãç¿»è¨³èã«åãã¦ãªãªã¼ã¹ãã¦ããå ´åããå¶ä½èèªèº«ãç¿»è¨³ç¨ã®éå½¢ãä½æãã¦ããå ´åã«ç¦ç¹ãå½ã¦ã¦ãã¾ããæ­£å¼ãªèªå¯ãå¾ã¦ããªãå ´åã®ç¿»è¨³ã§ã¯ããããããå¶éãããã¾ãã æ¢å­ã®ç¿»è¨³ãç½®ãæãã ã¡ã¤ã³ã¡ãã¥ã¼ã«æ»ããå¯¾è±¡ã®ãã­ã¸ã§ã¯ããé¸æ "Generate Translations" ãé¸æãã¾ãã æ¢ç¥ã®è¨èªã®ã»ãããè¿ãã¾ããããã«ã¯æ¢å®ã®è¨èª None ã¯å«ã¾ãã¾ããã è¨èªã®éè¡ çµ±ååã®æå­åã«æ»ãã¾ããä¾ãã°ãè±èªããã­ã·ã¢èªã®ã»ãããä½¿ã£ã¦ãã­ã·ã¢èªããè±èªã®ç¿»è¨³ãåºæ¥ã¾ãã åã®ãã­ã¸ã§ã¯ããé¸ã³ã "Generate Translations" ãé¸æãã¾ãã RENPY_LANGUAGE ç°å¢å¤æ°ãç¿»è¨³åã«ãããè¨èªã«è¨­å®ãã¾ãã RENPY_UPDATE_STRINGS ç°å¢å¤æ°ãç©ºã§ãªãå¤ã«è¨­å®ãã¾ãã æå­åãç¿»è¨³æå­åã§ç½®ãæããã«ã¯ã!t å¤æãã©ã°ãä½¿ãã¾ããæ¬¡ã®ã³ã¼ãã¯å°è©ã¨ã³ã¼ãã®ç¿»è¨³ã·ã¹ãã ãä½¿ã£ã¦ç¿»è¨³ãããã¨ãã§ãã¾ã :: æå­åã®ç¿»è¨³çµæã¯ãå°è©ã¨ãã¦ã¯ç¿»è¨³ãããªãå°è©ã®æå­åã«ãä½¿ããã¨ãã§ãã¾ãã ç¿»è¨³æå­åã¯ãããã­ã¸ã§ã¯ãããæ½åºãã¦ãä»ã«ç§»ãã¾ããããã¯è¤æ°ã®æé ãçµã¾ã : ã¹ã¿ã¤ã«ã®ç¿»è¨³ ã¹ã¿ã¤ã«ã®ç¿»è¨³ã¯ã©ã®ãããª .rpy ãã¡ã¤ã«ã«ãè¿½å ã§ãã¾ãã ã¹ã¿ã¤ã« Language ã¢ã¯ã·ã§ã³ãä½¿ãã¨ãä»¥ä¸ã®ãããªã³ã¼ããä½¿ã£ã¦è¨­å®ç»é¢ã«è¨èªè¨­å®ãè¿½å ã§ãã¾ã :: æ¢å®ã®è¨èªã¯ä»¥ä¸ã®æ¹æ³ã«ãã£ã¦é¸æãã¾ã: ç¿»è¨³ã®åºæ¬ã¦ãããã«ã¯ãç©ºã®ãã­ãã¯ããè¤æ°ã®ç¿»è¨³å¯è½ãªã¹ãã¼ãã¡ã³ãã¾ã§ãããå¿è¦ã«å¿ãã¦åä¸ã® say ã¹ãã¼ãã¡ã³ããç¶ãã¾ããç¿»è¨³å¯è½ãªã¹ãã¼ãã¡ã³ãã¯ voice ã¹ãã¼ãã¡ã³ãã¨ nvl ã¹ãã¼ãã¡ã³ãã§ããä¾ãã°ãæ¬¡ã®ã²ã¼ã ãè¦ã¦ä¸ãã:: ã¹ã¯ãªããã®ã¡ã¤ã³ã®å°è©ã¯ãåå²ãé£çµãçç¥ãè¡ã®ä¸¦ã¹æ¿ããä¼´ãç¿»è¨³ãã§ãã¾ãã è¨èªãåãæ¿ããä¸»ãªæ¹æ³ã¯ãLanguage ã¢ã¯ã·ã§ã³ãä½¿ããã¨ã§ãã ç¾å¨ã®è¨èªã®ååãã¾ãã¯æ¢å®ã®è¨èªãä½¿ããã¦ããå ´åã¯ Noneãããã¯èª­ã¿è¾¼ã¿å°ç¨ã®å¤æ°ã¨ãã¦æ±ããªããã°ãªãã¾ãããè¨èªãå¤æ´ããã«ã¯ :func:`renpy.change_language` ãä½¿ç¨ãã¦ä¸ããã 2ã¤ç®ã®ã¦ãããã«ã¯ start_bd1ad9e1m ã¨ããè­å¥å­ãä¸ããããæ¬¡ãå«ã¿ã¾ã: 3ã¤ç®ã®ã¦ãããã«ã¯ start_9e949aac ã¨ããè­å¥å­ãä¸ããããæ¬¡ãå«ã¿ã¾ã: translate strings ã¹ãã¼ãã¡ã³ãã¯ãNone è¨èªã®ç¿»è¨³ã«ãä½¿ç¨ã§ãã¾ããããã¯ãè±èªä»¥å¤ã®è¨èªã§å¶ä½ãããã²ã¼ã ã«å¯¾ããRen'Py ã¦ã¼ã¶ã¼ã¤ã³ã¿ã¼ãã§ã¤ã¹ãç¿»è¨³ããå ´åã«å©ç¨ã§ãã¾ãã:: ç¿»è¨³ãã¡ã¤ã«ã¯ã²ã¼ã ãã£ã¬ã¯ããªã¼ã®ä¸­ã®ãtlããµããã£ã¬ã¯ããªã¼ã®ä¸ã«è¨­ç½®ããã¾ããä¾ãã°ãã¥ã¼ããªã¢ã«ãã­ã¸ã§ã¯ãã® piglatin ã®ç¿»è¨³ãä½æããå ´åãç¿»è¨³ãã¡ã¤ã«ã¯ ``tutorial/game/tl/piglatin`` ã®ä¸ã«è¨­ç½®ããã¾ãã çµ±åã®ç®¡çãããããã¤ãã®è¨­å®ãããã¾ãã è¨èªé¢é£ã®å¤æ°ã¯2ã¤ããã¾ãã1ã¤ã¯ :var:`config.language` ã§ãããã¯ã²ã¼ã ã®æ¢å®ã®è¨èªãå¤æ´ããããã«ä½¿ç¨ããã¾ãã ç¿»è¨³é¢é£ã®é¢æ°ã¯2ã¤ããã¾ã: ã²ã¼ã ã®ã¹ã¯ãªãããã¡ã¤ã«1ã¤ã«å¯¾ãã¦ç¿»è¨³ãã¡ã¤ã«ã1ã¤ä½æããã¾ããå±éã®ã³ã¼ãã§è¦ã¤ãã£ãæå­åã®ç¿»è¨³ãå«ããããã«ãcommon.rpy ãã¡ã¤ã«ãä½æããã¾ãã ãããã®ã¦ãããã¯ãRen'Py ãã²ã¼ã ãèª­ã¿è¾¼ãã æã«èªåçã«çæããã¾ãã çæãããã³ã¼ããç·¨éãããã¨ã§ç¿»è¨³ã§ãã¾ããç¿»è¨³ãå®äºããã¨æ¬¡ã®ããã«ãªãã¾ã :: ããã¯è¤æ°ã®ç¿»è¨³ã¦ãããã«åå²ããã¾ããããããã®ã¦ãããã«ã¯å²ãå½ã¦ãããè­å¥å­ããããè­å¥å­ã¯ã¦ãããã«åè¡ããã©ãã«ã¨ãã¦ãããåã®ã³ã¼ãããçæããã¾ãã(è¤æ°ã®ã¦ãããã«åä¸ã®ç¿»è¨³çªå·ãå²ãå½ã¦ãããå ´åã¯ãããããåºå¥ããããã«2ã¤ç®ä»¥éã®ã¦ãããã«çªå·ãæ¯ããã¾ãã) ããã«ãã "game/tl/language/strings.rpy" ãã¡ã¤ã«ãæ´æ°ããããã¹ã¦ã®ãã­ã¹ããå«ã¾ããç¿»è¨³ã®éå½¢ã¨ãªãã¾ãã ãã³ã æå­åç¿»è¨³ãã¡ã¤ã«ãä½æã¯ãä»¥ä¸ã®æé ã§è¡ãã¾ã: Translate ã¹ãã¼ãã¡ã³ã translate ã¹ãã¼ãã¡ã³ãã§ã¯ãåæã«å¯¾ãã¦1å¯¾1ã®ç¿»è¨³ã«ããå¿è¦ã¯ããã¾ãããä¾ãã°ãé·ãè¡ã¯åå²ãããã¨ãã§ãã¾ã:: å°è©ã®ç¿»è¨³ ç½®æãã­ã¹ãã®ç¿»è¨³ ç¿»è¨³ ç¿»è¨³ã«é¢é£ããã¢ã¯ã·ã§ã³ãé¢æ°ãå¤æ° ç¿»è¨³ã¦ããã æ­£å¼ãªèªå¯ãåãã¦ããªãå ´åã®ç¿»è¨³ ã¡ã¤ã³ã¹ã¯ãªããã®ä¸­ã«ãã­ãã¯ãè¦ã¤ããã¨ãRen'Py ã¯ãã®ãã­ãã¯ã«å¯¾å¿ãã translate ã¹ãã¼ãã¡ã³ããå­å¨ãããã©ãããç¢ºèªãã¾ããå­å¨ããå ´åã¯ç¿»è¨³åã®ãã­ãã¯ã®ä»£ããã« translate ã¹ãã¼ãã¡ã³ããå®è¡ããã¦ã¼ã¶ã¼ã«ç¿»è¨³çµæãè¡¨ç¤ºãã¾ãã è¨èªãå©ç¨å¯è½ã«ãªã£ãæ (ã²ã¼ã ã®éå§æããããã¯è¨èªãå¤æ´ãããå¾)ãRen'Py ã¯ init ãã§ã¼ãºã®å¾ã§ã¹ã¿ã¤ã«ããã®åå®¹ã«ãªã»ãããã¾ãã ãã§ãã¯ããã¨ã (ç©ºã§ãªãããåã®æå­åã®)æ¢å­ã®ç¿»è¨³ã¯ç½®ãæãããã¾ããããã©ã«ãã§ã¯çµ±åã¯æ¢å­ã®ç¿»è¨³ãç ´æ£ããä¸æ¸ããã¾ãã ç¿»è¨³ã®çææã«ãRen'Py ã¯ã¹ã¯ãªãããã¡ã¤ã«ã®ã¡ãã¥ã¼ãåã³ _() é¢æ°ã§å²ã¾ããæå­åãã¹ã­ã£ã³ãã¾ããããã¨ãtranslate strings ãã­ãã¯åã«ã¹ã­ã£ã³ãããæå­åãè¨­ç½®ããã¾ããä¾ãã°ãä»¥ä¸ã®ã³ã¼ãããã£ãã¨ãã¾ã:: None è¨èªãé¸æãããã¨ãã¯ãRen'Py ã®ã»ã¨ãã©ã®ç¿»è¨³æ©è½ãç¡å¹åããã¾ãã ãã­ã¸ã§ã¯ãã®ã¹ã¯ãªãããå©ç¨ã§ããå ´åãRen'Py ã©ã³ãã£ã¼ã§ãã­ã¸ã§ã¯ããéããGenerate Translationsããé¸ã¶ãã¨ã§ç¿»è¨³ãã¡ã¤ã«ãçæã§ãã¾ããã©ã³ãã£ã¼ã¯çæããè¨èªã®ååã®å¥åãæ±ããå¾ãç¿»è¨³ãã¡ã¤ã«ã®ä½æã¾ãã¯æ´æ°ãè¡ãã¾ãã ã³ã¼ãä¸­ã§åä¸ã®æå­åãè¤æ°ã®å ´æã«å­å¨ããå ´åãæå­åã¯ {#...} ãã­ã¹ãã¿ã°ãä½¿ã£ã¦è¦åãããã¾ããæ¬¡ã®ããã«ããå ´åãããããã®æå­åã¯åãããã«è¡¨ç¤ºããã¾ãããRen'Py ã¯ç¿»è¨³ã®ããã®ç°ãªãæå­åã¨ãã¦èªè­ãã¾ã :: ã²ã¼ã ãç¿»è¨³ããã¨ãããã¡ã¤ã«ãç¿»è¨³çã«ç½®ãæããå¿è¦ãããããããã¾ãããä¾ãã°ç»åã«ãã­ã¹ããå«ã¾ãã¦ããå ´åãæå³ãåããããã«ãã­ã¹ãé¨åãå¥ã®è¨èªã§æ¸ãããç»åã«ç½®ãæããã§ãããã ããè¨èªã®ç¿»è¨³ãçæããã¨ããRen'Py ã¯ããããã®ç¿»è¨³ã¦ãããã«å¯¾å¿ãã translate ã¹ãã¼ãã¡ã³ããçæãã¾ããä¸è¨ã®ã³ã¼ããç¿»è¨³ããã¨ããRen'Py ã¯æ¬¡ã®ã³ã¼ããçæãã¾ã :: ããã¯ä»¥ä¸ã®ããã«ç¿»è¨³ã§ãã¾ã:: ç¿»è¨³ãã­ãã¯ã Python ã®ã³ã¼ããå«ãå ´åãã³ã¼ãã¯ãã­ãã¯ã®å¤å´ã«å½±é¿ãåã¼ãã¹ãã§ã¯ããã¾ãããä½æãªãã°ãè¨èªãå¤æ´ããã¨ãã«ç¿»è¨³ãã­ãã¯ã¯ååº¦éå§ããã¾ãããããã«ãã£ã¦å¯ä½ç¨ãä½åº¦ãçºçãã¦ãã¾ãããã§ãã `language` ãããæ¬¡ã®ããã«ç¿»è¨³ã§ãã¾ã:: ã¾ãã¯ç­ä¾¡ãªãã®ã§:: 