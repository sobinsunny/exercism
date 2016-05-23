class Complement
  VERSION = 3
  NUCLETOIDS = {
      :A=>"U",
      :T=>"A",
      :C=>"G",
      :G=>"C"
  }
  def self.of_dna(dna_string)
     raise ArgumentError if NUCLETOIDS.values_at(*(dna_string.chars.collect(&:to_sym))).include?(nil)
     dna_string.chars.map{|val| NUCLETOIDS[val.to_sym]}.join('')
  end

end