class FriendshipsController < ApplicationController
  def create
    @friendship = current_user.friendships.build(:friend_id => params[:user_id])
    if @friendship.save
      redirect_to users_path(query: params[:query])
    else
      puts 'unable to add friend'
      redirect_to users_path(query: params[:query])
    end
  end

  def update
    @friendship = Friendship.find(params[:id])
    @friendship.update(accepted: true)
    redirect_to users_notifications_path
  end

  def destroy
    @friendship = current_user.friendships.find(params[:id])
    @friendship.destroy
    flash[:notice] = "Remove friendship"
    redirect_to current_user
  end
end
