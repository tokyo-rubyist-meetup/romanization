require 'romanize'

describe '#romanizeはひらがなをローマ字に変えられる' do
	include Romanize


  context 'ようおんを' do
  	it 'ローマ字に変えられる' do
	   	expect( romanize('しんじゅく') ).to eq('sinzyuku')
    end
  end

  context 'そくおん' do
  	it 'ローマ字に変えられる' do
  		expect( romanize('なっとう') ).to eq('nattou')
  	end
  end

	context 'ひらがなを' do
    it 'ローマ字に変えられる' do
      expect( romanize('ひらがな') ).to eq('hiragana')
		end

    it 'ローマ字に変えられる' do
      expect( romanize('くつした') ).to eq('kutusita')
    end
	end
end