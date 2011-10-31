package pearltrees.keyboards
{
   /**
   * Arabic QWERTY Keyboard Fix
   * @see http://www.abckeyboards.net/arabic_keyboard.html
   * @date 04/05/2009
   * @author Ahmad Adel Eldardiry (http://www.arabicode.com)
   * 
   * How to create your own keyboard fix ?
   * 
   * 1) If you want to create a new keyboard for a specific language just 
   *    create a class that implements IPTKeyboard.
   * 
   * 2) Go into PTInputWmode and add a line in the lang setter for your own keyboard.
   *    (around line 115)
   */ 
   public class PTArabicKeyboard implements IPTKeyboard
   {
      private var _previousChar:String;
      
      public function getShiftChar(char:String, keyCode:int=-1):String {
         var rChar:String;
         
         switch(char)
		 {
			case "ذ":
				rChar =  "ّ";
                break;
			case "Q":
				rChar =  "َ";
                break;
            case "W":
				rChar =  "ً";
                break;
            case "E":
				rChar =  "ُ";
                break;
            case "R":
				rChar =  "ٌ";
                break;                         
            case "T":
				rChar =  "لإ";
                break;
            case "Y":
				rChar =  "إ";
                break;
			case "U":
				rChar =  "‘";
                break;
            case "I":
				rChar =  "÷";
                break;                         
            case "O":
				rChar =  "×";
                break;
            case "P":
				rChar =  "؛";
                break;
			case "A":
				rChar =  "ِ";
                break;
            case "S":
				rChar =  "ٍ";
                break;                         
            case "D":
				rChar =  "]";
                break;
            case "F":
				rChar =  "[";
                break;
			case "G":
				rChar =  "لأ";
                break;
            case "H":
				rChar =  "أ";
                break;                         
            case "J":
				rChar =  "ـ";
                break;
            case "K":
				rChar =  "،";
                break;
			case "L":
				rChar =  "/";
                break;
            case "Z":
				rChar =  "~";
                break;                         
            case "X":
				rChar =  "ْ";
                break;
            case "C":
				rChar =  "}";
                break;
			case "V":
				rChar =  "{";
                break;
            case "B":
				rChar =  "لآ";
                break;                         
            case "N":
				rChar =  "آ";
                break;
            case "M":
				rChar =  "’";
                break;
         }
		 
		 switch(keyCode)
		 {
			case 187:
				// +
				rChar =  "=";
				break;
			case 219:
				rChar =  "<";
				break;
			case 221:
				rChar =  ">";
				break;
			case 186:
				rChar =  ":";
				break;
			case 222:
				rChar =  '"';
				break;
			case 188:
				rChar =  ",";
				break;
			case 190:
				rChar =  ".";
				break;
			case 191:
				rChar =  "؟";
				break;
		 }		 
         
         if(!rChar) rChar = char;         
         _previousChar = rChar;
         return rChar;
      }
      
      public function getAltGrChar(char:String, keyCode:int=-1):String {
         _previousChar = char;
         return char;
      }
      
      public function getChar(char:String, keyCode:int=-1):String {
         var rChar:String;
         switch(char) {
			case "q":
				rChar =  "ض";
                break;
            case "w":
				rChar =  "ص";
                break;
            case "e":
				rChar =  "ث";
                break;
            case "r":
				rChar =  "ق";
                break;                         
            case "t":
				rChar =  "ف";
                break;
            case "y":
				rChar =  "غ";
                break;
			case "u":
				rChar =  "ع";
                break;
            case "i":
				rChar =  "ه";
                break;                         
            case "o":
				rChar =  "خ";
                break;
            case "p":
				rChar =  "ح";
                break;
			case "a":
				rChar =  "ش";
                break;
            case "s":
				rChar =  "س";
                break;                         
            case "d":
				rChar =  "ي";
                break;
            case "f":
				rChar =  "ب";
                break;
			case "g":
				rChar =  "ل";
                break;
            case "h":
				rChar =  "ا";
                break;                         
            case "j":
				rChar =  "ت";
                break;
            case "k":
				rChar =  "ن";
                break;
			case "l":
				rChar =  "م";
                break;
            case "z":
				rChar =  "ئ";
                break;                         
            case "x":
				rChar =  "ء";
                break;
            case "c":
				rChar =  "ؤ";
                break;
			case "v":
				rChar =  "ر";
                break;
            case "b":
				rChar =  "لا";
                break;                         
            case "n":
				rChar =  "ى";
                break;
            case "m":
				rChar =  "ة";
                break;
         }
		 
		 if(keyCode == 187)
		 {
			// +
			rChar =  "=";
		 }
         
         if(!rChar) rChar = char;
         _previousChar = rChar;
         return rChar;         
      }
   }
}
