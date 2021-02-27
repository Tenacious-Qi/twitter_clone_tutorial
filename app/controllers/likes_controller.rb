class LikesController < ApplicationController

  def new
    @like = Like.new
    # @tweeet = current_user.tweeets.build
  end

  def create
    # @tweeet = current_user.tweeets.build(tweeet_params)
    # @like = current_user.likes.build(like_params)
    current_user.tweeet.likes += 1
    redirect_to root_path
  end 

  # private

    # def like_params
    #   params.require(:like).permit(:like, :user_id)
    # end
end
