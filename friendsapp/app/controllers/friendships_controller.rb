class FriendshipsController < ApplicationController

  # route post friendships/xid/yid
  def create

    @userx = User.find(params[:xid])
    @usery = User.find(params[:yid])
    @userx.friends << @usery
    @usery.friends << @userx
    
  end

  def destroy
  end
end
