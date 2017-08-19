class Complement
  VERSION = 3
  @key = {G: 'C', C: 'G', T: 'A', A: 'U'}

  def self.of_dna(string)
    separate_dna(string)
  end

  def self.separate_dna(string)
    transform_dna(string).join
  end

  def self.transform_dna(string)
    collect_letters(string).map { |letter| @key[letter.to_sym] }
  end

  def self.collect_letters(string)
    collection = string.chars
    check_validity(collection)
    collection
  end

  def self.check_validity(collection)
    raise(ArgumentError) unless collection - @key.keys.map(&:to_s) == []
  end
end
