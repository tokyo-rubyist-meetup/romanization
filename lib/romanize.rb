module Romanize
  def romanize(hiragana)
    result = ""
    hiragana.split(//).each_with_index do |h, i|
	result.chop if ['ゃ','ゅ','ょ'].include?(h) 
    	result << convert_character(h) # if h != "っ"
    end
    result
  end

  def convert_character(char)
     character_hash = {
	"あ"=>"a","い"=>"i","う"=>"u","え"=>"e","お"=>"o",
	# ひらがな
	"ひ" => "hi", "ら" => "ra", "が" => "ga", "な" => "na",
	# 新宿
        "し" => "si","ん"=>"n","じ"=>"z",
        # "ゅ" => "yu",
	"く"=>"ku",
	# 納豆
	"な" => "na","っ"=>"t","と"=>"to","う"=>"u",
	"ゃ"=>"ya","ゅ"=>"yu","ょ"=>"yo"
}
     character_hash[char]
  end

  def convert_tu(after_char)

  end
end
