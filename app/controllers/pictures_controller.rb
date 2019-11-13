class PicturesController < ApplicationController
  before_action :authenticate_user!, except: :index
  before_action :set_picture, only:[:edit, :update, :destroy]
  
  def index
    @pictures = Picture.order("created_at DESC")
  end
  
  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.create(picture_params)
    if @picture.save
      redirect_to root_path
    else
      render "new"
    end
  end

  def edit
  end

  def update
    if @picture.update(picture_params)
      redirect_to picture_photos_path(@picture), notice: 'グループを編集しました。'
    else
      render :edit
    end
  end

  def destroy
    @picture.destroy
    redirect_to root_path, notice: "削除完了"
  end


  private
  def picture_params
    params.require(:picture).permit(:title, :image)
  end

  def set_picture
    @picture = Picture.find(params[:id])
  end
end
