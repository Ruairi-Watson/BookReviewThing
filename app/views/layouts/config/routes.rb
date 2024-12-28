class BooksController < ApplicationController
  before_action :set_book, only: %i[show edit update destroy]

  def index
    @books = [
      { title: 'Neuromancer', author: 'William Gibson', description: 'The quintessential cyberpunk novel.' },
      { title: 'Snow Crash', author: 'Neal Stephenson', description: 'A futuristic world of hackers and virtual reality.' },
      { title: 'Altered Carbon', author: 'Richard K. Morgan', description: 'A gritty noir detective story in a cyberpunk future.' },
      { title: 'Do Androids Dream of Electric Sheep?', author: 'Philip K. Dick', description: 'A post-apocalyptic novel exploring humanity and AI.' },
      { title: 'The Peripheral', author: 'William Gibson', description: 'Alternate futures and virtual realities collide.' },
      { title: 'Count Zero', author: 'William Gibson', description: 'A thrilling sequel to Neuromancer.' },
      { title: 'The Diamond Age', author: 'Neal Stephenson', description: 'A futuristic tale of technology and education.' },
      { title: 'Hyperion', author: 'Dan Simmons', description: 'A far-future pilgrimage filled with dark secrets.' },
      { title: 'Dune', author: 'Frank Herbert', description: 'A sci-fi epic exploring politics and ecology.' },
      { title: 'Foundation', author: 'Isaac Asimov', description: 'The grand saga of the fall and rise of galactic civilization.' }
    ]
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

  def set_book
    @book = @books.find { |b| b[:id] == params[:id].to_i }
  end
end
