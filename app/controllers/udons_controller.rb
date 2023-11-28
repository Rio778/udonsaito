class UdonsController < ApplicationController


  
  before_action :authenticate_user!

    def index
        @udons = Udon.all

        if params[:search] == nil
          @udons= Udon.all
        elsif params[:search] == ''
          @udons= Udon.all
        else
          
          @udons = Udon.where("name LIKE ? ",'%' + params[:search] + '%')
        end

    end

    def new
        @udon = Udon.new
    end

    def create
        @udon = Udon.new(udon_params)
        @udon.user_id = current_user.id
      if @udon.save!
        redirect_to :action => "index"
      else
        redirect_to :action => "new"
       end
    end

    def show
      @udon = Udon.find(params[:id])
    
      @comments = @udon.comments
      @comment = Comment.new
    end


    def top
    end


    private
    def udon_params
      params.require(:udon).permit(:name, :place, :user_id, :image, :posted_date, :lat, :lng, :level, :overall, :shop)
    end
  
end

