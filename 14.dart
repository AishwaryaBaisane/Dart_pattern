
import 'dart:io';

void main()
{
 int x =0;
 int y;
 int n=5;

  for(int i=1; i<=n; i++)
  {
    x= n-i+1;
    for(int j=1; j<=n; j++)
    {
       stdout.write('$x ');
       x=x+n;
    }
  
    print('');
  }
}