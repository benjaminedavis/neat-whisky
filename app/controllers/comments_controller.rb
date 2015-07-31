class CommentsController < ApplicationController

def create
    @whiskey = Whiskey.find(params[:id])
    @comment = @whiskey.comments.create(comment_params)
    @comment.member = current_member
    if @comment.save
      redirect_to whiskey_path(@whiskey)
    else
      redirect_to root_path
    end
end

def edit
end

def destroy
end

private
  def comment_params
    params.require(:comment).permit(:comment)
  end

end
