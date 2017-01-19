public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String rWord = new String();
  for(int x=0; x<word.length(); x++)
  {
      if(word.charAt(x) == ' ')
      {
         word = word.substring(0,x) + word.substring(x+1);
      }
  }  
  for(int y=0; y<word.length(); y++)
  {
    char x = word.charAt(y);
    if(Character.isLetter(x) == false)
    {
      word = word.substring(0,y) + word.substring(y+1);
    }
  }
  word = word.toLowerCase();
  for(int i=word.length()-1; i>=0; i--)
  {
    rWord = rWord + word.charAt(i);
  }
  if(word.equals(rWord))
  {
    return true;
  }
  return false;
}

public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length(); i > 0; i--)
    {
      str += str.substring(i-1, i);
    }
    //your code here
    return sNew;
}


