class Room

attr_accessor :room_no, :capacity, :entery_fee

def initialize(input_room_no, input_capacity, input_entry_fee)
  @room_no = input_room_no
  @capacity = input_capacity
  @entery_fee = input_entry_fee
  @songs = []
  @guests = []
end

def number_of_guests
  return @guests.size
end

def guest_checked_in(guest)
  #guest.@wallet -= @entery_fee
  @capacity -=1
  @guests.push(guest)
end

def guest_checked_out(guest)
  @capacity +=1
  @guests.pop
end

def add_song_to_room(song)
  @songs.push(song)
end

end
