class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list.id)
    else
      render 'new'
    end
  end

  def index
    puts "作成したキー #{ENV['SECRET_KEY']}"
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    list = List.find(params[:id])
    list.update(list_params)
    list.save
    redirect_to list_path(list.id)
    # showアクションにリダイレクトする場合は引数に必ずidが必要
  end

  def destroy
    list = List.find(params[:id])
    list.destroy
    redirect_to '/lists'
  end

  private

  def list_params
    params.require(:list).permit(:title,:body,:image)
  end
end
