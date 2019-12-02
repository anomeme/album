class ArticlesController < ApplicationController
  # before_action :authenticate_user!, except: :index
  before_action :set_article, only:[:show, :edit, :update, :destroy]
  
  def index
    @articles = Article.includes(:spot).page(params[:page]).per(9).order("created_at DESC")
    @spots = Spot.all
  end

  def show
    @relation_spots = Article.where(prefecture: @article.prefecture).where('id != ?', @article.id).order("created_at DESC")
    @parent_spot = Spot.find(@article.spot.parent_id)
  end
  
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
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
    params.require(:article).permit(
      :title,
      :detail,
      :image,
      :spot_id
    )
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
