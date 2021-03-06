class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path
  end

   private
    def article_params
      params.require(:article).permit(:artist_id, :album_id, :label, :year, :reviewer, :review_date)
    end

end
