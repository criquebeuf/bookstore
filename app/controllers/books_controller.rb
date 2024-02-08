class BooksController < ApplicationController
  def index
    # @books = Book.all
    # in order to reduce the request time and weight of request/answer
    # it's insteqde of having a for each look around the books info (in html)
    # these are 2 different tables!!
    @books = Book.includes(:author).all
  end
end
