Þ    8      Ü  O         Ø  $  Ù  ¢   þ  ê   ¡  F     <   Ó       q     ¥     Q   7	  Þ   	  m   h
  \   Ö
     3    Ì    å  §   è  0       Á     Ð  ¶   à          ­     Í     l  ^   }  q   Ü  H   N  ¦     M   >            X     Î   w  T   F  (     B   Ä       Å     ^   X  <   ·  =   ô  G  2  Ê   z  ^  E     ¤     1  ê   ¸     £     ²     Á     Ö     ä     í  	   þ       l      |  Ñ   	!  ?  Û!  i   #  _   #     å#  {    $  ê   |$  {   g%  *  ã%  ¥   '  x   ´'  Ð   -(  9  þ(  8  8*  Ñ   q+  z  C,     ¾-     Ù-    õ-     /  !   /  ã   @/     $0     A0     É0  z   f1  ô   á1  ~   Ö2  º   U3     4     #4  B  £4     æ5  =   n6  b   ¬6  ²   7  '  Â7     ê8  E   j9  E   °9    ö9    ;  ·  ±<  l   i>  «   Ö>    ?     @      @     ¯@     Ä@     Ò@     Û@  	   ì@     ö@     6   $               #      ,                 "   &   .   !       2   8                               /   1      5             *      (                         3          
   )                %   '             7   0             -   	   +            4                                    A context created with this function cannot execute Ren'Py script. Functions that would change the flow of Ren'Py script, like :func:`renpy.jump`, are handled by the outer context. If you want to call Ren'Py script rather than a Python function, use :func:`renpy.call_in_new_context` instead. A context maintains the state of the display (including what screens and images are being shown) and the audio system. Both are restored when the context returns. A label statement may have a block associated with it. In that case, control enters the block whenever the label statement is reached, and proceeds with the statement after the label statement whenever the end of the block is reached. Additional arguments and keyword arguments are passed to the callable. By default, Ren'Py jumps to this label when the game starts. Call Statement Causes control to leave the current context, and then to be transferred in the parent context to the given label. If it exists, this label is called before the main menu. It is used in rare cases to set up the main menu, for example by starting a movie playing in the background. If it exists, this label is called in a new context when the user quits the game. If it exists, this label is called instead of the main menu. If it returns, Ren'Py will start the game at the ``start`` label. For example, the following will immediately start the game without displaying the main menu. :: If it exists, this label is called when a game is loaded. It can be use to fix data when the game is updated. If it exists, this label is called when the game is first run, before showing the main menu. If it is existed, this label is called after a warp but before the warped-to statement executes. please see :ref:`Warping to a line <warping_to_a_line>` If the ``expression`` keyword is present, the expression following it is evaluated, and the string so computed is used as the label name of the statement to jump to. If the ``expression`` keyword is not present, the label name of the statement to jump to must be explicitly given. If the ``expression`` keyword is present, the expression following it is evaluated, and the string so computed is used as the name of the label to call. If the ``expression`` keyword is not present, the name of the statement to call must be explicitly given. If the optional expression is given to return, it is evaluated, and it's result is stored in the _return variable. This variable is dynamically scoped to each context. If the optional from clause is present, it has the effect of including a label statement with the given name as the statement immediately following the call statement. An explicit label helps to ensure that saved games with return stacks can return to the proper place when loaded on a changed script. :: Jump Statement Label Statement Label statements allow the given name to be assigned to a program point. They exist solely to be called or jumped to, either from Ren'Py script, Python functions, or from screens. :: Labels & Control Flow Labels & Control Flow Functions Local labels can be referenced directly inside the same global label they are declared in or by their full name, consisting of global and local name parts: :: Return Statement Returns a list giving the current return stack. The return stack is a list of statement names. Returns the set of all labels defined in the program, including labels defined for internal use in the libraries. Returns true if `name` is a valid label the program, or false otherwise. Returns true if the named label has executed at least once on the current user's system, and false otherwise. This can be used to unlock scene galleries, for example. Sets the current return stack. The return stack is a list of statement names. Should be a string to check for the existence of a label. It can also be an opaque tuple giving the name of a non-label statement. Special Labels Statement names may be strings (for labels) or opaque tuples (for non-label statements). The call statement is used to transfer control to the given label. It also pushes the next statement onto the call stack, allowing the return statement to return control to the statement following the call. The call statement may take arguments, which are processed as described in PEP 3102. The following labels are used by Ren'Py: The jump statement is used to transfer control to the given label. The label statement may take an optional list of parameters. These parameters are processed as described in PEP 3102, with two exceptions: The return statement pops the top statement off of the call stack, and transfers control to it. If the call stack is empty, the return statement restarts Ren'Py, returning control to the main menu. The statement names will be strings (for labels), or opaque tuples (for non-label statements). The values of default parameters are evaluated at call time. The variables are dynamically, rather than lexically, scoped. There are two kinds of labels: *global* and *local* labels. Global labels live in one global scope shared across all project files and thus should have unique names per game. Local labels logically reside inside scope of the global label they are declared in. To declare a local label, prefix its name with `.`. For example: :: This creates a new context, and then starts executing Ren'Py script from the given label in that context. Rollback is disabled in the new context, and saving/loading will occur in the top level context. This function creates a new context, and invokes the given Python callable (function) in that context. When the function returns or raises an exception, control returns to the the original context. It's generally used to call a Python function that needs to display information to the player (like a confirmation prompt) from inside an event handler. This is used to begin a second interaction with the player Use this to begin a second interaction with the user while inside an interaction. Unlike call, jump does not push the next statement onto a stack. As a result, there's no way to return to where you've jumped from. :: When using a call expression with an arguments list, the ``pass`` keyword must be inserted between the expression and the arguments list. Otherwise, the arguments list will be parsed as part of the expression, not as part of the call. ``after_load`` ``after_warp`` ``before_main_menu`` ``main_menu`` ``quit`` ``splashscreen`` ``start`` `name` Project-Id-Version: renpy-doc
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-08-04 18:15+0900
PO-Revision-Date: 2017-08-07 18:45+0900
Last-Translator: 
Language-Team: Japanese <ja@li.org>
Language: ja
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2015-03-29 05:43+0000
X-Generator: Poedit 1.5.7
 ãã®é¢æ°ã§ä½æãããã³ã³ãã­ã¹ãã¯ Ren'Py ã¹ã¯ãªãããå®è¡ã§ãã¾ããã :func:`renpy.jump` ã®ãããª Ren'Py ã¹ã¯ãªããã®æµããå¤ããå¤æ´ãããé¢æ°ã¯ã³ã³ãã­ã¹ãå¤ã§æ±ããã¾ãã Python é¢æ°ã§ã¯ãªã Ren'Py ã¹ã¯ãªãããå¼ã³åºããããªãã :func:`renpy.call_in_new_context` ãä»£ããã«ä½¿ã£ã¦ãã ããã ã³ã³ãã­ã¹ãã¯(ã©ã®ã¹ã¯ãªã¼ã³ã¨ç»åãè¡¨ç¤ºãããã¦ããããå«ã)ãã®è¡¨ç¤ºç¶æã¨é³å£°ã·ã¹ãã ãç¶­æãã¾ããã³ã³ãã­ã¹ãããè¿ãã¨ä¸¡æ¹ãæ»ãã¾ãã label ã¹ãã¼ãã¡ã³ãã¯ããã«é¢é£ã¥ãããããã­ãã¯ãæã¤ã§ãããããã®å ´åãã® labe ã¹ãã¼ãã¡ã³ãã«å°éããã¨å¶å¾¡ã¯ãã®ãã­ãã¯ã«å¥ãããã®ãã­ãã¯ã®çµç«¯ã«å°éããã¨ label ã¹ãã¼ãã¡ã³ãã®æ¬¡ã®ã¹ãã¼ãã¡ã³ãã«ç§»ãã¾ãã è¿½å ã®å¼æ°ã¨ã­ã¼ã¯ã¼ãå¼æ°ã¯ãã®å¼ã³åºãå¯è½ãªãã¸ã§ã¯ãã«æ¸¡ããã¾ãã ããã©ã«ãã§ã¯ Ren'Py ã¯ã²ã¼ã éå§æã«ãã®ã©ãã«ã«ã¸ã£ã³ããã¾ãã call ã¹ãã¼ãã¡ã³ã ç¾å¨ã®ã³ã³ãã­ã¹ããçµäºããè¦ªã®ã³ã³ãã­ã¹ãã§æå®ãããã©ãã«ã«å¶å¾¡ãç§»åãã¾ãã å­å¨ããã°ãã®ã©ãã«ã¯ã¡ã¤ã³ã¡ãã¥ã¼ããåã«å¼ã³åºããã¾ããã¡ã¤ã³ã¡ãã¥ã¼ãç¨æãä¾ãã°ããã¯ã°ã©ã¦ã³ãã§ã ã¼ãã¼ãåçãããããªç¹å¥ãªå ´åã«ä½¿ç¨ããã¾ãã å­å¨ããã°ãã®ã©ãã«ã¯ã¦ã¼ã¶ã¼ãã²ã¼ã çµäºæã«æ°ããã³ã³ãã­ã¹ãã§å¼ã³åºããã¾ãã ããå­å¨ããã°ãã®ã©ãã«ã¯ã¡ã¤ã³ã¡ãã¥ã¼ã®ä»£ããã«å¼ã³åºããã¾ããå¶å¾¡ãè¿ãã¨ Ren'Py ã¯ ``start`` ã©ãã«ããã²ã¼ã ãéå§ãã¾ããä¾ãã°ä»¥ä¸ã®ã³ã¼ãã§ã¯ã¡ã¤ã³ã¡ãã¥ã¼ãè¡¨ç¤ºããã«å³åº§ã«ã²ã¼ã ãéå§ãã¾ãã :: å­å¨ããã°ãã®ã©ãã«ã¯ã²ã¼ã ãã­ã¼ããããã¨å¼ã³åºããã¾ããã²ã¼ã æ´æ°æã«ãã¼ã¿ãä¿®æ­£ããããã«ä½¿ç¨å¯è½ã§ãã å­å¨ããã°ãã®ã©ãã«ã¯ã²ã¼ã ãèµ·åãããã¨ã¡ã¤ã³ã¡ãã¥ã¼ããåã«å¼ã³åºããã¾ãã å­å¨ããã°ãã®ã©ãã«ã¯ã¯ã¼ãå¾ã«ã¯ã¼ãåã®ã¹ãã¼ãã¡ã³ããå®è¡ãããåã«å¼ã³åºããã¾ãã :ref:`Warping to a line <warping_to_a_line>` ãåç§ãã¦ãã ããã ``expression`` ã­ã¼ã¯ã¼ããå­å¨ããã¨ãããã«ç¶ãå¼ãè©ä¾¡ãããç®åºãããæå­åãã¸ã£ã³ãåã®ã©ãã«åã«ä½¿ç¨ããã¾ãã ``expression`` ã­ã¼ã¯ã¼ããå­å¨ããªãã¨ãã¸ã£ã³ãåã®ã©ãã«åã¯ã¯ã£ããã¨æå®ãããªããã°ãªãã¾ããã ``expression`` ã­ã¼ã¯ã¼ããä¸ããããã¨ãããã«ç¶ãå¼ãè©ä¾¡ãããå¾ãããæå­åãã©ãã«ã®ååã¨ãã¦å¼ã³åºãã¾ãã``expression`` ã­ã¼ã¯ã¼ããä¸ããªãå ´åã¯ãå¼ã³åºãã¹ãã¼ãã¡ã³ãã®ååãæç¤ºçã«æå®ããå¿è¦ãããã¾ãã ä»»æã®å¼ã return ã«æå®ãããã¨ãããã¯è©ä¾¡ããããã®çµæã _return å¤æ°ã«ä¿å­ããã¾ãããã®å¤æ°ã¯åã³ã³ãã­ã¹ãã«å¯¾ãã¦åçã¹ã³ã¼ãã«å±ãã¾ãã ä»»æã® from ç¯ãå­å¨ããã°æå®ãããååã®ã©ãã«ã¹ãã¼ãã¡ã³ãããã® call ã¹ãã¼ãã¡ã³ãã®ç´å¾ã«ç¶ãã¹ãã¼ãã¡ã³ãã¨ãã¾ããæç½ãªã©ãã«ã¯ã³ã¼ã«ã¹ã¿ãã¯ãä¿å­ããã²ã¼ã ããå¤æ´ããã¹ã¯ãªãããã­ã¼ãããã¨ãã«é©åãªä½ç½®ã«è¿ãããã¨ãä¿è¨¼ããã®ã«å½¹ç«ã¡ã¾ãã jump ã¹ãã¼ãã¡ã³ã label ã¹ãã¼ãã¡ã³ã label ã¹ãã¼ãã¡ã³ãã¯æå®ãããååã«ãã­ã°ã©ã çãªä½ç½®ãä»£å¥ãã¾ãããããã¯åã« Ren'Py ã¹ã¯ãªããã python é¢æ°ãã¹ã¯ãªã¼ã³ããå¼ã³åºãããããã¸ã£ã³ãããããããããã«å­å¨ãã¾ãã :: ã©ãã«ã¨å¶å¾¡ãã­ã¼ ã©ãã«ã¨å¶å¾¡ãã­ã¼é¢æ° local label ã¯ããããå®£è¨ãããã®ã¨åãã°ã­ã¼ãã«ã©ãã«åãªãç´æ¥ã«ãããã§ãªããã°ã°ã­ã¼ãã«ã¨ã­ã¼ã«ã«ãã¼ã ã§åºæ¥ã¦ãããã®ãã«ãã¼ã ã§åç§åºæ¥ã¾ãã : :: return ã¹ãã¼ãã¡ã³ã ç¾å¨ã®ãªã¿ã¼ã³ã¹ã¿ãã¯ã®ãªã¹ããè¿ãã¾ãããªã¿ã¼ã³ã¹ã¿ãã¯ã¯ã¹ãã¼ãã¡ã³ãåã®ãªã¹ãã§ãã ã©ã¤ãã©ãªã¼åé¨ã§ä½¿ç¨ããããã«å®ç¾©ãããã©ãã«ãå«ãããã­ã°ã©ã ã§å®ç¾©ããããã¹ã¦ã®ã©ãã«ãè¿ãã¾ãã `name` ããã®ãã­ã°ã©ã åã§ã®æ­£ããã©ãã«ãªã True ããããã§ãªããã° False ãè¿ãã¾ãã ãã®ååã®ã©ãã«ãç¾å¨ã®ã¦ã¼ã¶ã¼ã«ä¸åº¦ã§ãå®è¡ããã¦ããã¨ True ããããã§ãªããã° False ãè¿ããã¾ããããã¯ä¾ãã°ã·ã¼ã³ã®ã£ã©ãªã¼ãã¢ã³ã­ãã¯ããããã«ä½¿ç¨åºæ¥ã¾ãã ç¾å¨ã®ãªã¿ã¼ã³ã¹ã¿ãã¯ãè¨­å®ãã¾ãããªã¿ã¼ã³ã¹ã¿ãã¯ã¯ã¹ãã¼ãã¡ã³ãåã®ãªã¹ãã§ãã ã©ãã«ã®å­å¨ããã§ãã¯ããããã«ã¯æå­åã§ããã¹ãã§ããã©ãã«ã®ãªãã¹ãã¼ãã¡ã³ãã®ååã¯æå®ããä¸æç­ãªã¿ãã«ãå¯è½ã§ãã ç¹å¥ãªã©ãã« ã¹ãã¼ãã¡ã³ãåã¯æå­å (ã©ãã«) ãä¸æç­ãªã¿ãã« ( ã©ãã«ã®ãªãã¹ãã¼ãã¡ã³ã ) ã§ãã call ã¹ãã¼ãã¡ã³ãã¯æå®ãããã©ãã«ã«å¶å¾¡ãç§»ãããã«ä½¿ç¨ããã¾ããããã¯åæã«æ¬¡ã®ã¹ãã¼ãã¡ã³ããã³ã¼ã«ã¹ã¿ãã¯ã«ããã·ã¥ãã return ã¹ãã¼ãã¡ã³ãã§å¶å¾¡ã call ã¹ãã¼ãã¡ã³ãã®æ¬¡ã®ã¹ãã¼ãã¡ã³ãã«è¿ããããã«ãã¾ãã call ã¹ãã¼ãã¡ã³ãã¯å¼æ°ãåããã¨ãã§ãããããã¯ PEP 3102 ã«è¨è¿°ãããã¨ããã«å¦çããã¾ãã ä»¥ä¸ã®ã©ãã«ã¯ Ren'Py æ¬ä½ã§ä½¿ç¨ããã¾ãã : jump ã¹ãã¼ãã¡ã³ãã¯æå®ãããã©ãã«ã«å¶å¾¡ãç§»ãå ´åã«ä½¿ç¨ãã¾ãã label ã¹ãã¼ãã¡ã³ãã¯ä»»æã§å¼æ°ãã¨ãã¾ãããããã®å¼æ°ã¯ PEP 3102 ã§è¨è¿°ãããã¨ããã«å¦çããã¾ããã2ã¤ã®ä¾å¤ãããã¾ã : return ã¹ãã¼ãã¡ã³ãã¯ã³ã¼ã«ã¹ã¿ãã¯ã®ä¸çªä¸ã®ã¹ãã¼ãã¡ã³ãããããããå¶å¾¡ããã®ã¹ãã¼ãã¡ã³ãã«ç§»ãã¾ããã³ã¼ã«ã¹ã¿ãã¯ãç©ºã®å ´åãreturn ã¹ãã¼ãã¡ã³ãã¯ Ren'Py ãåèµ·åããã¡ã¤ã³ã¡ãã¥ã¼ã«æ»ãã¾ãã ã¹ãã¼ãã¡ã³ãåã¯æå­å (ã©ãã«) ãä¸æç­ãªã¿ãã« ( ã©ãã«ã®ãªãã¹ãã¼ãã¡ã³ã ) ã§ãã ããã©ã«ãå¼æ°ã®å¤ã¯å¼ã³åºãæã«è©ä¾¡ããã¾ãã å¤æ°ã¯éçã¹ã³ã¼ãã§ã¯ãªããåçã¹ã³ã¼ãã§ãã äºç¨®é¡ã®ã©ãã« *global* ã¨ *local* ãããã¾ãã global label ã¯ãã¹ã¦ã®ãã­ã¸ã§ã¯ããã¡ã¤ã«ã«æ¸¡ãã°ã­ã¼ãã«ã¹ã³ã¼ãã«ç½®ãããã²ã¼ã æ¯ã«åºæãªååãæã¤ã¹ãã§ããlocal label ã¯ããããå®£è¨ãããã°ã­ã¼ãã«ã¹ã³ã¼ãåé¨ã«ç½®ããã¾ããlocal label ãå®£è¨ããã«ã¯æ¥é ­è¾ `.` ãååã«ã¤ãã¦ãã ãããä¾: :: ãã®ã³ã¼ãã¯æ°ããã³ã³ãã­ã¹ããä½æããæ°ããã³ã³ãã­ã¹ãã§ãã®ã©ãã«ããã³ã¼ããå®è¡ãã¾ããã­ã¼ã«ããã¯ã¯æ°ããã³ã³ãã­ã¹ãã§ã¯ç¡å¹åãããã»ã¼ã/ã­ã¼ãã¯ä¸çªä¸ã®ã³ã³ãã­ã¹ãã§è¡ããã¾ãã ç¾å¨ã®ã³ã³ãã­ã¹ããããã·ã¥ããæå®ããã python é¢æ°ãæ°ããã³ã³ãã­ã¹ãã§å®è¡ãã¾ãããã®é¢æ°ããæ»ããä¾å¤ãåºåããã¨ãæ°ããã³ã³ãã­ã¹ããåé¤ãã¦ç¾å¨ã®ã³ã³ãã­ã¹ãã«æ»ãã¾ããä¸è¬çã«ãã¤ãã³ããã³ãã©ã¼åé¨ããããã¬ã¤ã¤ã¼ã«æå ±ãè¡¨ç¤ºããå¿è¦ã®ãã python é¢æ°ãå¼ã³åºãããã«ä½¿ç¨ããã¾ãã ãããä½¿ç¨ãã¦ã¤ã³ã¿ã©ã¯ã·ã§ã³ä¸­ã« 2 ã¤ç®ã®ã¤ã³ã¿ã©ã¯ã·ã§ã³ãéå§ãã¾ãã call ã¨ã¯ç°ãªããjump ã¯æ¬¡ã®ã¹ãã¼ãã¡ã³ããã¹ã¿ãã¯ã«ããã·ã¥ãã¾ããããã®ãããã¸ã£ã³ãåã«æ»ãæ¹æ³ã¯ããã¾ããã:: å¼æ°ãªã¹ãã¤ãã® call expression ãä½¿ç¨ããã«ã¯ ``pass`` ã­ã¼ã¯ã¼ããå¼ã¨å¼æ°ãªã¹ãã®éã«å¥ããªããã°ãªãã¾ãããããã§ãªããã°å¼æ°ãªã¹ãã¯ call ã¹ãã¼ãã¡ã³ãã§ã¯ãªãå¼ã®ä¸é¨ã¨è§£éããã¾ãã ``after_load`` ``after_warp`` ``before_main_menu`` ``main_menu`` ``quit`` ``splashscreen`` ``start`` `name` 