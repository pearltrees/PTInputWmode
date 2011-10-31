package pearltrees.keyboards
{
	/**
	 * Hebrew QWERTY Keyboard Fix
	 * @date 19/04/2010
	 * @author Meir Rotstein
    * @see http://en.wikipedia.org/wiki/Keyboard_layout#Hebrew
	 * 
	 * How to create your own keyboard fix ?
	 * 
	 * 1) If you want to create a new keyboard for a specific language just 
	 *    create a class that implements IPTKeyboard.
	 * 
	 * 2) Go into PTInputWmode and add a line in the lang setter for your own keyboard.
	 *    (around line 115)
	 */ 
	public class PTHebrewKeyboard implements IPTKeyboard
	{
		private var _previousChar:String;
		
		public function getShiftChar(char:String, keyCode:int=-1):String {
			var rChar:String;
			
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
		
			if(keyCode == 81) 
			{ 
				rChar =  "/";
			}
			else if(keyCode == 87) 
			{ 
				rChar =  "'";
			}
			else if(keyCode == 69) 
			{ 
				rChar =  "ק";
			}
			else if(keyCode == 82)
			{ 
				rChar =  "ר";
			}                         
			else if(keyCode == 84)
			{
				rChar =  "א";
			}
			else if(keyCode == 89) 
			{
				rChar =  "ט";
			}
			else if(keyCode == 85) 
			{
				rChar =  "ו";
			}
			else if(keyCode == 73)
			{ 
				rChar =  "ן";
			}                         
			else if(keyCode == 79)
			{ 
				rChar =  "ם";
			}
			else if(keyCode == 80
			) { rChar =  "פ";
			}
			else if(keyCode == 65) 
			{ 
				rChar =  "ש";
			}
			else if(keyCode == 83)
			{ 
				rChar =  "ד";
			}                         
			else if(keyCode == 68) 
			{
				rChar =  "ג";
			}
			else if(keyCode == 70)
			{ 
				rChar =  "כ";
			}
			else if(keyCode == 71)
			{
				rChar =  "ע";
			}
			else if(keyCode == 72)
			{
				rChar =  "י";
			}                         
			else if(keyCode == 74)
			{
				rChar =  "ח";
			}
			else if(keyCode == 75)
			{
				rChar =  "ל";
			}
			else if(keyCode == 76)
			{
				rChar =  "ך";
			}
			else if(keyCode == 90)
			{
				rChar =  "ז";
			}                         
			else if(keyCode == 88)
			{
				rChar =  "ס";
			}
			else if(keyCode == 67)
			{
				rChar =  "ב";
			}
			else if(keyCode == 86)
			{
				rChar =  "ה";
			}
			else if(keyCode == 66)
			{
				rChar =  "נ";
			}                         
			else if(keyCode == 78)
			{
				rChar =  "מ";
			}
			else if(keyCode == 77)
			{
				rChar =  "צ";
			}
			else if(keyCode == 188)
			{
				rChar =  "ת";
			}                         
			else if(keyCode == 190)
			{
				rChar =  "ץ";
			}
			else if(keyCode == 191)
			{
				rChar =  ".";
			}  
			else if(keyCode == 222)
			{
				rChar =  ",";
			}
			if(!rChar) rChar = char;
			_previousChar = rChar;
			return rChar;         
		}
	}
}
