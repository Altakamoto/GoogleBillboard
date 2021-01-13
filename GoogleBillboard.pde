public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup()  
{
  String answer = "filler";
  for(int i = 0; i < e.length(); i++)
  {
    String digits = e.substring(i + 2, i + 12);
    double dNum = Double.parseDouble(digits);
    if(isPrime(dNum)) {
      answer = Double.toString(dNum);
      break;
    }
       
  }
  String solution = "Answer: " + answer.substring(0, 1) + answer.substring(2, 10);
  System.out.println(solution);
}  
public void draw()  
{   
  //not needed for this assignment
}  
public boolean isPrime(double dNum)  
{   
    for(int i = 2; i < Math.sqrt(dNum); i++)
    {
      if(dNum % i == 0)
        return false;
    }
    return true;  
} 
