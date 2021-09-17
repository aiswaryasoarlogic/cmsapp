class UsersController < ApplicationController
    
    def index
    end

    def create
        user = User.new(user_params)
        if user.save
            session[:user_id] = user.id
            redirect_to '/dashboard'
        else
            flash[:register_errors] = user.errors.full_messages
            redirect_to '/'
        end
        # user = User.create!(user_params)
        # session[:user_id] = user.id
        # redirect_to '/dashboard'
    end

    

    private
        def user_params
            params.require(:user).permit(:name, :email, :password, :password_confirmation, :phone, :profession, :image, :isadmin)

        end
end
