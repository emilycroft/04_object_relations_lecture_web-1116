require 'pry'

require_relative 'author'
require_relative 'book'

book = Book.new('1984', 'A book about the future')
author = Author.new( "George", "Orwell", "London", "June 25th, 1903")
author.add_book(book)

book.author # the author i create on line 7
author.books # [with the book inside]

binding.pry

# puts 'Enter a book title'
# title = gets.strip
# puts 'Enter a summary'
# summary = gets.strip
#
# book = Book.new(title, summary)
# puts "Change the title:"
# book.title = 'Somethign new'
#
# class User
#   attr_writer :password
#
#   def authenticate(password_try)
#     password == password_try
#   end
#
#   private
#
#   def password
#     puts 'Calling the password method'
#     @password
#   end
# end
#
# user = User.new
# user.password = 'fido'
#
# user.authenticate('fidoasdf') #=> false
#
# user.password #
