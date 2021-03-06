class ArticlesController < ApplicationController
  before_action :set_article, only: [:create, :edit, :update, :destroy]
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
    @article.save
    redirect_to article_path(@article)
  end

  def edit

  end

  def update
    @article.update(article_params)
    redirect_to article_path(@article)
  end

  def destroy
    @article.destroy
    redirect_to article_path(@article)
  end

  private

  def set_article
    @article = Article.new(article_params)
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end

end
