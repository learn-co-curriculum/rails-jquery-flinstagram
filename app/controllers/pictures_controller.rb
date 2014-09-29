class PicturesController < ApplicationController

  def like
    @picture = Picture.find(params[:id])
    @picture.update_likes(current_user)
    message = @picture.likes_message(current_user)

    respond_to do |format|
      format.json { render json: {message: message} }
      format.html { redirect_to root_path }
    end
  end

end
