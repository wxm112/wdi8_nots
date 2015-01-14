
require 'pry'

# start = ['n', '8th']
# ending = ['n', 'time square']

LINE_N = ['time square', '34th', '28th', '23rd','union square', '8th']
LINE_L = ['8th', '6th', 'union square', '3rd', '1st']
LINE_6 = ['grand central', '33rd', '28th', '23rd', 'union square', 'astro place']

LINES = { 'n' => LINE_N, 'l' => LINE_L, '6' => LINE_6 }

def route(start, ending)
  if start[0] == ending[0]
    line = LINES[start[0].downcase]

    if line.nil?
      puts "There is no such line: #{start[0]}"
      return nil
    else
      s_index = line.index(start[1])
      e_index = line.index(ending[1])
      if s_index < e_index
        return line[s_index..e_index]
      else
        return line[e_index..s_index].reverse
      end
    end

  else
    if start[0].downcase == "n" # start from n
      s_index = LINE_N.index(start[1])
      u_n_index = LINE_N.index('union square')
      if s_index < u_n_index
        f_stations = LINE_N[s_index..u_n_index]
      else
        f_stations = LINE_N[u_n_index..s_index].reverse
      end
      if ending[0] == 'l' # from n to l
        e_index = LINE_L.index(ending[1])
        u_l_index = LINE_L.index('union square')
        if u_l_index < e_index
          l_stations = LINE_L[u_l_index..e_index]
          return (f_stations + l_stations).uniq
        else
          l_stations = LINE_L[e_index..u_l_index].reverse
          return (f_stations + l_stations).uniq
        end
      end
    else
      puts "Waiting"
    end
  end
end

def test(expected, actual, test_name = nil)
	if expected != actual
		puts "Error: expected\n\t#{expected}\nbut got\n\t#{actual}"
		puts "in test '#{test_name}'" unless test_name.nil?
		puts ""
	end
end

test(["8th", "union square", "23rd", "28th", "34th", "time square"],
	route(['n', '8th'],['n', 'time square']),
	"test1")

test(["28th", "23rd", "union square", "8th"], route(['n', '28th'],['n', '8th']), "test2")

test(["8th", "6th", "union square", "3rd", "1st"], route(['l', '8th'],['l', '1st']), "test3")

test(["1st", "3rd", "union square", "6th", "8th"], route(['l', '1st'],['l', '8th']), "test4")

test(["grand central", "33rd", "28th", "23rd"], route(['6', 'grand central'],['6', '23rd']), "test5")

test(["astro place", "union square", "23rd"], route(['6', 'astro place'],['6', '23rd']), "test6")

test(nil, route(['4','iii'],['4','858']), "test7")

test(["8th", "union square", "3rd", "1st"], route(['n', '8th'],['l', '1st']), "test8")







 


