class AvatarsController < ApplicationController

    def index
        avatars = Avatar.all
        render json: {
            avatars: avatars 
        } 
    end

    def image_upload
        # byebug
        user = User.find(params[:user_id])
        file_url = Cloudinary::Uploader.upload(params[:image])
        user.avatar.image = file_url["path_id"]
        user.save
        render json: user
    end

    # def create
    #     # byebug
    #     image = Cloudinary::Uploader.upload(params[:image])
    #     video = Cloudinary::Uploader.upload(params[:video], :resource_type => :video)

    #     avatar = Avatar.create(image: image["link"], video: video["link"])
    #     render json: avatar
    # end

    def show
        avatar = Avatar.find_by(id: params[:id])
        render json: {
            avatar: avatar
        }

    end

    def create
        avatar = Avatar.create(avatar_params)
        if avatar.valid?
            render json: avatar
        else
            render json: {error: "Unable to save avatar"}
        end

        def update
            avatar = Avatar.find_by(id: params[:id])
            avatar.user_id = params[:avatar][:user_id]
            avatar.save
            render json: {
                avatar: avatar
            }
        end

    end

    private

    def avatar_params
        params.require(:avatar).permit(:id, :link, :user_id, :image)
    end

end
