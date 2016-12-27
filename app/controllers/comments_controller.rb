class CommentsController < ApplicationController
  def create
    
    @article = Article.find(params[:article_id])

    #print "saving comment for " + @article.to_s + "\n"
    p = comment_params
    #print "comments = " + p.to_s + "\n"
      
    @comment = @article.comments.create(p)   ##(comment_params)
    
    redirect_to article_path(@article)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end