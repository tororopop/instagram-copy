class PicturesController < ApplicationController
  before_action :set_picture, only: [:edit, :update, :destroy]

  def index
    @pictures = Picture.all
  end

  def new
      @picture = Picture.new
  end

  def create
    @picture = Picture.new(pictures_params)
    # @picture.user_id = current_user.id
    if @picture.save
      redirect_to pictures_path, notice: "画像を投稿しました！"
      # NoticeMailer.sendmail_picture(@picture).deliver
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @picture.update(pictures_params)
      redirect_to pictures_path, notice: "投稿を編集しました！"
    else
      render 'edit'
    end
  end

  def destroy
    @picture.destroy
    redirect_to pictures_path, notice: "画像を削除しました！"
  end

  private
  def pictures_params
    params.require(:picture).permit(:file, :caption)
  end

  def set_picture
    @picture = Picture.find(params[:id]) #取得してるのはparametersのうちid 一つだけ(故にストロングパラメータも使ってない)。
  end
end
