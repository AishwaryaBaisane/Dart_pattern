
import 'dart:io';

void main()
{
 
 int n=5;

  for(int i=0; i<=n; i++)
  {
  
    for(int j=0; j<n; j++)
    {
       stdout.write('${(i+j)%2} ');
    }
  
    print('');
  }
}