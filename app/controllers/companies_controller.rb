class CompaniesController < ApplicationController
    before_action :set_user, only: %i[ show ]
  
    # GET /answers or /answers.json
    def index
      @companies = Company.page params[:page]
    end
  
    # GET /answers/1 or /answers/1.json
    def show
    end

    def search
        if(params[:search].blank?)
            redirect_to users_path and return
        else
            @parameter =params[:search].downcase
            @results =Company.all.where("lower(first_name) LIKE :search or lower(last_name) LIKE :search",search: "%#{@parameter}%")
        end
    end
  
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_user
        @company = Company.find(params[:id])
      end
  
end
