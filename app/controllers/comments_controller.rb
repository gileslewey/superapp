class CommentsController < ApplicationController

  def destroy
    @comment = Comment.find(params[:id])
    product = @comment.product
    @comment.destroy
    redirect_to product
  end


  def create
      @product = Product.find(params[:product_id])
      @comment = @product.comments.new(comment_params)
      @comment.user = current_user
      @user = current_user

      respond_to do |format|
        if @comment.save

          format.html { redirect_to @product, notice: 'Review was created successfully.' }
          format.json { render :show, status: :created, location: @product }
          format.js
        else
          format.html { redirect_to @product, alert: 'Review was not saved successfully.' }
          format.json { render json: @comment.errors, status: :unprocessable_entity }
        end
      end
    end

private
# can only be used within this class
  def comment_params
    params.require(:comment).permit(:user_id, :body, :rating)
  end
end
