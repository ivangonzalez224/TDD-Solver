class Solver
  def factorial(n)
    if n < 0
      raise ArgumentError, 'Argument must be positive'
    end
    if n == 0
      1
    else
      n * factorial(n - 1)
    end
  end

  def reverse(string)
    string.reverse
  end

  def fizzbuzz(n)
    if ((n % 3 == 0) && (n % 5 == 0))
      'fizzbuzz'
    end 
  end
end