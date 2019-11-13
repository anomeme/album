class PhotosController < ApplicationController
  before_action :set_picture

  def index
    @photo = Photo.new
    @photos = Photo.all
  end

  def create
    @photo = @picture.photos.new(photo_params)
    if @photo.save
      respond_to do |format|
        format.html { redirect_to picture_photos_path(@picture), notice: 'メッセージが送信されました' }
        format.json
      end
    else
      @photos = @picture.photos.includes(:user)
      flash.now[:alert] = 'メッセージを入力してください。'
      render :index
    end
  end

  private
  def photo_params
    params.require(:photo).permit(:text, :image).merge(user_id: current_user.id)
  end

  def set_picture
    # @picture = Picture.find(params[:picture_id])
  end

end
