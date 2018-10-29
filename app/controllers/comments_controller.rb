class CommentsController < ApplicationController
	def create
	  @room = Room.find(params[:room_id])
	  @comment = @room.comments.new(comment_params)
	  @comment.user = current_user
	  
	  respond_to do |format|
	    if @comment.save
	      format.html { redirect_to @room, notice: 'Review was created successfully.' }
	      format.json { render :show, status: :created, location: @room }
	    else
	      format.html { redirect_to @room, alert: 'Review was not saved successfully.' }
	      format.json { render json: @comment.errors, status: :unprocessable_entity }
	    end
	  end
	end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:user_id, :body)
  end
end
