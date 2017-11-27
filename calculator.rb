=begin
Zaprojektuj i zaimplementuj klasę kalkulator tak aby zadziałał poniższy kod. 
W komentarzach przy każdej linijce jest opisany wynik jaki ma wypisać dana metoda pozastosowaniu na niej puts:
=end

class Calculator
  attr_accessor :name
 attr_reader :result
  def initialize (name)
    @name = name
    @result = result
  end
  
  

   def add(number)
    @result =  @result + number
  end

  def substract(number)
    @result =  @result - number
  end
  def multiply(number)
    @result =  @result * number
  end
  def divide(number)
    @result =  @result / number
  end
  
  def clear
    @result = 0
  end
  def change_sign
   @result = - result
  end
  def print_history
  end

end






calculator = Calculator.new("CASIO")
puts calculator.name # prints CASIO

calculator.add(2)
#calculator.add(3)
#puts calculator.result # prints 5
=begin
calculator.add(10)
puts calculator.result # prints 15
calculator.clear # set result to 0
puts calculator.result # prints 0
calculator.subtract(20)
puts calculator.result # prints -20
calculator.multiply(3)
puts calculator.result # prints -60
calculator.divide(4)
puts calculator.result # prints -15
calculator.change_sign
puts calculator.result # prints 15
calculator.print_history 
# prints entire history
# add 2 (result: 2)
# add 3 (result: 5)
# add 10 (result: 15)
# clear (result: 0)
# subtract 20 (result: -20)
# multiply 3 (result: -60)
# divide 4 (result: -15)
# change_sign (result: 15)
=end