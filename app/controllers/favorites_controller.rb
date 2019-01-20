class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    post = Post.find(params[:post_id])
    current_user.like(post)
    flash[:success] = 'お気に入りに追加しました'
    
    redirect_to user_url(post.user_id)
  end

  def destroy
    post = Post.find(params[:post_id])
    current_user.unlike(post)
    flash[:success] = 'お気に入りを解除しました'
    redirect_to user_url(post.user_id)
  end
end
