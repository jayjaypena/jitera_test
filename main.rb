require 'rspec'

def parse_array(input_array)
	input_array.each_with_index do |input, index|
		input_array[index] = input.gsub(/(\W|\d)/, "").upcase
	end
	input_array.join(' ')
end

describe 'parse_array function' do
	it 'should parse' do
		expect(parse_array(["B$u$i$ld", "$t$$h$e", "N$e$x$t", "E$$ra", "$$o$f$", "S$$of$t$wa$r$e", "De$$ve$l$op$me$n$t"])).to eq('BUILD THE NEXT ERA OF SOFTWARE DEVELOPMENT')
	end

	it 'should parse blank array' do
		expect(parse_array([])).to eq('')
	end
end