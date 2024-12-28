class BooksController < ApplicationController
  before_action :set_book, only: %i[show edit update destroy]
  before_action :load_books, only: %i[index show edit update destroy]

  def index
  end

  def show
  end

  def new
    @book = {}
  end

  def create
    # Placeholder for adding books
    redirect_to books_path
  end

  def edit
  end

  def update
    redirect_to books_path
  end

  def destroy
    redirect_to books_path
  end

  private

  def load_books
    @books = [
      { id: 1, title: 'Neuromancer', author: 'William Gibson', description: 'The quintessential cyberpunk novel.' },
      { id: 2, title: 'Snow Crash', author: 'Neal Stephenson', description: 'A futuristic world of hackers and virtual reality.' },
      { id: 3, title: 'Altered Carbon', author: 'Richard K. Morgan', description: 'A gritty noir detective story in a cyberpunk future.' },
      { id: 4, title: 'Do Androids Dream of Electric Sheep?', author: 'Philip K. Dick', description: 'A post-apocalyptic novel exploring humanity and AI.' },
      { id: 5, title: 'The Peripheral', author: 'William Gibson', description: 'Alternate futures and virtual realities collide.' },
      { id: 6, title: 'Count Zero', author: 'William Gibson', description: 'A thrilling sequel to Neuromancer.' },
      { id: 7, title: 'The Diamond Age', author: 'Neal Stephenson', description: 'A futuristic tale of technology and education.' },
      { id: 8, title: 'Hyperion', author: 'Dan Simmons', description: 'A far-future pilgrimage filled with dark secrets.' },
      { id: 9, title: 'Dune', author: 'Frank Herbert', description: 'A sci-fi epic exploring politics and ecology.' },
      { id: 10, title: 'Foundation', author: 'Isaac Asimov', description: 'The grand saga of the fall and rise of galactic civilization.' }
    ]
  end

  def set_book
    @book = @books.find { |b| b[:id] == params[:id].to_i }
  end
end
