class AnimeItemsController < ApplicationController
  before_action :set_anime_list
  before_action :set_anime_item, except: [:create]

  def create
    @anime_item = @anime_list.anime_items.create(anime_item_params)
    redirect_to @anime_list
  end

  def destroy

    if @anime_item.destroy
      flash[:success] = "Anime List item was deleted."
    else
      flash[:error] = "Anime List item could not be deleted."
    end
    redirect_to @anime_list
  end

  def complete
    @anime_item.update_attribute(:completed_at, Time.now)
    redirect_to @anime_list, notice: "Anime item completed"
  end

  private

  def set_anime_list
     @anime_list = AnimeList.find(params[:anime_list_id])
  end

  def set_anime_item
    @anime_item = @anime_list.anime_items.find(params[:id])
  end

  def anime_item_params
    params[:anime_item].permit(:content)
  end
end
