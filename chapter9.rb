begin
	#例外が起きうる処理
rescue
	#例外が発生した場合の処理
end

puts 'Start.'

module Greeter
	def hello
		'hello'
	end
end

begin
	greeter = Greeter.new
rescue
	puts '例外が発生したがこのまま続行する'
end

puts 'End.'

