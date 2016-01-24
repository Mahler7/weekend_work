# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 

# The Tv class will have the attributes: power, volume, and channel. 

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)

class Tv

  attr_accessor :power, :volume, :channel

  def initialize
    @power = "off"
    @volume = 0
    @channel = 0
  end

end

class Remote

  def initialize(tv)
    @tv = tv
  end

  def toggle_power
    if @tv.power == "on"
      @tv.power = "off"
    else
      @tv.power = "on"
    end
    #@tv.power == "on" ? @tv.power = "off" : @tv.power = "on" Alternative one line method
  end

  def increment_volume
    @tv.volume = @tv.volume + 1
  end

  def decrement_volume
    @tv.volume = @tv.volume - 1
  end

  def set_channel(station)
    @tv.channel = station
  end

end

puts "Testing..."
puts

tv = Tv.new
remote = Remote.new(tv)

puts "TV has power, volume and channel"
puts 

if tv.power == "off"
  puts "PASS"
else
  puts "F"
end

if tv.volume == 0
  puts "PASS"
else
  puts "F"
end

if tv.channel == 0
  puts "PASS"
else
  puts "F"
end

puts
puts "toggle_power..."
puts 

remote.toggle_power
if tv.power == "on"
  puts "PASS"
else
  puts "F"
end

remote.increment_volume
remote.increment_volume
remote.increment_volume
remote.increment_volume
remote.increment_volume
if tv.volume == 5
  puts "PASS"
else
  puts "F"
end

remote.decrement_volume
remote.decrement_volume
remote.decrement_volume
if tv.volume == 2
  puts "PASS"
else
  puts "F"
end

remote.set_channel(12)
if remote.set_channel == 12
  puts "PASS"
else
  puts "F"
end

