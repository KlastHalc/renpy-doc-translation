Þ    )      d  ;   ¬        Ò        l     |       Z   ¤     ÿ  ·        H  M   å  2  3  ¸   f     	  '   ¿	  '   ç	     
  :   £
     Þ
  .   r  M   ¡  e   ï  x   U  |   Î  N   K  -        È  ;   M  £     m  -  U     æ   ñ  ¢   Ø     {            
     
   ª     µ     ¾  s   Ä  	   8  l  B  Ö   ¯       9        Ð  w   ×  á   O  Ð   1  Ä     i   Ç    1  Â   Í  ¯     ?   @  B     ¯   Ã  Q   s  ½   Å  5     l   ¹  j   &  ¸        J   *   Ï   K   ú   í   F!  M   4"  ó   "  Â  v#  k   9%  @  ¥%  î   æ&  	   Õ'     ß'     û'     (  
   (     )(     2(     8(  	   Ö(     %                                           !                #             	      )   '                              
      $       (                                               &      "                 And the dialogue identifier is ``demo_minigame_03fc91ef``, then when the corresponding line is shown, Ren'Py will look for the file ``voice/demo_minigame_03fc91ef.ogg``. If the file exists, Ren'Py will play it. Automatic Voice For example, if we have:: For example:: If True, buttons using this action will be marked as selected while the sample is playing. If `mute` is true, mutes voices that are played with the given `voice_tag`. If `mute` is false, unmutes voices that are played with `voice_tag`. If this is not None, it should be a string giving a voice tag to be played. If None, this takes its default value from the voice_tag of the Character that causes the next interaction. Normally, a playing voice is stopped at the start of the next interaction. The voice sustain statement can sustain voice playback through an interaction. :: Plays `filename` on the voice channel. The equivalent of the voice statement. Ren'Py includes a voice tag system that makes it possible to selectively mute or unmute a character's voice. To take advantage of this system, supply a voice_tag argument to each :func:`Character`, and use the :func:`SetVoiceMute` or :func:`ToggleVoiceMute` actions to allow the player to toggle the voice. Ren'Py includes support for automatically determining the voice file to play, making it possible to play back voice without having to put voice statements before each line of dialogue. Ren'Py includes support for playing back voice in conjunction with dialogue. This is done through the voice statement, which gives the voice filename to play:: Replays the current voice, if possible. Replays the most recently played voice. Returns information about the voice being played by the current say statement. This function may only be called while a say statement is executing. Returns true if it's possible to replay the current voice. The :var:`config.voice_filename_format` variable allows you to customize the voice filename, making it possible to omit directories and extensions. The equivalent of the voice sustain statement. The filename of the voice to be played, or None if no files should be played. The filename that Ren'Py looked in for automatic-voicing purposes, or None if one could not be found. The filename to play. This is used with :var:`config.voice_filename_format` to produce the filename that will be played. The first column of the spreadsheet is the identifier to use, with other columns giving more information about the dialogue. The full path to a sound file. No voice-related handling of this file is done. The object returned has the following fields: The voice tag is used to specify which character is speaking, to allow a user to mute or unmute the voices of particular characters. The voice_tag parameter supplied to the speaking Character. This allows the volume of each characters to be adjusted. If `volume` is None, this returns the value of volume of `voice_tag`. Otherwise, this set it to `volume`. This is done by creating voice files that match the identifier for each line of dialogue. To determine the identifiers to use , first export the dialogue to a spreadsheet by choosing from the launcher "Extract Dialogue", "Tab-delimited Spreadsheet (dialogue.tab)", and "Continue". This will produce a file, dialogue.tab, that can be loaded in a spreadsheet program. This plays `sample` on the voice channel, as if said by a character with `voice_tag`. To make Ren'Py automatically play voices, set :var:`config.auto_voice` to a string containing `{id}`. When dialogue occurs, `{id}` is replaced with the dialogue identifier, forming a filename. If the filename exists, it is played. Toggles the muting of `voice_tag`. This is selected if the given voice tag is muted, unless `invert` is true, in which case it's selected if the voice is unmuted. Voice Voice Actions Voice Functions Voice Tags `filename` `sample` `tag` `volume` is a number between 0.0 and 1.0, and is interpreted as a fraction of the mixer volume for `voice` channel. selected` Project-Id-Version: renpy-doc
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-08-04 18:15+0900
PO-Revision-Date: 2017-08-06 19:47+0900
Last-Translator: 
Language-Team: Japanese <ja@li.org>
Language: ja
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2015-03-29 05:43+0000
X-Generator: Poedit 1.5.7
 å°è©ã®è­å¥å­ã ``demo_minigame_03fc91ef`` ãªããå¯¾å¿ããè¡ãè¡¨ç¤ºãããã¨Ren'Py ã¯ ``voice/demo_minigame_03fc91ef.ogg`` ãã¡ã¤ã«ãæ¢ãããã¡ã¤ã«ãå­å¨ããã°åçãã¾ãã èªåãã¤ã¹ ä¾ãã°ä»¥ä¸ã®ãããªã¹ã¯ãªãããããã :: ä¾ :: True ãã®ã¢ã¯ã·ã§ã³ãä½¿ç¨ãããã¿ã³ã¯ sample ãåçä¸­ã¯ selected ã¨ãã¦ãã¼ã¯ããã¾ãã `mute` ã true ã®å ´åã¯ãä¸ãããã `voice_tag` ã§åçããããã¤ã¹ããã¥ã¼ãã«ãã¾ãã `mute` ã false ã®å ´åã¯ã `voice_tag` ã§åçããããã¤ã¹ã®ãã¥ã¼ããè§£é¤ãã¾ãã ãã®å¤ã¯ None ã«ããããã¾ãã¯åçãããã¤ã¹ã¿ã°ã®æå­åã«ãã¾ããNone ã®å ´åã¯ãæ¢å®å¤ã¨ãã¦æ¬¡ã®åä½ã«ãããã­ã£ã©ã¯ã¿ã¼ã® voice_tag ã¨ãªãã¾ãã éå¸¸åçä¸­ã®ãã¤ã¹ã¯æ¬¡ã®åä½ãå§ã¾ãã¨åæ­¢ããã¾ããvoice sustain ã¹ãã¼ãã¡ã³ããä½¿ãã¨æ¬¡ã®åä½ã«ãã¾ããã£ã¦ãã¤ã¹ã®åçãç¶ãã¾ãã:: `filename` ããã¤ã¹ãã£ã³ãã«ã§åçãã¾ãã voice ã¹ãã¼ãã¡ã³ãã¨ç­ä¾¡ã§ãã Ren'Py ã«ã¯ãã¤ã¹ã¿ã°æ©è½ãå«ã¾ãã¦ãããç¹å®ã­ã£ã©ã¯ã¿ã¼ã®ãã¤ã¹ããã¥ã¼ããããã©ããé¸æã§ãã¾ãããã®ã·ã¹ãã ãå©ç¨ããã«ã¯ããããã® :func:`Character` ã« voice_tag å¼æ°ãä¸ãã :func:`SetVoiceMute` ã¾ãã¯ :func:`ToggleVoiceMute` ã¢ã¯ã·ã§ã³ãä½¿ã£ã¦ãã¬ã¤ã¤ã¼ããã¤ã¹ã®åãæ¿ããã§ããããã«ãã¾ãã Ren'Py ã¯åçãããã¤ã¹ãã¡ã¤ã«ã®èªåçãªæ±ºå®ããµãã¼ãããå°è©æ¯ã« voice ã¹ãã¼ãã¡ã³ããæ¸ããªãã¦ããã¤ã¹ãåçåºæ¥ãããã«ãã¾ãã Ren'Py ã§ã¯å°è©ã¨åæã«ãã¤ã¹ãåçåºæ¥ã¾ãããã®ããã«ã¯ voice ã¹ãã¼ãã¡ã³ãã§åçãããã¤ã¹ãã¡ã¤ã«ã®ååãæå®ãã¾ã:: å¯è½ã§ããã°ç¾å¨ã®ãã¤ã¹ãååº¦åçãã¾ãã æãæè¿ã«åçããããã¤ã¹ãååº¦åçãã¾ãã ç¾å¨ã® say ã¹ãã¼ãã¡ã³ãã§åçããã¦ãããã¤ã¹ã®æå ±ãè¿ãã¾ãããã®é¢æ° say ã¹ãã¼ãã¡ã³ãã®å®è¡ä¸­ã®ã¿å¼ã³åºããã¾ãã ç¾å¨ã®ãã¤ã¹ãããä¸åº¦åçã§ããå ´åã« true ãè¿ãã¾ãã :var:`config.voice_filename_format` å¤æ°ãä½¿ãã¨ãã¤ã¹ãã¡ã¤ã«ã®ååãã«ã¹ã¿ãã¤ãºã§ãããã£ã¬ã¯ããªã¼ã¨æ¡å¼µå­ãçç¥ã§ããããã«ãªãã¾ãã voice sustain ã¹ãã¼ãã¡ã³ãã¨ç­ä¾¡ã§ãã åçããããã¤ã¹ã®ãã¡ã¤ã«åãããã¡ã¤ã«ãåçããã¦ããªããªã None ã§ãã Ren'Py ãèªåãã¤ã¹ã®ããã«æ¢ãããã¡ã¤ã«åã§ãè¦ã¤ãããªããã° None ã§ãã åçãããã¡ã¤ã«ã®ååã§ãããã®å¤ã¯ :var:`config.voice_filename_format` ã¨ã¨ãã«ä½¿ç¨ããããã¨ã§ãåçããããã¡ã¤ã«ã®ååã¨ãªãã¾ãã ã¹ãã¬ããã·ã¼ãã®æåã®è¡ã¯ä½¿ç¨ããè­å¥å­ã§ãä»ã®è¡ã«ã¯å°è©ã®ããè©³ããæå ±ãè¼ãã¾ãã é³å£°ãã¡ã¤ã«ã®ãã«ãã¹ã§ãã è¿ããããªãã¸ã§ã¯ãã¯ä»¥ä¸ã®ãã£ã¼ã«ããæã¡ã¾ãã ãã¤ã¹ã¿ã°ã¯ãã©ã®ã­ã£ã©ã¯ã¿ã¼ãè©±ãã¦ããããæå®ããããã«ä½¿ãããåãã®ã­ã£ã©ã¯ã¿ã¼ã®ãã¤ã¹ããã¥ã¼ãã«ãããã©ãããã¦ã¼ã¶ã¼ãåãæ¿ããããããã«ãã¾ãã è©±ãã¦ããã­ã£ã©ã¯ã¿ã¼ã«ä¸ãããã voice_tag å¼æ°ã§ãã åã­ã£ã©ã¯ã¿ã¼ã®ããªã¥ã¼ã ãèª¿æ´åºæ¥ãããã«ãã¾ãã `volume` ã None ãªãã`voice_tag` ã®ããªã¥ã¼ã ã®å¤ãå¤æ´ãã value ãè¿ãã¾ããããã§ãªããã°ããã `volume` ã«è¨­å®ãã¾ãã ããã¯åè¡ã®å°è©ã«å¯¾å¿ããè­å¥å­ã¨ä¸è´ãããã¤ã¹ãã¡ã¤ã«ãä½æãã¦è¡ããã¾ããä½¿ç¨ããè­å¥å­ã®æ±ºå®ã«ã¯åãã©ã³ãã£ã¼ããã Extract Dialogue ããã Tab-delimited Spreadsheet (dialogue.tab) ããã Continue ããé¸æãã¦ã¹ãã¬ããã·ã¼ããä½æãã¾ããããã¯ã¹ãã¬ããã·ã¼ããã­ã°ã©ã ã§ã­ã¼ãå¯è½ãª dialogue.tab ãã¡ã¤ã«ãä½æãã¾ãã voice ãã£ã³ãã«ã§ `voice_tag` ã®ã­ã£ã©ã¯ã¿ã¼ãè©±ãããã« `sample` ãåçãã¾ãã Ren'Py ã§ãã¤ã¹ãèªåçã«åçãããã«ã¯ã:var:`config.auto_voice` ã« `{id}` ãå«ãæå­åãè¨­å®ãã¦ãã ãããå°è©ãè¡¨ç¤ºãããã¨ã`{id}` ãå°è©ã®è­å¥å­ã«ç½®ãæãããããã¡ã¤ã«åã¨ãªãã¾ãããã®ãã¡ã¤ã«åãè¦ã¤ããã°ãåçããã¾ãã `voice_tag` ã®ãã¥ã¼ãç¶æãåãæ¿ãã¾ããåºæ¬çã«ä¸ããããã¿ã°ããã¥ã¼ãã®ã¨ãã«é¸æç¶æã«ãªãã¾ããã `invert` ã true ã®å ´åã¯ãã¥ã¼ãã§ãªãæã«é¸æç¶æã«ãªãã¾ãã ãã¤ã¹ ãã¤ã¹ã®ã¢ã¯ã·ã§ã³ ãã¤ã¹ã®é¢æ° ãã¤ã¹ã¿ã° `filename` `sample` `tag` `volume` ã¯ 0.0 ãã 1.0 ã¾ã§ã®æ°å­ã§ã `voice` ãã£ã³ãã«ã«å¯¾ãããã­ãµã¼ããªã¥ã¼ã ã®å²ãåãã¨ãã¦è§£éããã¾ãã selected` 