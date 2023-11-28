class SindansController < ApplicationController

  
    def index
        @sindan= Sindan.all
    end


    def new
        @sindan = Sindan.new
      end
    
      def show
        @sindan = Sindan.find(params[:id])
   end


      def create
        @sindan = Sindan.new(sindan_params)
        params[:sindan][:question] ? @sindan.question = params[:sindan][:question].join("") : false
        if @sindan.save
            flash[:notice] = "診断が完了しました"
            redirect_to sindan_path(@sindan.id)
        else
            redirect_to :action => "new"
        end
      end
    
      

      private
      def sindan_params
        params.require(:sindan).permit(:question, :user_id)
      end

end

