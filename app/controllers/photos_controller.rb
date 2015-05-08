class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end
  def new
    @photo = Photo.new
  end
  def create
    Photo.create(photo_params)
    redirect_to photos_path
  end
  def photo_params
    params.require(:photo).permit(:name, :image)
  end
  def show
    @photo = Photo.find(params[:id])
  end
  def edit
    @photo = Photo.find(params[:id])
  end
  def update
    @photo = Photo.find(params[:id])
    redirect_to photos_path
  end
end
