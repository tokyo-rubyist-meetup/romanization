require 'romanize'

describe '#romanize' do
	include Romanize
	it 'converts basic hiragana' do
		expect( romanize('ひらがな') ).to eq('hiragana')
	end

	it 'converts shu sinzyuku' do
		expect( romanize('しんじゅく') ).to eq('sinzyuku')
	end

	it 'converts sokuon sinzyuku' do
		expect( romanize('なっとう') ).to eq('nattou')
	end
end