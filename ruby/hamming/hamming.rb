class Hamming
  VERSION = 1

  def self.compute(strand_one, strand_two)
    distance = 0
    collection_one = strand_one.chars
    collection_two = strand_two.chars
    check_equal_strands(collection_one, collection_two)
    collection_one.each_with_index do |el, idx|
      distance += 1 unless el == collection_two[idx]
    end
    distance
  end

  def self.check_equal_strands(collection_one, collection_two)
    raise ArgumentError unless collection_one.length == collection_two.length
  end
end
