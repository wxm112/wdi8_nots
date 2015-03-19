require 'pry'
class WordProblem
  def initialize( question )
    @question = question
  end

  def answer
    if matches.nil?
      raise ArgumentError.new "I don't understand"
    end
    @answer = @matches[1].to_i.send( operation(2), @matches[3].to_i )
    if chain?
      @answer = @answer.send( operation(5), @matches[6].to_i )
    end
    @answer
  end

  def matches
    @matches = @question.match(/What is (-?\d+) (plus|minus) (-?\d+)( (plus|minus) (-?\d+))?\?/)
  end

  def chain?
    @matches[4]
  end

  def operation(number)
    case @matches[number]
      when 'plus' then :+
      when 'minus' then :-
      when 'multiplied by' then :*
      when 'divided by' then :/
    end
  end

end
# class WordProblem

#   def initialize(question)
#     @question = question
#   end

#   def answer
#     if matches.nil?
#       raise ArgumentError.new "I don't understand"
#     end
#     @answer = @matches[1].to_i.send( operation(2), @matches[3].to_i )
#     if chain?
#       @answer = @answer.send( operation(5), @matches[6].to_i )
#     end
#   end

#   private
#   def matches
#     @matches = @question.match(/What is (-?\d+) (plus|minus) (-?\d+)( (plus|minus) (-?\d+))?\?/)
#   end

#   def operation(number)
#     case @matches[number]
#       when 'plus' then :+
#       when 'minus' then :-
#       when 'multiplied by' then :*
#       when 'divided by' then :/
#     end
#   end

#   def chain
#     @matches[4]
#   end

# end