module Romanize
  def romanize(s)
    string = convert_hiragana_string(s)
    convert_small_romachar(string)
  end

  def convert_hiragana_string(s)
    s.each_char.with_object([]) {|c, result|
      result << convert_hiragana_char(c)
    }.join
  end

  def convert_small_romachar(string)
    string.gsub(/[aiueo]xy/, 'y').gsub(/xtu./) {|param| param.chars[-1] * 2 }
  end

  def convert_hiragana_char(c)
    hiragana_map[c]
  end

  def hiragana_map
    @hiragana_map ||= ('ぁ'..'ん').to_a.zip(
      %w(xa a xi i xu u xe e xo o
         ka ga ki gi ku gu ke ge ko go
         sa za si zi su zu se ze so zo
         ta da ti di xtu du te tu de to do
         na ni nu ne no
         ha ba pa hi bi pi fu bu pu he be pe ho bo po
         ma mi mu me mo
         xya ya xyu yu xyo yo
         ra ri ru re ro
         xwa wa wi we wo n)
    ).inject({}) {|hash, (hiragana, roma)|
      hash[hiragana] = roma
      hash
    }
  end
end
