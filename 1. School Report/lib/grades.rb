class Grade
  attr_reader :number_green, :number_amber, :number_red
  def initialize
    @number_green = 0
    @number_amber = 0
    @number_red = 0
  end

  def grade_counter(string)
    array = string.split(", ")
    @number_green = array.count("Green")
    @number_amber = array.count("Amber")
    @number_red = array.count("Red")
    return "Green: #{@number_green}\nAmber: #{@number_amber}\nRed: #{@number_red}"
  end
end
