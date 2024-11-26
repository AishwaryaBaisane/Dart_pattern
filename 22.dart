
import 'dart:io';

void main()
{
 
 int n=5;

  for(int i=1; i<=n; i++)
  {
  
    for(int j=1; j<=n; j++)
    {
      //  stdout.write('${(i*j)%2} ');
    if(i%2!=0)
      {
        stdout.write('0 ');
      }
      else
      {
        
           stdout.write('1 ');
      
      }
    }
  
    print('');
  }
}