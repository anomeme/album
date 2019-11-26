class ArticlesController < ApplicationController
  # before_action :authenticate_user!, except: :index
  before_action :set_article, only:[:edit, :update, :destroy]
  
  def index
    @articles = Article.order("created_at DESC")
  end
  
  def new
    @article = Article.new
  end

  def create
    @article = Article.create(article_params)
    if @article.save
      redirect_to root_path
    else
      render "new"
    end
  end

  def edit
  end

  def update
    if @article.update(article_params)
      redirect_to article_photos_path(@article), notice: 'グループを編集しました。'
    else
      render :edit
    end
  end

  def destroy
    @article.destroy
    redirect_to root_path, notice: "削除完了"
  end


  private

  def article_params
    params.require(:article).permit(:title, :detail, :image, :prefecture)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
