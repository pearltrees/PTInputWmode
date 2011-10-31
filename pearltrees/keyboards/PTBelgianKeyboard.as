package pearltrees.keyboards
{
   /**
   * Belgian Azerty Keyboard Fix
   * 
   * Based on the work of Hans Van de Velde (http://www.novio.be/blog/?p=416).
   * @see http://en.wikipedia.org/wiki/Keyboard_layout#Belgian
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
   public class PTBelgianKeyboard implements IPTKeyboard
   {
      public function getShiftChar(char:String, keyCode:int=-1):String {
         
         if(char == "<") return "?";
         if(char == "&") return "1";
         if(char == "é") return "2";
         if(char == '"')
         {
            switch(keyCode)
            {
               case 51:
                  return "3";
                  break;
               case 52:
                  return "4";
                  break;
               default:
                  return '"';
                  break;
            }
         }
         if(char == "(") return "5";
         if(char == "§") return "6";
         if(char == "è") return "7";
         if(char == "!") return "8";
         if(char == "ç") return "9";
         if(char == "à") return "0";
         
         if(char == ":") {
            switch(keyCode)
            {
               case 190:
                  return ".";
                  break;
               case 191:
                  return "/";
                  break;
               default:
            }
         } 
         
         switch(keyCode)
         {
            case 107:
               return "+";
               break;
         }
         
         return char;          
      }
      
      public function getAltGrChar(char:String, keyCode:int=-1):String {
         if(char == "é") return "@";
         if(char == "e") return "€";
         if(char == "$") return "€"; // for mac keyboard 
         
         return char;         
      }
      
      public function getChar(char:String, keyCode:int=-1):String {
         switch(keyCode) {
            case 107:
               return "=";
               break;
         }
         
         return char;         
      }
   }
}