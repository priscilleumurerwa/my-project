class CommentsController < ApplicationController
  before_action :find_post
  before_action :find_comment, only: [:destroy, :edit , :update]


  def index
    @comments = Comment.all
  end
  def create
    @comment = @family.comments.create(params[:comment].permit(:content))
    @comment.save
    if @comment.save
      redirect_to family_path(@family)
    else
      redirect_to family_path(@family), alert: 'Please enter the comment!!!!!'
    end
  end

  def destroy
    @comment.destroy
    redirect_to family_path(@family)
  end
  def edit
  end

  def update
    if @comment.update(params[:comment].permit(:content))
      redirect_to family_path(@family)
    else
      render 'edit'
    end
  end
  private
  def find_post
    @family = Family.find(params[:family_id])
  end
  def find_comment
    @comment = @family.comments.find(params[:id])
  end
end
