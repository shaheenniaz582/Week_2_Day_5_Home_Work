require('minitest/autorun')
require('minitest/reporters')
require_relative('../song')

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestSong < Minitest::Test

 def setup
   @song = Song.new(1, "ABC", "Jill" )
 end

 def test_can_create_song
   assert_equal(Song, @song.class())
 end

 def test_Song_song_id
   assert_equal(1, @song.song_id)
 end

 def test_Song_album
   assert_equal("ABC", @song.album)
 end

 def test_Song_singer_name
   assert_equal("Jill", @song.singer_name)
 end

end
