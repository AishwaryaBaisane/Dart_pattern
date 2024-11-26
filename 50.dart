import 'dart:io';

void main()
{

int  x= 1;
int y = 5;
 for(int i=5; i>=1; i--)
 {
  int t1=x;
  int t2 =y;
  int r1 = i;
  int r2 = i +1;
  for(int j=5; j>=i; j--)
  {
   if((i+j)%2 ==1)
   {
     stdout.write('$t1 ');
   }
   else
   {
     stdout.write('$t2 ');
   }
   t1 = t1 -r1++;
   t2 = t2 -r2++;
   
  }
  y =y +i-1;
  x = x+i;
  for(int k=1; k<5; k++)
  {
     stdout.write(' ');
  }
  print('');
 }
}