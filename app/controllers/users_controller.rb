class UsersController < ApplicationController
    before_action :set_user, only: %i[ show ]
  
    # GET /answers or /answers.json
    def index
      @q =User.ransack(params[:q])
      @users = @q.result(distinct: true).page(params[:page])
    end
  
    # GET /answers/1 or /answers/1.json
    def show
    end

    def search
        if(params[:search].blank?)
            redirect_to users_path and return
        else
            @parameter =params[:search].downcase
            @trail =User.all.where("lower(first_name) LIKE :search or lower(last_name) LIKE :search
            or lower(email) LIKE :search or lower(gender) LIKE :search or lower(country) LIKE :search",search: "%#{@parameter}%")
            @results=@trail.page(params[:page])
        end
    end
  
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_user
        @user = User.find(params[:id])
      end
  
    # Only allow a list of trusted parameters through.
    #   def answer_params
    #     params.require(:answer).permit(:title, :author, :body)
    #   end
  end
  