class UsersController < ApplicationController
    def index
        @users = User.all
    end
    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end
    
    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id]).update(user_params)
        redirect_to user_path
    end
    def create
        @user = User.new(user_params)
        if @user.save
            log_in @user
            flash.now[:success] = "Вітаємо на нашому сервісі !"
            redirect_to @user
        else
            render 'new'
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :nickname, :status, :email, :password, :password_confirmation, :balance)
    end
end
