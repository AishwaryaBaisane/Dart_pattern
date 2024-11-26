import 'dart:io';

void main()
{
 for(int i=1; i<5; i++)
 {
  for(int j=1; j<=i; j++)
  {
    stdout.write('${(i+j)-1} ');
  }
  for(int k=1; k<5; k++)
  {
     stdout.write(' ');
  }
  print('');
 }
}