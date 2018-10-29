class CommentsController < ApplicationController
	def create
	  @room = Room.find(params[:room_id])
	  @comment = @room.comments.new(comment_params)
	  @comment.user = current_user
	  @comment.save
	  redirect_to room_path(@room)
	end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:user_id, :body)
  end
end
