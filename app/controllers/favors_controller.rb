class FavorsController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    target_micropost = Micropost.find(params[:micropost_id])
    current_user.favorite(target_micropost)
    flash[:success] = '投稿をお気に入り登録しました。'
    redirect_to user_path(current_user.id)
  end

  def destroy
    target_micropost = Micropost.find(params[:micropost_id])
    current_user.unfavorite(target_micropost)
    flash[:success] = '投稿のお気に入りを解除しました。'
    redirect_to user_path(current_user.id)
  end
end
