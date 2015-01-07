//Vivian Lam, AP CS 6/7, Pig Latin
import java.util.*;

public void setup() {
	String lines[] = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) {
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
  String temp="aeiou";
  for(int i=0; i<sWord.length(); i++)
  for(int j=0; j<temp.length(); j++)
  if(sWord.substring(i,i+1).equals(temp.substring(j,j+1)))
  return i;  
  return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	String qu="qu";
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	else if(findFirstVowel(sWord) == 0)
	{
		return sWord + "way";
	}
	else if(sWord.substring(0,1).equals(qu.substring(0,1)))
	{
		return sWord.substring(2)+"quay";
	}
	else if(findFirstVowel(sWord)>0)
	{
		return sWord.substring(findFirstVowel(sWord))+sWord.substring(0,findFirstVowel(sWord))+"ay";
	}
	else
	{
		return "ERROR!";
	}
}
//
