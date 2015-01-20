

loop do 
    puts "Please say something to Grandma: "
    answer = gets.chomp
    unless answer.empty?
        if answer == answer.upcase && answer != "BYE"
            puts "Grandma: NO, NOT SINCE 1938."
        elsif answer == "BYE"
            puts "Please say something to Grandma: "
            answer = gets.chomp
            if answer == "BYE"
                puts "Please say something to Grandma: "
                answer = gets.chomp
                if answer == "BYE"
                        break
                end
            end
        else 
            puts "Grandma: HUH?! SPEAK UP, SONNY!"
        end
    end
end