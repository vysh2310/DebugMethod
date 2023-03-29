double debugging_a_bug()
{
  char a = -1;
  
  char divisor = 0;

    while(a<0)
    {
      divisor = a;
      a++;
    }

  return 105/divisor;
}

int main()
{
debugging_a_bug();
}
