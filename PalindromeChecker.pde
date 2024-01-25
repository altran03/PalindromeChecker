public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  if (reverse(noCapitals(noSpaces(onlyLetters(word)))).equals(noCapitals(noSpaces(onlyLetters(word))))){
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for (int i = str.length()-1; i >=0; i--){
    sNew += str.substring(i,i+1);
  }
    return sNew;
}

public String noCapitals(String sWord){
  return sWord.toLowerCase();
}


public String noSpaces(String sWord){
  String nospace = "";
  for (int i = 0; i < sWord.length(); i ++){
    if(sWord.charAt(i) != ' '){
      nospace += sWord.charAt(i);
    }
  }
  return nospace;
}



public String onlyLetters(String sString){
  String letter = "";
  for (int i = 0; i < sString.length(); i++){
    if (Character.isLetter(sString.charAt(i))){
      letter+= sString.substring(i,i+1);
    }
  }
  return letter;
}
