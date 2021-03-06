��          �      \      �     �     �     �     �     �  .   �  �   -  %   �  '   �  �        �     �  �   �    �  :   �  p   �  S   8  <   �  
   �  l  �     A     I     O     V     b  6   n  �   �  =   �	  @   �	  �   
  $        *  �   .  /  �  h     �   �  �   6  B   �  
   �                                                 
                                           	       "begin" "end" "show" "show_done" "slow_done" Called after showing each segment of dialogue. Called after slow text finishes showing. Note that this event may occur after "end", in cases where dialogue does not cause an interaction to occur. Called at the end of a say statement. Called at the start of a say statement. Called before showing each segment of dialogue. Dialogue may be separated into multiple segments by the {w} or {p} text tags, but always consists of at least one segment. Character Callbacks Example Other values of the positional argument and additional keyword arguments may be supplied in the future. The callback should written to ignore arguments it does not understand. Ren'Py includes the ability to execute callbacks when various events occur during dialogue. This is done by giving the `callback` argument to :func:`Character`, or setting the :var:`config.character_callback` or :var:`config.all_character_callbacks` variables. The callback is called with at least one keyword argument: The character callback is called with a single positional argument, the event that occured. Possible events are: This example plays beeps in place of a character voice, when slow text is enabled:: This is true if the dialogue causes an interaction to occur. `interact` Project-Id-Version: renpy-doc
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-08-04 18:15+0900
PO-Revision-Date: 2017-08-04 20:22+0900
Last-Translator: 
Language-Team: Japanese <ja@li.org>
Language: ja
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2014-06-21 06:27+0000
X-Generator: Poedit 1.5.7
 "begin" "end" "show" "show_done" "slow_done" 各セグメント表示後に呼び出されます。 スローテキストの表示が完了すると呼び出されます。このイベントは "end" の後に発生するかもしれませんが、その場合台詞はインタラクションを起こさないことに注意してください。 say ステートメントの終りに呼び出されます。 say ステートメントの開始時に呼び出されます。 台詞の各セグメント表示前に呼ばれます。台詞は {w} や {p} テキストタグで複数のセグメントに区切られている場合がありますが、少なくとも 1 つのセグメントがあります。 キャラクターコールバック 例 他の値の位置引数や追加のキーワード引数の値が将来渡されるかもしれません。コールバックは未知の引数は無視するようにするべきです。 Ren'Py は台詞中の様々なイベント発生時にコールバックを実行する機能があります。これは :func:`Character` に `callback` を指定するか、 :var:`config.character_callback` または :var:`config.all_character_callbacks` を設定することで行なわれます。 コールバックは少なくとも 1 つのキーワード引数を持って呼び出されます。 : キャラクターコールバックは一つの位置引数である発生したイベントで呼び出されます。起こりうるイベントは以下のものです。 : この例ではスローテキストが有効だとキャラクターボイスの代わりにビープ音をならします。 : 台詞がインタラクションを起こすなら True です。 `interact` 