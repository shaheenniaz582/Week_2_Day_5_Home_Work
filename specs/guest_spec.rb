require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

require_relative('../guest.rb')


class TestGuest < Minitest::Test

  def setup
    @guest = Guest.new("Jim", 20)
  end

  def test_can_create_Guest
    assert_equal(Guest, @guest.class())
  end

  def test_Guest_name
    assert_equal("Jim", @guest.name())
  end

  def test_Guest_wallet
    assert_equal(20, @guest.wallet())
  end

end
