class DirectorsController < ApplicationController

  def index
    @directors = Director.all
  end

  def show
    @director = Director.find(params[:id])
  end

  def edit_director_form
    @director = Director.find(params[:id])
  end

  def edit_director
    @director = Director.find(params[:id])
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.dob = params[:dob]
    @director.image_url = params[:url]
    @director.save

    redirect_to("/directors")
  end


  def delete_director
    @director = Director.find(params[:id])
    @director.delete

    redirect_to("/directors")
  end

  def new_director
  end

  def create_director
    @director = Director.new
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.dob = params[:dob]
    @director.image_url = params[:url]
    @director.save

    redirect_to("/directors")
  end

end
