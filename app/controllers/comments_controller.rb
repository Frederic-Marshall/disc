# frozen_string_literal: true

class CommentsController < ApplicationController
  before_action :set_post!
  before_action :set_comment, except: :create

  def edit; end

  def create
    @comment = @post.comments.build(comments_params)
    @comment.user_id = current_user.id

    if @comment.save
      redirect_to post_path(@post), notice: 'Comment was successfully created.'
    else
      @comments = @post.comments.order created_at: :desc
      render 'posts/show', status: :unprocessable_entity
    end
  end

  def update
    if @comment.update(comments_params)
      redirect_to post_path(@post), notice: 'Comment was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    if @comment.destroy
      redirect_to post_path(@post), notice: 'Comment was successfully destroyed.'
    else
      redirect_to post_path(@post), notice: 'Something went wrong.'
    end
  end

  private

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comments_params
    params.require(:comment).permit(:body, :user_id, :post_id)
  end

  def set_post!
    @post = Post.find(params[:post_id])
  end
end
