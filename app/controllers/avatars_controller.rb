class AvatarsController < ApplicationController

    def create
        
        # byebug
        image = Cloudinary::Uploader.upload(params[:image])
        video = Cloudinary::Uploader.upload(params[:video], :resource_type => :video)

        avatar = Avatar.create(image: image["link"], video: video["link"])
        render json: avatar
    end

end
