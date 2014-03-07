$:.unshift File.expand_path('../../lib', __FILE__)
require 'romanize'
require 'minitest/autorun'

class TestRomanize < MiniTest::Test
  include Romanize

  def test_romanize_basic
    assert_equal "hiragana", romanize("ひらがな")
  end

  def test_romanize_shu
    assert_equal "sinzyuku", romanize("しんじゅく")
  end

  def test_romanize_sokuon
    assert_equal "nattou", romanize("なっとう")
  end
end
