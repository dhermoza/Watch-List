class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  private

  def list_params
    params.require(:list).permit(:name, :url)
  end
end
