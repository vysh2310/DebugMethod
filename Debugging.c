double debugging_a_bug()
{
  char a = -1;
  
  unsigned int divisor = 0;

    if(a<0u)
    {
      divisor = a;      
    }

  return 100/divisor;
}
//Corrected the debugging_a_bug() function
int main()
{  
debugging_a_bug();
}
