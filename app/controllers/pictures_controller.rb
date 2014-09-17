class PicturesController < ApplicationController

  def like
    @picture = Picture.find(params[:id])
    @picture.update_likes(current_user)
    redirect_to root_path
  end

end
