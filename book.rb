class Book
  attr_reader :title, :summary
  attr_accessor :author
  ALL = []

  # Do not do this
  # def self.new
  #   instance = self.allocate
  #   instance.initialize
  # end

  def self.all
    ALL
  end

  # this would be an instance method on the book
  # def all
  #   puts "#{title} #{summary}"
  # end

  def initialize(title, summary)
    @title = title
    @summary = summary
    ALL << self
  end

  def reversed_author_name
    self.author.reverse 
  end

  def crazy_author_name
    author.reverse.swapcase
  end
end

# book.author=(Author.new( "George", "Orwell", "London", "June 25th, 1903") )
