package pearltrees.keyboards
{
   /**
   * French Azerty Keyboard Fix
   * @see http://en.wikipedia.org/wiki/Keyboard_layout#French
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
   public class PTFrenchKeyboard implements IPTKeyboard
   {
      private var _previousChar:String;
      
      public function getShiftChar(char:String, keyCode:int=-1):String {
         var rChar:String;
         
         if(char == "<"){
            switch(keyCode)
            {
               case 188:
                  rChar =  "?";
                  break;
               case 226:
                  rChar =  ">";
                  break;
            }            
         }
         else if(char == "&") rChar =  "1";
         else if(char == "é") rChar =  "2";
         else if(char == '"')
         {
            switch(keyCode)
            {
               case 51:
                  rChar =  "3";
                  break;
               case 52:
                  rChar =  "4";
                  break;
               default:
                  rChar =  '"';
                  break;
            }
         }
         else if(char == "(") rChar =  "5";
         else if(char == "_") {
            switch(keyCode)
            {
               case 54:
                  rChar =  "6";
                  break;
               case 56:
                  rChar =  "8";
                  break;
               default:
                  rChar =  '_';
                  break;
            }            
         }
         else if(char == "è") rChar =  "7";
         else if(char == "!") rChar =  "8";
         else if(char == "ç") rChar =  "9";
         else if(char == "à") rChar =  "0";
         else if(char == "$") rChar =  "£";
         else if(char == "ù") rChar =  "%";
         
         else if(char == ":") {
            switch(keyCode)
            {
               case 190:
                  rChar =  ".";
                  break;
               case 191:
                  rChar =  "/";
                  break;
               default:
            }
         }else{        
            switch(keyCode)
            {
               case 107:
                  rChar =  "+";
                  break;
            }            
         } 
         
         if(!rChar) rChar = char;         
         _previousChar = rChar;
         return rChar;
      }
      
      public function getAltGrChar(char:String, keyCode:int=-1):String {
         var rChar:String;
         
         if(char == 'é') rChar =  "~";
         else if(char == '"') rChar =  "#";
         else if(char == "'") rChar =  "{";
         else if(char == '(') rChar =  "[";
         else if(char == '-') rChar =  "|";
         else if(char == 'è') rChar =  "`";
         else if(char == '_') rChar =  "\\";
         else if(char == 'ç') rChar =  "^";
         else if(char == "à") rChar =  "@";
         else if(char == ')') rChar =  "]";
         else if(char == '+') rChar =  "}";
         else if(char == "e") rChar =  "€";
         else if(char == "$") rChar =  "€"; // for mac keyboard 
         
         if(!rChar) rChar = char;  
         _previousChar = char;
         return rChar;         
      }
      
      public function getChar(char:String, keyCode:int=-1):String {
         var rChar:String;
         
         if(_previousChar == "^") {
            switch(char) {
               case "e":
                  rChar =  "ê";
                  break;
               case "a":
                  rChar =  "â";
                  break;
               case "o":
                  rChar =  "ô";
                  break;
               case "u":
                  rChar =  "û";
                  break;                         
               case "i":
                  rChar =  "î";
                  break;
               case "Ý":
                  rChar =  "^^";
                  break;
            }          
         }
         
         else if(char == "Ý") {
            _previousChar =  "^";
            return "";
         }
         else {
            switch(keyCode) {
               case 107:
                  rChar =  "=";
                  break;
            }
         }
         
         if(!rChar) rChar = char;
         _previousChar = rChar;
         return rChar;         
      }
   }
}