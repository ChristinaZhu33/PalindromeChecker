  public void setup()
  {
    String lines[] = loadStrings("palindromes.txt");
    System.out.println("there are " + lines.length + " lines");
    //this string holds the modified string w/ no capital letters or non-letter characters
    String modified = "";
    for (int i=0; i < lines.length; i++) 
    {
      modified = noCapitals(onlyLetters(lines[i]));
      if(palindrome(modified)==true)
      {
        System.out.println(lines[i] + " IS a palindrome.");
      }
      else
      {
        System.out.println(lines[i] + " is NOT a palindrome.");
      }
    }
  }
  //check if the string is a palindrome
  public boolean palindrome(String word)
  {
    String sWord = (word);
  for(int i = 0; i < (sWord.length()/2); i++)
  {
    if((sWord.charAt(i))!=(sWord.charAt(word.length()-i-1)))
    {
      return false;
    }
  }
  return true;
  }
//no capitalized letters
  public String noCapitals(String sWord){
  return sWord.toLowerCase();
}
//only letters
 public String onlyLetters(String sWord){
     String s = new String();
  for(int i = 0; i < sWord.length(); i++){
    if(Character.isLetter(sWord.charAt(i)) == true){
      s = s + sWord.substring(i, i+1);
    }
  }
  return s;
 }
//reverse
public String reverse(String str)
  {
      String sNew = new String();
      //your code here
      for (int i =  str.length()-1; i >= 0; i--){
    sNew = sNew + str.substring(i, i+1);
  }
      return sNew;
  }
