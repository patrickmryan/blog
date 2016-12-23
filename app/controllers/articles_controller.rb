class ArticlesController < ApplicationController
  
  def index
    @articles = Article.all
  end
 
  def show
    @article = Article.find(params[:id])
  end
  
  def show
    @article = Article.find(params[:id])
  end

  def new
  end

  def create

    #self.render(:plain => self.params()[:article].inspect)

    @article = Article.new(article_params())

    @article.save
    self.redirect_to(@article)

  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end
end
