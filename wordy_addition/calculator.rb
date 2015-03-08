class Calculator

  def ask(question)
    array = question.scan(/-?\d+/).map {|w| w.to_i}
    array.reduce(:+)
  end

end



# question.match(/What is (-?\d+) plus (-?\d+)?/) do |m|
#   m[1].to_i + m[2].to_i
# end