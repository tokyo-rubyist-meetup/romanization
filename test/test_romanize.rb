$:.unshift File.expand_path('../../lib', __FILE__)
require 'romanize'
require 'minitest/autorun'

minitest_class = MiniTest.const_defined?(:Test) ? MiniTest::Test : MiniTest::Unit::TestCase
class TestRomanize < minitest_class
  include Romanize

  def test_romanize_basic
    assert_equal "hiragana", romanize("ひらがな")
  end

  def test_romanize_shu
    assert_equal "sinzyuku", romanize("しんじゅく")
  end

  def test_romanize_sokuon1
    assert_equal "nattou", romanize("なっとう")
  end

  def test_romanize_sokuon2
    assert_equal "gakkou", romanize("がっこう")
  end

  def test_romanize_sokuon3
    assert_equal "kekka", romanize("けっか")
  end

end
