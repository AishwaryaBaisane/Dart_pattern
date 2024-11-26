
import 'dart:io';

void main() {


  for (int i = 0; i < 5; i++) 
  {
 
    for (int j = 0; j < 5; j++) 
    {  
       String character = String.fromCharCode(65 + j); 
      stdout.write("$character ");
      
    }
   
    print(""); 
  }
}

//  A B C D E
//  A B C D E
//  A B C D E
//  A B C D E
//  A B C D E

