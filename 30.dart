import 'dart:io';

void main()
{
  int n=65;
  for (int i = 0; i < 5; i++) 
  {
 
    for (int j = 0; j < 5; j++) 
    {  
       String character = String.fromCharCode(n++); 
      stdout.write("$character ");
      
    }
   
    print(""); 
  }
}