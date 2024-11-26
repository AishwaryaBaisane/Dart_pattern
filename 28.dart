
import 'dart:io';

void main() {
 
  for (int i = 0; i < 5; i++) 
  {
    
    String character = String.fromCharCode(69 - i); 

    for (int j = 0; j < 5; j++) 
    {  
      stdout.write("$character ");
    }
    print(""); 
  }
}


