class AvatarsController < ApplicationController

    def create
        avatar = Avatar.create(id: params[:id])
        
    end

end
