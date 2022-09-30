class UsersController < ApplicationController
    before_action :set_user, only: %i[ show  edit update ]
    def index
        @users = User.all
    end
    def show
    end

    def new
        @user = User.new
    end
    
    def edit
    end

    def update
        @user.update(user_params)
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

    def set_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:name, :nickname, :status, :email, :password, :password_confirmation)
    end
end
