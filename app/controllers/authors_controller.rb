class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
  end

  def create
    # @author = Author.create!(author_params)

    # redirect_to author_path(@author)
    @author = Author.new(author_params) #this is saying creat a new author with all of the params in author_params 
    if @author.valid? #this is checking if the post is valid 
      @author.save #if do save it 
      redirect_to author_path(@author) #then take them to the author page 
    else 
      render :new #if not take them to the new author page 
    end 
  end

  private

  def author_params
    params.permit(:email, :name)
  end
end
