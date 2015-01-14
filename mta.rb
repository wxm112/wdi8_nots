
require 'pry'

# start = ['n', '8th']
# ending = ['n', 'time square']

line_n = ['time square', '34th', '28th', '23rd','union square', '8th']
line_l = ['8th', '6th', 'union square', '3rd', '1st']
line_6 = ['grand central', '33rd', '28th', '23rd', 'union square', 'astro place']

def rute(start, ending)
  line_n = ['time square', '34th', '28th', '23rd','union square', '8th']
  line_l = ['8th', '6th', 'union square', '3rd', '1st']
  line_6 = ['grand central', '33rd', '28th', '23rd', 'union square', 'astro place']
  if start[0] == ending[0]
    if start[0].downcase == "n" # n to n
      s_index = line_n.index(start[1])
      e_index = line_n.index(ending[1])
      if s_index < e_index
        stations = line_n[s_index..e_index]
        numbers = stations.count
        puts "There are #{numbers} stations: #{stations}."
      else
        stations = line_n[e_index..s_index]
        numbers = stations.count
        puts "There are #{numbers} stations: #{stations.reverse}."
      end

    elsif start[0].downcase == "l" # l to l
      s_index = line_l.index(start[1])
      e_index = line_l.index(ending[1])
      if s_index < e_index
        stations = line_l[s_index..e_index]
        numbers = stations.count
        puts "There are #{numbers} stations: #{stations}."
      else
        stations = line_l[e_index..s_index]
        numbers = stations.count
        puts "There are #{numbers} stations: #{stations.reverse}."
      end

    elsif start[0].downcase == "6" # 6 to 6
      s_index = line_6.index(start[1])
      e_index = line_6.index(ending[1])
      if s_index < e_index
        stations = line_6[s_index..e_index]
        numbers = stations.count
        puts "There are #{numbers} stations: #{stations}."
      else
        stations = line_6[e_index..s_index].reverse
        numbers = stations.count
        puts "There are #{numbers} stations: #{stations}."
      end
    else
      puts "There is no such line."
    end
  else
    if start[0].downcase == "n" # start from n
      s_index = line_n.index(start[1])
      u_n_index = line_n.index('union square')
      if s_index < u_n_index
        f_stations = line_n[s_index..u_n_index]
      else
        f_stations = line_n[u_n_index..s_index].reverse
      end
      if ending[0] == 'l' # from n to l
        e_index = line_l.index(ending[1])
        u_l_index = line_l.index('union square')
        if u_l_index < e_index
          l_stations = line_l[u_l_index..e_index]
          stations = (f_stations + l_stations).uniq
          numbers = stations.count
          puts "There are #{numbers} stations: #{stations}."
        else
          l_stations = line_l[e_index..u_l_index].reverse
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


rute(['n', '8th'],['n', 'time square'])
rute(['n', '28th'],['n', '8th'])
rute(['l', '8th'],['l', '1st'])
rute(['l', '1st'],['l', '8th'])
rute(['6', 'grand central'],['6', '23rd'])
rute(['6', 'astro place'],['6', '23rd'])
rute(['4','iii'],['4','858'])
rute(['n', '8th'],['l', '1st'])

binding.pry
