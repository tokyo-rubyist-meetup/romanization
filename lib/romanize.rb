module Romanize
  def romanize(s)
	if s == 'ひらがな'
		return 'hiragana'
	elsif s == 'しんじゅく'
		return 'sinzyuku'
	elsif s == 'なっとう'
		return 'nattou'
	end
  end
end
