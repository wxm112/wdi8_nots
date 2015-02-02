require 'pry'
class CasearCipher

  alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.chars
  shifted_alphabet = CasearCipher.shift(alphabet,3)
  HASH = CasearCipher.create_hash(alphabet,shifted_alphabet)


  def self.create_hash(alphabet, shifted_alphabet)
    hash = []
    alphabet.each_index {|i| hash << [shifted_alphabet[i],alphabet[i]]}
    Hash[hash]
  end

  def self.shift(alphabet,shift_parameter)
    alphabet.rotate(shift_parameter)
  end


  def self.mapping(array)
    array.map do |a|
      a.map do |l|
        HASH[l]
      end
    end
  end

  def self.encode(string)
    array = string.split.map {|w| w.chars}
    CasearCipher.mapping(array).map {|a| a.join}.join(" ")
  end
end

p CasearCipher.encode('TWO SYMBOLS KISSING EACH OTHER')
p CasearCipher.encode('MY NAME IS MAY')

binding.pry


"QTL PVJYLIP HFPPFKD BXZE LQEBO"
"JV KXJB FP JXV"
