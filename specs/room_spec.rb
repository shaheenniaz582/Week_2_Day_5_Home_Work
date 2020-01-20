require('minitest/autorun')
require('minitest/reporters')
require_relative('../room')
require_relative('../guest')
require_relative('../song')

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestRoom < Minitest::Test

 def setup
   @song1 = Song.new(1, "ABC", "XYZ")
   @room1 = Room.new(1, 10, 10)
   @guest1 = Guest.new("Jack", 18)
   @guest2 = Guest.new("Jill", 20)
   @guest3 = Guest.new("Jim",22)
   @guest4 = Guest.new("Jan",2)

 end

 def test_can_create_room
   assert_equal(Room, @room1.class() )
 end

 def test_Room_room_no
   assert_equal(1, @room1.room_no)
 end

 def test_Room_capacity
   assert_equal(10, @room1.capacity)
 end

 def test_Room_entery_fee
   assert_equal(10, @room1.entery_fee)
 end

 def test_guest_checked_in

   @room1.guest_checked_in(@guest1)
   assert_equal(9, @room1.capacity)
   assert_equal(1, @room1.number_of_guests )

 end

 def test_guest_checked_out

   @room1.guest_checked_out(@guest1)
   assert_equal(11, @room1.capacity)
   assert_equal(0, @room1.number_of_guests)
 end

 def test_guest_add_song_to_room

   @room1.add_song_to_room(@song1)
   assert_equal(1, @song1.song_id)
   assert_equal("ABC", @song1.album)
   assert_equal("XYZ", @song1.singer_name)
 end
end
