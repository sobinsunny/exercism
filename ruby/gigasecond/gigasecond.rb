require 'time'

class Gigasecond
  VERSION = 1

  def self.from(time)
    raise ArgumentError, 'Invalid time format' unless time.respond_to?(:to_time)
    time.to_time + 10**9
  end
end