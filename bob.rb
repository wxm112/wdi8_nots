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

def convert_to_number(conversation)
  conversation.tr('aeio','4310')
end


def letter?(lookAhead)
  lookAhead =~ /[[:alpha:]]/
end

def char_array(sentence)
  sentence.split.map {|w| w.chars}
end

def alter_case(array)
  array.map do |str|
    str.each_with_index.map do |val, index|
      (index.odd? and letter?(str[index-1])) ? val.upcase : val
    end
  end
end

def p34k(conversation)
  letter_array = char_array(convert_to_number(conversation).downcase)
  alter_case(letter_array).map {|a| a.join}.join(" ")
end

loop do
  print "Say something to Bob: "
  chat(gets.chomp)
end
