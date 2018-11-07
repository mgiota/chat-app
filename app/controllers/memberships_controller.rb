class MembershipsController < ApplicationController
  before_action :authenticate_user!
  def index
    @room = Room.find(params[:room_id])
    redirect_with_flash unless member_of_group
    @memberships = Membership.where(room_id: params[:room_id])
    @users = User.where.not(id: @memberships.pluck(:user_id))
  end

  def create
    @room = Room.find(params[:room_id])
    redirect_with_flash unless member_of_group

    # @user = User.find(params[:membership][:user_id])
    @user = User.find(params[:user_id])
    @membership = Membership.new(user_id: @user.id,
                            room_id: @room.id)


    respond_to do |format|
      if @membership.save
        #json_hash = {email: user.email, id: user.id}
        #render text: JSON.generate(json_hash)
        #render json: json_hash
        format.html { redirect_to @room, notice: 'Review was created successfully.' }
        format.json { render :show, status: :created, location: @room }
        format.js
      else
        #error handling
        format.html { redirect_to @room, alert: 'User was not added to the room.' }
        format.json { render json: @membership.errors, status: :unprocessable_entity }

      end
    end
  end
end
