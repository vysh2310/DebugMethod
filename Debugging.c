double debugging_a_bug()
{
  char a = 5;
  unsigned int divisor = 0;

    if(a<0u)
    {
      divisor = a;
    }

  return 100/divisor;
}

int main()
{
  debugging_a_bug();
}
