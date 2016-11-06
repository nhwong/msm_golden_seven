class ActorsController < ApplicationController

  def index
    @actors = Actor.all
  end

  def show
    @actor = Actor.find(params[:id])
  end

  def edit_actor_form
    @actor = Actor.find(params[:id])
  end

  def edit_actor
    @actor = Actor.find(params[:id])
    @actor.name = params[:name]
    @actor.bio = params[:bio]
    @actor.dob = params[:dob]
    @actor.image_url = params[:url]
    @actor.save

    redirect_to("/actors")
  end


  def delete_actor
    @actor = Actor.find(params[:id])
    @actor.delete

    redirect_to("/actors")
  end

  def new_actor
  end

  def create_actor
    @actor = Actor.new
    @actor.name = params[:name]
    @actor.bio = params[:bio]
    @actor.dob = params[:dob]
    @actor.image_url = params[:url]
    @actor.save

    redirect_to("/actors")
  end

end
