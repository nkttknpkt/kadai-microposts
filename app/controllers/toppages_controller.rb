class ToppagesController < ApplicationController
  def index
    if logged_in?
      @micropost = current_user.microposts.build  # form_with 用
      @pagy, @microposts = pagy(current_user.feed_microposts.order(id: :desc))
      @favorite = current_user.microposts.find_by(params[:id])
    end
  end
end
