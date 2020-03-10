class FriendshipsController < ApplicationController
  def create
    @friendship = current_user.friendships.build(:friend_id => params[:user_id])
    if @friendship.save
      redirect_to search_users_path
    else
      puts 'unable to add friend'
      redirect_to search_users_path
    end
  end

  def destroy
    @friendship = current_user.friendships.find(params[:id])
    @friendship.destroy
    flash[:notice] = "Remove friendship"
    redirect_to current_user
  end
end
