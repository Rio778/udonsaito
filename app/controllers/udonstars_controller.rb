class StarsController < ApplicationController
  def index
   @udonstars = Udonstar.all
  end

  def new
    @udonstar = Udonstar.new
  end

  def create
    @udonstar = Udonstar.new(udonstar_params)

    if @udonstar.save 
      redirect_to action: 'index'
    else 
      redirect_to action: 'new'
    end
  end



  private

  def udonstar_params
    params.require(:udonstar).permit(:name,:username, :overall,:level)
  end
end


