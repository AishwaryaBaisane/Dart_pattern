import 'dart:io';

void main()
{
  // int n=4;
  int x=0;
 for(int i=1; i<5; i++)
 {
    x+=i;
  for(int j=x; j>x-i; j--)
  {
    stdout.write('${j} ');
   
  }
  for(int k=1; k<5; k++)
  {
     stdout.write(' ');
  }
  print('');
 }
}