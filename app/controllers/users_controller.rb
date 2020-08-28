class UsersController < ApplicationController

    def index
        users = User.all
        render json: {
            users: users
        }
    end

    def create
        user = User.create!(
            username: params['user']['username'],
            email: params['user']['email'],
            password: params['user']['password'],
            password_confirmation: params['user']['password_confirmation'],
            # avatar: params['user']['avatar']
            )
        if user 
            session[:user_id] = user.id
            render json: {
                status: :created,
                user: user
            }
        else
            render json: { status: 500 }
        end
    end

end