package pearltrees.keyboards
{
   /**
   * German Qwertz Keyboard Fix
   * @see http://en.wikipedia.org/wiki/Keyboard_layout#Germany_and_Austria_.28but_not_Switzerland.29
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
   public class PTGermanKeyboard implements IPTKeyboard
   {
      private var _previousChar:String;
      
      public function getShiftChar(char:String, keyCode:int=-1):String {
         var rChar:String;
         
         if(char == "@") rChar = '"';
         else if(char == "#"){
            switch(keyCode)
            {
               case 9:
                  rChar =  "§";
                  break;
               default:
                  rChar =  "'";
                  break;
            }         	
         }
         else if(char == "^"){
            switch(keyCode)
            {
               case 54:
                  rChar =  "&";
                  break;
               default:
                  rChar =  "°";
                  break;
            }          	
         }
         else if(char == "&") rChar = "/";
         else if(char == "*") rChar = "(";
         else if(char == "(") rChar = ")";
         else if(char == ")") rChar = "=";
         else if(char == "ß") rChar = "?";
         else if(char == "´") rChar = "`";
         else if(char == "ö") rChar = "Ö";
         else if(char == "+") rChar = "*";
         else if(char == ">") rChar = ":";
         else if(char == "<") rChar = ";";
         
         if(!rChar) rChar = char;         
         _previousChar = rChar;
         return rChar;
      }
      
      public function getAltGrChar(char:String, keyCode:int=-1):String {
         var rChar:String;
         
         if(char == "q") rChar = "@";
         else if(char == "e") rChar = "€";
         
         if(!rChar) rChar = char;  
         _previousChar = char;
         return rChar;         
      }
      
      public function getChar(char:String, keyCode:int=-1):String {
         var rChar:String;
         
         if(char == "ä") rChar = "Ä";
         else if(char == "ü") rChar = "Ü";
         
         if(!rChar) rChar = char;
         _previousChar = rChar;
         return rChar;         
      }
   }
}