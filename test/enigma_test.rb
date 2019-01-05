require 'simplecov'
SimpleCov.start
require 'pry'
require 'date'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'

class EnigmaTest < MiniTest::Test

  def setup
    @enigma = Enigma.new
  end

  def test_it_exists

    assert_instance_of Enigma, @enigma
  end

  def test_it_has_a_character_test
skip
    character_set = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
    assert_equal character_set, @enigma.character_set
  end

  def test_it_can_generate_keys
skip
    expected = {A: "02", B: "27", C: "71", D: "15"}
    assert_equal expected, @enigma.generate_keys("02715")
  end


  def test_it_can_generate_offsets
skip
    expected = {A: "1", B: "0", C: "2", D: "5"}
    assert_equal expected, @enigma.generate_offsets("040895")
  end

  def test_it_starts_with_no_shifts
skip
    expected = {}
    assert_equal expected, @enigma.shifts
  end

  def test_it_can_generate_shifts
skip
    @enigma.generate_shifts("02715", "040895")
    expected = {A: 3, B: 27, C: 73, D: 20}
    assert_equal expected, @enigma.shifts
  end

  def test_it_can_create_a_hash_with_index_for_each_shift
skip
    string = "hello world"
    expected = {:A=>[0, 4, 8], :B=>[1, 5, 9], :C=>[2, 6, 10], :D=>[3, 7, 11]}
    assert_equal expected, @enigma.creates_hash_with_index_for_each_shift(string)
  end

  def test_it_can_encrypt_a_message
skip
    expected = {encryption: "keder ohulw", key: "02715", date: "040895"}
    assert_equal expected, @enigma.encrypt("hello world", "02715", "040895")
  end

  def test_it_can_decrypt_a_message
skip
    expected =  {decryption: "hello world", key: "02715", date: "040895"}
    assert_equal expected, @enigma.decrypt("keder ohulw", "02715", "040895")
  end

  def test_it_can_encrypt_a_message_using_todays_date

    expected = {encryption: "shhazcsdbo ", key: "02715", date: "010519"}
    assert_equal expected, @enigma.encrypt("hello world", "02715")
  end


end
