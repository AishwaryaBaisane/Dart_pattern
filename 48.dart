import 'dart:io';

void main()
{

  int z=1;
 for(int i=5; i>=1; i--)
 {
  int y=i;
  int x = z;
  for(int j=5; j>=i; j--)
  {
    stdout.write('${x} ');
   x=x-y;
   y++;
  }
  z=z+i;
  for(int k=1; k<5; k++)
  {
     stdout.write(' ');
  }
  print('');
 }
}