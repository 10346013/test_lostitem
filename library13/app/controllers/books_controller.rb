class BooksController < ApplicationController
  
  def index
    @books = Book.all
  end
  
  def new
      @book = Book.new
    end
  
  def create
      @book = Book.new(book_params)

      if @book.save
        redirect_to books_path, notice: "成功新增書本~~~Congratulations!"
      else
        render :new
      end
  end
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  private
    def book_params
      params.require(:book).permit(:bookname, :author, :price, :introduction)
    end
  
end
