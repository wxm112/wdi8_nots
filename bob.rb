require 'pry'


def chat(conversation)
  if conversation.start_with?("Bro")
    bro = conversation.split[0]
    rest = conversation.split[1..-1].join(" ")
    puts bro + " " + p34k(rest)
  elsif question?(conversation)
    puts "Sure"
  elsif conversation.empty?
    puts "Fine. Be that way! "
  elsif yell?(conversation)
    puts "Woah, chill out!"
  else
    puts "Whatever"
  end
end

def question?(conversation)
  conversation.include?('?')
end

def yell?(conversation)
  conversation.length > 0 and conversation == conversation.upcase
end






def number(conversation)
  conversation.tr('aeio','4310')
end


def letter?(lookAhead)
  lookAhead =~ /[[:alpha:]]/
end

def char_array(centence)
  word_array = centence.split
  char_array = []
  word_array.each {|w| char_array << w.chars}
  char_array
end

def alter_case(array)
  array.map do |i|
    if a.index(i).odd? and letter?(a[a.index(i)-1]) == 0
      i.upcase
    else
      i
    end
  end
end

def p34k(conversation)
  downcase = number(conversation).downcase
  letter_array = char_array(downcase)
  letter_array.each do |a|
    a.map! do |i|
      if a.index(i).odd? and letter?(a[a.index(i)-1])
        i.upcase
      else
        i
      end
    end
  end
  letter_array.map! {|a| a.join}
  letter_array.join(" ")
end




loop do
  print "Say something to bob: "
  conversation = gets.chomp
  chat(conversation)
end


binding.pry
