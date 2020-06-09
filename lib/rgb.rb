# 10進数 → 16進数のメソッド
# def to_hex(r, g, b)
# 	a = r.to_s(16).rjust(2, '0')#rjustメソッド(第1引数に桁数を指定。デフォルトは空白(半角スペース)で桁揃えするが、
# 	k = g.to_s(16).rjust(2, '0')            # 第二引数を指定すると空白以外の文字列を指定することができる)
# 	c = b.to_s(16).rjust(2, '0')
# 	"##{a}#{b}#{c}"
# end


# def to_hex(r, g, b)
# 	'#' +
# 	r.to_s(16).rjust(2, '0') +
# 	g.to_s(16).rjust(2, '0') +
# 	b.to_s(16).rjust(2, '0')
# end

# puts to_hex(46, 4, 4)


# リファクタリング1
# def to_hex(r, g, b)
# 	hex = '#'
# 	[r, g, b].each do |n|
# 		hex += n.to_s(16).rjust(2, '0')
# 	end
# 	hex
# end


# リファクタリング2
def to_hex(r, g, b)
	[r, g, b].inject('#') do |hex, n|
	  hex + n.to_s(16).rjust(2, '0')
	end
end

puts to_hex(3, 5, 2)
puts to_hex(38, 3, 25)




# 16進数 → 10進数のメソッド
# def to_ints(hex)
# 	r = hex[1..2]
# 	g = hex[3..4]
# 	b = hex[5..6]
# 	ints =
# 	 [r, g, b].map do |s|
#       s.hex
# 	end
# 	ints
# end

# # リファクタリング1
# def to_ints(hex)
# 	r, g, b = hex[1..2], hex[3..4], hex[5..6]
# 	[r, g, b].map do |s|
#       s.hex
# 	end
# end

# リファクタリング2
def to_ints(hex)
	hex.scan(/\w\w/).map(&:hex)
end

puts to_ints('#111111')


