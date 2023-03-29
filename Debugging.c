double debugging_a_bug()
{
  char a = -1;
  
  unsigned int divisor = 0;

    if(a<0u)
    {
      divisor = a;
    }

  return 20/divisor;
}

int main()
{
debugging_a_bug();
}
