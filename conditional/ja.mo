Þ          ¤      ,             ¸         Y     h     v       È        Ð    ß  
  ì  Ú   ÷    Ò  ½   ã  g   ¡  d   		     n	  l  ~	  $   ë
  ¿        Ð     Ö     Ý     ö  ?       Ç  w  â  :  Z  ÿ     E    Ã   Û  ¡     i   A     «                         
             	                                        Conditional Statements Each clause should be on its own logical line, followed by a block of statements. The ``if`` and ``elif`` clauses are followed by an expression, while all clauses end with a colon. (:) Examples are:: For example:: If Statement If all expressions evaluate to false, the block associated with the ``else`` clause is executed, if the ``else`` clause is present. Note that is pages discusses statements that can be used inside Ren'Py script. Python embedded in a Ren'Py game uses the Python while, if, and for statements, but can't embed Ren'Py script statements. Pass Statement Ren'Py does not have continue, break, or for statements. Continue and break statements can be replaced by jumps to labels placed before or after the while loop, respectively. The first example of a while loop, above, shows how a while loop can replace a for statement. Ren'Py includes several statements that can alter control flow based on expression values. (This is in addition to the :ref:`jump <jump-statement>`, :ref:`call <call-statement>` and :ref:`return <return-statement>` statements, which transfer control unconditionally. The expression is evaluated when while statement is first reached, and then each time control reaches the end of the block. When the expression return a false value, the statement after the while statement is executed. The expressions in the if statement are evaluated in order, from first to last. When an expression evaluates to true, the block corresponding to that statement is executed. When control reaches the end of the block, it proceeds to the statement following the if statement. The if statement conditionally executes a block of statements if a python expression is true. It consists of an ``if`` clause, zero or more ``elif`` clauses, and an optional``else`` clause. The pass statement can be used when a block is required, but no statement is suitable. It does nothing. The while statement executes a block of statements while an expression evaluates true. For example:: While Statement Project-Id-Version: renpy-doc
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-08-04 18:15+0900
PO-Revision-Date: 2017-08-04 20:24+0900
Last-Translator: 
Language-Team: Japanese <ja@li.org>
Language: ja
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2014-06-21 06:27+0000
X-Generator: Poedit 1.5.7
 æ¡ä»¶åå²ç¨ã¹ãã¼ãã¡ã³ã åç¯ã¯ã¹ãã¼ãã¡ã³ãã®ãã­ãã¯ãç¶ãè«çè¡ä¸ã«ãªããã°ãªãã¾ããã ``if`` ã¨ ``elif`` ç¯ã«ã¯å¼ãç¶ããå¨ã¦ã®ç¯ã¯ã³ã­ã³ (:) ã§çµãã¾ãã ä¾:: ä¾ :: if ã¹ãã¼ãã¡ã³ã å¨ã¦ã®å¼ã®è©ä¾¡ã False ã§ã ``else`` ç¯ãå­å¨ãããªã ``else`` ç¯ã«é¢é£ä»ãããããã­ãã¯ãå®è¡ããã¾ãã ããã§ç´¹ä»ããã¦ããã¹ãã¼ãã¡ã³ãã¯ Ren'Py ã¹ã¯ãªããã§å©ç¨ã§ãããã®ã§ããRen'Py ã®ã²ã¼ã ã«çµã¿è¾¼ã¾ãã Python ã®ã³ã¼ãã§ã¯ãPython ã® whileãifãfor ã¹ãã¼ãã¡ã³ããå©ç¨ã§ãã¾ãããRen'Py ã¹ã¯ãªããã®ã³ã¼ãã§ã¯å©ç¨ã§ãã¾ããã pass ã¹ãã¼ãã¡ã³ã Ren'Py ã¯ continue, break, for ã¹ãã¼ãã¡ã³ããæã¡ã¾ããã continue ã¨ break ã¹ãã¼ãã¡ã³ãã¯ãããã while ã«ã¼ãã®åã¨å¾ã«éç½®ãããã©ãã«ã¸ã®ã¸ã£ã³ãã§ç½®ãæãããã¾ããä¸è¨ã® while ã«ã¼ãã®æåã®ä¾ã¯ã©ã®ããã« while ã«ã¼ãã§ for ã¹ãã¼ãã¡ã³ããç½®ãæããããç¤ºãã¾ãã Ren'Py ã«ã¯å¼ã®å¤ã«å¿ãã¦å¶å¾¡ãã­ã¼ãå¤æ´ããããã¤ãã®ã¹ãã¼ãã¡ã³ããããã¾ãã (ããã¯æ¡ä»¶ã¨ã¯é¢ä¿ãªãã«å¶å¾¡ãç§»åãã :ref:`jump <jump-statement>`, :ref:`call <call-statement>`, :ref:`return <return-statement>` ã¹ãã¼ãã¡ã³ãã®çºå±çã§ãã) å¼ã¯ while ã¹ãã¼ãã¡ã³ãã«æåã«å°éããã¨ãã¨ããã®ãã­ãã¯ã®çµç«¯ã«å¶å¾¡ãå°éããåº¦ã«è©ä¾¡ããã¾ããå¼ã False ãè¿ãã¨ while ã¹ãã¼ãã¡ã³ãã®å¾ã®ã¹ãã¼ãã¡ã³ããå®è¡ããã¾ãã if ã¹ãã¼ãã¡ã³ãã®å¼ã¯é çªã«æåããæå¾ã¾ã§è©ä¾¡ããã¾ããå¼ã True ã«è©ä¾¡ãããã¨ããã®ã¹ãã¼ãã¡ã³ãã«å¯¾å¿ãããã­ãã¯ãå®è¡ããã¾ããå¶å¾¡ããã®ãã­ãã¯ã®çµç«¯ã«éããã¨ if ã¹ãã¼ãã¡ã³ãã®å¾ã®ã¹ãã¼ãã¡ã³ãã«é²ã¿ã¾ãã if ã¹ãã¼ãã¡ã³ãã¯ python å¼ã True ãªããã­ãã¯ãå®è¡ãã¾ããããã¯ 1 ã¤ã® ``if`` ç¯ã¨ 0 ä»¥ä¸ã® ``elif`` ç¯ãä»»æã® ``else`` ç¯ããã§ãã¦ãã¾ãã pass ã¹ãã¼ãã¡ã³ãã¯ãã­ãã¯ãå¿è¦ã ããã©é©åãªã¹ãã¼ãã¡ã³ãããªãã¨ãã«ä½¿ç¨åºæ¥ã¾ããããã¯ä½ããã¾ããã while ã¹ãã¼ãã¡ã³ãã¯å¼ã®è©ä¾¡ã True ã§ããéããã­ãã¯ãå®è¡ãã¾ããä¾ :: while ã¹ãã¼ãã¡ã³ã 