class CommentsController < ApplicationController
  def create

    @article = Article.find(params[:article_id])


    @comment = @article.comments.create(comment_params)
    
#    print "comments class is " + @article.comments.class.to_s + "\n"
#    print "after saving, comment = " + @comment.to_s + "\n"
#    print "commenter = " + @comment.commenter + "\n"
#    print "body = " + @comment.body + "\n"
   
    redirect_to article_path(@article)
    
  end
  
  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
  end  

  private

  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end