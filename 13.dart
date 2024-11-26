
import 'dart:io';

void main()
{
 int x =0;
 int y;
 int n=5;

  for(int i=1; i<=n; i++)
  {
    x=i;
    y=n-i+1;
    for(int j=1; j<=n; j++)
    {
     if(j%2==1)
     {
       stdout.write('$x ');
     }
     else{
       stdout.write('$y ');
     }
     x=x+n;
     y=y+n;
      
    }
  
    print('');
  }
}