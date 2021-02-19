class AnimeListsController < ApplicationController
  before_action :set_anime_list, only: %i[ show edit update destroy ]

  # GET /anime_lists or /anime_lists.json
  def index
    @anime_lists = AnimeList.all
  end

  # GET /anime_lists/1 or /anime_lists/1.json
  def show
  end

  # GET /anime_lists/new
  def new
    @anime_list = AnimeList.new
  end

  # GET /anime_lists/1/edit
  def edit
  end

  # POST /anime_lists or /anime_lists.json
  def create
    @anime_list = AnimeList.new(anime_list_params)

    respond_to do |format|
      if @anime_list.save
        format.html { redirect_to @anime_list, notice: "Anime list was successfully created." }
        format.json { render :show, status: :created, location: @anime_list }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @anime_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anime_lists/1 or /anime_lists/1.json
  def update
    respond_to do |format|
      if @anime_list.update(anime_list_params)
        format.html { redirect_to @anime_list, notice: "Anime list was successfully updated." }
        format.json { render :show, status: :ok, location: @anime_list }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @anime_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anime_lists/1 or /anime_lists/1.json
  def destroy
    @anime_list.destroy
    respond_to do |format|
      format.html { redirect_to anime_lists_url, notice: "Anime list was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anime_list
      @anime_list = AnimeList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def anime_list_params
      params.require(:anime_list).permit(:title, :description)
    end
end
