class Gigasecond
  VERSION = 1

  def self.from(date_and_time)
    seconds = date_and_time.to_i + 1000000000
    Time.at(seconds)
  end
end
