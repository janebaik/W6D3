class UsersController < ApplicationController
    def index
      users = User.all
      render json: users
    end

    def show
    users = User.find(params[:id]) 
    render json:users
    end

    def create
        
    end

    def destroy
    end

    def update

    end
private
    def user_params
       params.require(:user).permit(:username)
    end

    def art_share_params
       params.require(:art_share).permit(:artwork_id, :viewer_id)
    end
    def artwork_params
       params.require(:artwork).permit(:title, :image_url, :artist_id)
       end
end

