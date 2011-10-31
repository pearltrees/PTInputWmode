package pearltrees.keyboards
{
   /**
   * Keyboard interface
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
   public interface IPTKeyboard {
      
      function getShiftChar(char:String, keyCode:int=-1):String;
      function getAltGrChar(char:String, keyCode:int=-1):String;
      function getChar(char:String, keyCode:int=-1):String;
   }
}