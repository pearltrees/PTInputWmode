package pearltrees.keyboards
{
	/**
	 * Polish QWERTY Keyboard Fix
	 * @see http://www.abckeyboards.net/arabic_keyboard.html
	 * @date 04/05/2009
	 * @author Ryszard Chrystyniak (http://www.riafreaks.com/)
	 * 
	 * How to create your own keyboard fix ?
	 * 
	 * 1) If you want to create a new keyboard for a specific language just 
	 *    create a class that implements IPTKeyboard.
	 * 
	 * 2) Go into PTInputWmode and add a line in the lang setter for your own keyboard.
	 *    (around line 115)
	 */ 
	public class PTPolishKeyboard implements IPTKeyboard
	{
		public function getShiftChar(char:String, keyCode:int=-1):String {
			return char;
		}
		
		public function getAltGrChar(char:String, keyCode:int=-1):String {
			var rChar : String;

			switch (char)
			{
				case 'a':
					rChar = 'ą';
					break;
				case 'c':
					rChar = 'ć';
					break;
				case 'e':
					rChar = 'ę';
					break;
				case 'l':
					rChar = 'ł';
					break;
				case 'n':
					rChar = 'ń';
					break;
				case 'o':
					rChar = 'ó';
					break;
				case 's':
					rChar = 'ś';
					break;
				case 'x':
					rChar = 'ź';
					break;
				case 'z':
					rChar = 'ż';
					break;
				
				case 'A':
					rChar = 'Ą';
					break;
				case 'C':
					rChar = 'Ć';
					break;
				case 'E':
					rChar = 'Ę';
					break;
				case 'L':
					rChar = 'Ł';
					break;
				case 'N':
					rChar = 'Ń';
					break;
				case 'O':
					rChar = 'Ó';
					break;
				case 'S':
					rChar = 'Ś';
					break;
				case 'X':
					rChar = 'Ź';
					break;
				case 'Z':
					rChar = 'Ż';
					break;
			}
			
			if ( rChar == null ) rChar = char;
			return rChar;
		}
		
		public function getChar(char:String, keyCode:int=-1):String {
			return char;         
		}
	}
}
