class AmusementsController < ApplicationController

 def index
        @amusements = Amusement.all
    end

     def new
    @amusement = Amusement.new
  end

  def create
    amusement = Amusement.new(tweet_params)
    if amusement.save!
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
  end

  private
  def amusement_params
    params.require(:amusement).permit(:att_name, :park_name, :comment)
  end

end
