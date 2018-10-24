class AuthorsController < ApplicationController

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    @author.save
    redirect_to root_path
  end

  private
  def author_params
    params.require(:author).permit(:name, books_attributes: [:id, :title, genre_ids: [] ] )
  end
end
