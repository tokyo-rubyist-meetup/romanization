# -*- coding: utf-8 -*-

module Romanize
  def romanize(s)
    romaji_table = {
      'あ' => 'a',      'い' => 'i',      'う' => 'u',      'え' => 'e',      'お' => 'o',
      'か' => 'ka',     'き' => 'ki',     'く' => 'ku',     'け' => 'ke',     'こ' => 'ko',
      'さ' => 'sa',     'し' => 'si',     'す' => 'su',     'せ' => 'se',     'そ' => 'so',
      'た' => 'ta',     'ち' => 'ti',     'つ' => 'tu',     'て' => 'te',     'と' => 'to',
      'な' => 'na',     'に' => 'ni',     'ぬ' => 'nu',     'ね' => 'ne',     'の' => 'no',
      'は' => 'ha',     'ひ' => 'hi',     'ふ' => 'hu',     'へ' => 'he',     'ほ' => 'ho',
      'ま' => 'ma',     'み' => 'mi',     'む' => 'mu',     'め' => 'me',     'も' => 'mo',
      'や' => 'ya',     'ゆ' => 'yu',     'よ' => 'yo',
      'ら' => 'ra',     'り' => 'ri',     'る' => 'ru',     'れ' => 're',     'ろ' => 'ro',
      'わ' => 'wa',     'を' => 'wo',     'ん' => 'n',
      'が' => 'ga',     'ぎ' => 'gi',     'ぐ' => 'gu',     'げ' => 'ge',     'ご' => 'go',
      'ざ' => 'za',     'じ' => 'zi',     'ず' => 'zu',     'ぜ' => 'ze',     'ぞ' => 'zo',
      'だ' => 'da',     'ぢ' => 'di',     'づ' => 'du',     'で' => 'de',     'ど' => 'do',
      'ば' => 'ba',     'び' => 'bi',     'ぶ' => 'bu',     'べ' => 'be',     'ぼ' => 'bo',
      'ぱ' => 'pa',     'ぴ' => 'pi',     'ぷ' => 'pu',     'ぺ' => 'pe',     'ぽ' => 'po',
    }
    
    romanized = ''
    prev_char = ''
    s.each_char {|c|
      if prev_char = 'っ'
        hoge = romaji_table[c]
        romanized = hoge[0] + hoge
      elsif c ~= /ゃゅょ/
        romanized += romaji_table[prev_char + c]
      else 
        romanized += romaji_table[c]
      end
      prev_char = c
    }
    romanized
  end
end
