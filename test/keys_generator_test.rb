require './lib/keys_generator'
require 'minitest/autorun'
require 'minitest/pride'

class KeysGeneratorTest < MiniTest::Test

  def test_it_exists
    keys = KeysGenerator.new

    assert_instance_of KeysGenerator, keys
  end

  def test_it_starts_with_no_keys

    keys = KeysGenerator.new
    expected = {A: 0, B: 0, C: 0, D: 0}
    assert_equal expected, keys.keys
  end

end
