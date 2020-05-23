class ComicsController < ApplicationController
  before_action :set_comic, only: [:show, :edit, :update, :destroy]
  before_action :admin_user_on, only: [:edit, :new, :destroy, :update, :create]

  def index
    @comics = Comic.all
  end

  def new
    @comic = Comic.new
  end

  def show
  end

  def create
    @comic = Comic.new(comic_params)
    if @comic.save
      flash[:notice] = "Comic was successfully created"
      redirect_to comics_path
    else
      render "new"
    end
  end

  def edit
  end

  def update
    if @comic.update(comic_params)
      flash[:notice] = "Comic was updated"
      redirect_to comics_path
    else
      flash[:notice] = "Comic was not updated"
      render "edit"
    end
  end

  def destroy
    @comic.destroy
    flash[:notice] = "Comic was destoryed"
    redirect_to comics_path
  end

  private

    def set_comic
      @comic = Comic.find(params[:id])
    end

    def comic_params
      params.require(:comic).permit(:title, :decrpition, :by, :number, :siries, :picture)
    end
end
