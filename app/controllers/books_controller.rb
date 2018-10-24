class BooksController < ApplicationController

  def index
    @book = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to root_path
  end

  def show
    # @book = Book.find(params[:id])
    @book = Book.find(params[:custom_monkey_bananas])
    @some_other_param = params[:some_other_param]
    # Book.find(2)
    # SELECT * FROM books WHERE id = "2"
  end

  private
  def book_params
    params.require(:book).permit(:title, :author_id, genre_ids: [])
    # params.require("banana").permit(:title, :author_id, genre_ids: [])
  end
end
