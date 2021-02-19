class AnimeItemsController < ApplicationController
  before_action :set_anime_list

  def create
    @anime_item = @anime_list.anime_items.create(anime_item_params)
    redirect_to @anime_list
  end

  def destroy
    @anime_item = @anime_list.anime_items.find(params[:id])
    if @anime_item.destroy
      flash[:success] = "Anime List item was deleted."
    else
      flash[:error] = "Anime List item could not be deleted."
    end
    redirect_to @anime_list
  end

  private

  def set_anime_list
     @anime_list = AnimeList.find(params[:anime_list_id])
  end

  def anime_item_params
    params[:anime_item].permit(:content)
  end
end
