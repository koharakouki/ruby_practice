module Loggable
	def log(text)
		puts "[LOG] #{text}"
	end
end

class Product
	include Loggable
	def title
		log 'title is called.'
		'A great movie'
	end
end


class User
	include Loggable
	def name
		log 'name is called.'
		'Alice'
	end
end

product = Product.new
product.title
#=> [LOG]title is called.
#   'A great movie'

user = User.new
user.name
#=> [LOG]title is called.
#   'Alice'

