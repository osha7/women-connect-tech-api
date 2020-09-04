class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update]

    def index
        users = User.all
        render json: UserSerializer.new(users).to_serialized_json
    end

    def show
        # user = User.find_by(id: params[:id])
        avatar = @user.avatar
        render json: UserSerializer.new(@user).to_serialized_json
    end

    def create
        # byebug
        @user = User.create!(
            username: params['user']['username'],
            email: params['user']['email'],
            password: params['user']['password'],
            password_confirmation: params['user']['password_confirmation'],
            avatar: params['user']['avatar'],
            )
        if @user 
            avatar = Avatar.create(user_id: @user.id)
            session[:user_id] = @user.id
            render json: {
                status: :created,
                user: @user
            }
        else
            render json: { status: 500 }
        end
    end

    def edit
    end

    def update
        @user.update(user_params)
        if @user.valid?
            @user.save
            render json: @user
        else
            render json: {error: 'Unable to save edits'}
        end

    end

    private

    def user_params
        params.require(:user).permit(:email, :password_digest, :first_name, :last_name, :goals, :resume_link, :avatar, :website, :contact, :linked_in, :twitter, :open_to_connect, :open_to_mentor, :available_to_work, :saved)
    end

    def set_user
        @user = User.find_by(id: params[:id])
    end

end
