require 'pry'
class Triangle
  attr_accessor :side_one, :side_two, :side_three
  
  def initialize (one, two, three)
    @side_one = one 
    @side_two = two 
    @side_three = three
  end 
  
  def kind 
    #binding.pry
    raise TriangleError
    if @side_one == @side_two && @side_two == @side_three
      return :equilateral
    elsif @side_three == @side_one || @side_three == @side_two || @side_one == @side_two
      return :isosceles
    elsif @side_one > 0 && @side_two > 0 && @side_three > 0 
      return :scalene
    elsif @side_one <= 0 || @side_two <= 0 || @side_three <= 0 
      begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
    end 
  end 
  
  class TriangleError < StandardError
    def message
      "a triangle can't have a side with a legnth of 0 or negative"
    end 
  end
  
end
