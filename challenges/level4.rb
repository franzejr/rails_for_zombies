  #Challenge 1

  def show
    @zombie = Zombie.find(params[:id])
  end

  #Challenge 2
  
  def show
    @zombie = Zombie.find(params[:id])

    respond_to do |format|
      format.xml { render :xml =>@zombie }
    end
  end
  
  
  #Rendering JSON
  
  def show
    @zombie = Zombie.find(params[:id])

    respond_to do |format|
      format.xml { render :xml =>@zombie }
      format.json { render :json =>@zombie }
    end
  end
  
  #Challenge 3
  
  def create
    @zombie = Zombie.create(params[:zombie])
    redirect_to @zombie
  end
  
  #With a flash notice
  def create
    @zombie = Zombie.create(params[:zombie])
    flash[:notice] = "Complete!"
    redirect_to @zombie
  end

#Challenge 4
# Objective
# Add a before filter which calls a method to check if a zombie has no tweets. 
# Redirect to zombies_path if they dont have tweets. Only on show.

class ZombiesController < ApplicationController
  before_filter :find_zombie, :has_tweets?

  def show
    if has_tweets?
      render :action => :show
    else 
      redirect_to zombies_path
    end
  end

  def find_zombie
    @zombie = Zombie.find params[:id]
  end
  
  def has_tweets?
    if @zombie.tweets.count !=0
      true
    else
      false
    end
  end
end