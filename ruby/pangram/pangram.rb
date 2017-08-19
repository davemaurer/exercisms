class Pangram
  def self.pangram?(phrase)
    letters = phrase.chars.map(&:downcase)
    ('a'..'z').all? { |letter| letters.include?(letter) }
  end
end

module BookKeeping
  VERSION = 4
end
