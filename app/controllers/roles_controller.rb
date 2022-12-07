class RolesController < ApplicationController
    before_action :set_role, only: %i[ show ]
  
    # GET /answers or /answers.json
    def index
      @roles = Role.page params[:page]
    end
  
    # GET /answers/1 or /answers/1.json
    def show
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_role
        @role = Role.find(params[:id])
      end
end
