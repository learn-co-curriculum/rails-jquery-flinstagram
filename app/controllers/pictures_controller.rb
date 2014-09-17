class PicturesController < ApplicationController

  def like
    @picture = Picture.find(params[:id])
    if liked?(@picture)
      @picture.unlike(current_user)
    else
      @picture.like(current_user)
    end
    redirect_to root_path
  end

end
