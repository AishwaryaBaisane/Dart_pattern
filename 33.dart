import 'dart:io';

void main()
{
  int n = 90;
  for (int i = 1; i <=5; i++) 
  {
    n = 90-i;
    for (int j = 0; j < 5; j++) 
    {  
       String character = String.fromCharCode(n); 
       stdout.write("$character ");
       n -=5;
    }
    print(""); 
  }
}

