double debugging_a_bug()
{
  char a = 6;
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
