
import 'dart:io';

void main()
{
  int n=1;

  for(int i=1; i<=5; i++)
  {
    for(int j=1; j<=5; j++)
    {
      stdout.write('$n ');
      n+=2;
    }
    print('');
  }
}