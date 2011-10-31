package pearltrees.keyboards
{
   /**
   * Swiss quertz Keyboard Fix
   * Note that this fixed the Swiss French version.
   * @see http://en.wikipedia.org/wiki/Keyboard_layout#Swiss_German.2C_Swiss_French.2C_Swiss_Italian.2C_Liechtenstein.2C_Luxembourg
   * @date 24/12/2008
   * 
   * How to create your own keyboard fix ?
   * 
   * 1) If you want to create a new keyboard for a specific language just 
   *    create a class that implements IPTKeyboard.
   * 
   * 2) Go into PTInputWmode and add a line in the lang setter for your own keyboard.
   *    (around line 115)
   * 
   * @author nicolas.cynober@pearltrees.com
   * @see http://nicolas.cynober.fr/blog/
   */    
   public class PTSwissKeyboard implements IPTKeyboard
   {
      private var _previousChar:String;
      
      public function getShiftChar(char:String, keyCode:int=-1):String {
         var rChar:String;
         
         if(char == "!") rChar = "+";
         else if(char == "@") rChar = "«";
         else if(char == "#") rChar = "*";
         else if(char == "$") {
            switch(keyCode) {
               case 52:
                  rChar =  "ç";
                  break;
               case 223:
                  rChar =  "£";
                  break;
            }           
         }
         else if(char == "&") rChar = "/";
         else if(char == "*") rChar = "(";
         else if(char == "(") rChar = ")";
         else if(char == ")") rChar = "=";
         else if(char == '"') rChar = "?";
         else if(char == "é") rChar = "ö";
         else if(char == "À") rChar = "!";
         else if(char == "<") {
            switch(keyCode) {
               case 188:
                  rChar =  ";";
                  break;
               case 226:
                  rChar =  ">";
                  break;
            }
         }
         
         if(!rChar) rChar = char;         
         _previousChar = rChar;
         return rChar;
      }
      
      public function getAltGrChar(char:String, keyCode:int=-1):String {
         var rChar:String;
         
         if(char == "2") rChar =  "@";
         else if(char == "Ý") rChar =  "~";
         else if(char == "À") rChar =  "]";
         else if(char == "$") rChar =  "}";
         
         if(!rChar) rChar = char;  
         _previousChar = char;
         return rChar;         
      }
      
      public function getChar(char:String, keyCode:int=-1):String {
         var rChar:String;

         if(char == "") rChar =  "°"; // "ü seams also to be returned with the same keycode 18"
         else if(char == "à") rChar =  "ä";
         else if(char == "è") rChar =  "ü";
         else if(char == "") rChar =  ":";                 
         
         if(!rChar) rChar = char;
         _previousChar = rChar;
         return rChar;         
      }
   }
}