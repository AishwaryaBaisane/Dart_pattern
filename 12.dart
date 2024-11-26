
import 'dart:io';

void main()
{
 int n =0;

  for(int i=1; i<=5; i++)
  {
    n=i;
    for(int j=1; j<=5; j++)
    {
  
      stdout.write('$n ');
        n+=5;
    }
  
    print('');
  }
}