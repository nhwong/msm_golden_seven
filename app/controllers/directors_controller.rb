class DirectorsController < ApplicationController

  def index
    @directors = Director.all
  end

  def show
    @director = Director.find(params[:id])
  end

  def edit_director
      redirect_to("/directors")
  end

  def delete_director
      redirect_to("/directors")
  end

  def new_director
    redirect_to("/directors")
  end

end
