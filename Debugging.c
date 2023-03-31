double debugging_a_bug()
{
  char a = -1;
  
  char divisor = 0;

    while(a<0)
    {
      divisor = a;
      a++;
    }

  return divisor;
}
//Corrected the debugging_a_bug() function
int main()
{  
debugging_a_bug();
}
