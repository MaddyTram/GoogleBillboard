public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";
public void setup()
{
  double Num = 0;
  for (int i = 2; i < e.length()-10; i++) {
    String digit = e.substring(i, i+10);
    Num = Double.parseDouble(digit);
    if (isPrime(Num) == true) {
      String strNum = Num + " ";
      String beforeDec = strNum.substring(0, 1);
      String afterDec = strNum.substring(2, 11);
      System.out.println(beforeDec + afterDec);
      break;
    }
  }
}
  public void draw()
  {
    //not needed for this assignment
  }
  public boolean isPrime(double dNum)
  {
    if (dNum < 2) {
      return false;
    }
    for (int i = 2; i <= Math.sqrt(dNum); i++) {
      if (dNum % i == 0) {
        return false;
      }
    }
    return true;
  }

