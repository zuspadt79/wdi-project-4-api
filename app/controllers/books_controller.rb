class BooksController < ApplicationController
  before_action :set_book, only: [:destroy]

  def to_read
    @book = @current_user.books.find_by_title(params[:book][:title])
    @book = @current_user.books.new(book_params) if !@book
    @book.status = "to_read"

    if @book.save
      render json: @book, status: :created, location: @book
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end

  def read
    @book = @current_user.books.find_by_title(params[:book][:title])
    @book = @current_user.books.new(book_params) if !@book
    @book.status = "read"

    if @book.save
      render json: @book, status: :created, location: @book
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @book.destroy
  end

  private
  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :image, :author, :isbn)
  end
end
