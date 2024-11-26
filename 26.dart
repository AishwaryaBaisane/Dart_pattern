
import 'dart:io';

void main() {
 
  for (int i = 0; i < 5; i++) 
  {
    
    String character = String.fromCharCode(65 + i); 

    for (int j = 0; j < 5; j++) 
    {  
      stdout.write("$character ");
    }
    print(""); 
  }
}


//  A A A A A
//  B B B B B 
//  C C C C C 
//  D D D D D
//  E E E E E 