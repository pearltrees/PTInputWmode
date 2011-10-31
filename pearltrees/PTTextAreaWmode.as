package pearltrees
{
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.TextEvent;
   
   import mx.controls.TextArea;

   /**
   * Wmode Workaround for TextArea
   * 
   * @author nicolas.cynober@pearltrees.com
   * @see http://nicolas.cynober.fr/blog/
   */
   public class PTTextAreaWmode extends TextArea
   {
      protected var _forceLang:String;
      protected var _inputWmode:PTInputWmode;
           
      public function PTTextAreaWmode() {
         super();
         if(PTInputWmode.WORKAROUND_ENABLED) {
            addEventListener(KeyboardEvent.KEY_UP, onKeyUp);
            addEventListener(KeyboardEvent.KEY_DOWN, onKeyDown);
            addEventListener(TextEvent.TEXT_INPUT, onTextInput); 
            addEventListener(FocusEvent.FOCUS_IN, onFocusIn);
         }
      }
      
      override protected function createChildren():void{
         super.createChildren();
         if(PTInputWmode.WORKAROUND_ENABLED) {
            _inputWmode = new PTInputWmode(textField);
            if(_forceLang) _inputWmode.lang = _forceLang;
         }
      }  
      
      // Replace character input ----------------------------------------------
      
      protected function onTextInput(event:TextEvent):void {
      	 if(_inputWmode) text = _inputWmode.getUpdatedText(event, textField);
      }
      
      // Key states  ----------------------------------------------------------
      
      private function onFocusIn(event:FocusEvent):void{
         if(_inputWmode) _inputWmode.resetModifierKeyState();
      }           
      private function onKeyUp(kEvent:KeyboardEvent):void {
         if(_inputWmode) _inputWmode.updateModifierKeyState(kEvent.keyCode, false);
      }      
      private function onKeyDown(kEvent:KeyboardEvent):void {
         if(_inputWmode) _inputWmode.updateModifierKeyState(kEvent.keyCode, true);        
         if(_inputWmode) _inputWmode.currentKeyCode = kEvent.keyCode;
      }
      
      // Options --------------------------------------------------------------
      
      public function set forceLang(value:String):void {
         _forceLang = value;
         if(_inputWmode) _inputWmode.lang = _forceLang;
      }
      public function get forceLang():String {
         return _forceLang;
      }       

   }
}