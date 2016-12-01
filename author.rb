class Author

  attr_reader :first_name, :last_name, :hometown, :birthday, :books

  ALL = []

  def self.all
    ALL
  end

  def initialize(first_name, last_name, hometown, birthday)
    @first_name = first_name
    @last_name = last_name
    @hometown = hometown
    @birthday = birthday
    @books = [] # we initialize our authors with a collection of books
    ALL << self
  end

  # this is defined by the attr_reader
  # def books
  #   @books
  # end

  def add_book(book)
    binding.pry
    self.books << book
    book.author = self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def reverse
    full_name.reverse
  end

end


author = Author.new( "George", "Orwell", "London", "June 25th, 1903")
author.books # []
