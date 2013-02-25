class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def create
    book = Book.create(params[:book]) # creates new book w/ form data
    redirect_to(book) # does this imply book id??
  end

  def new
    @book = Book.new

  end

  def edit
    @book = Book.find(params[:id])
  end

  def show
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update_attributes(params[:book])
    redirect_to(book)
  end

  def destroy
    book = Book.find(params[:id])
    book.delete
    redirect_to(books_path)
  end

end

