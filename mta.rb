
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
    else
      s_index = line.index(start[1])
      e_index = line.index(ending[1])
      if s_index < e_index
        stations = line[s_index..e_index]
        numbers = stations.count
        puts "There are #{numbers} stations: #{stations}."
      else
        stations = line[e_index..s_index]
        numbers = stations.count
        puts "There are #{numbers} stations: #{stations.reverse}."
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
          stations = (f_stations + l_stations).uniq
          numbers = stations.count
          puts "There are #{numbers} stations: #{stations}."
        else
          l_stations = LINE_L[e_index..u_l_index].reverse
          stations = (f_stations + l_stations).uniq
          numbers = stations.count
          puts "There are #{numbers} stations: #{stations}."
        end
      end
    else
      puts "Waiting"
    end
  end
end


route(['n', '8th'],['n', 'time square'])
route(['n', '28th'],['n', '8th'])
route(['l', '8th'],['l', '1st'])
route(['l', '1st'],['l', '8th'])
route(['6', 'grand central'],['6', '23rd'])
route(['6', 'astro place'],['6', '23rd'])
route(['4','iii'],['4','858'])
route(['n', '8th'],['l', '1st'])

