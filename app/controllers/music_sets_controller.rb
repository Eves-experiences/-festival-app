class MusicSetsController < ApplicationController
  before_action :set_music_set, only: %i[ show edit update destroy ]

  # GET /music_sets or /music_sets.json
  def index
    @music_sets = MusicSet.all
  end

  # GET /music_sets/1 or /music_sets/1.json
  def show
  end

  # GET /music_sets/new
  def new
    @music_set = MusicSet.new
  end

  # GET /music_sets/1/edit
  def edit
  end

  # POST /music_sets or /music_sets.json
  def create
    @music_set = MusicSet.new(music_set_params)

    respond_to do |format|
      if @music_set.save
        format.html { redirect_to music_set_url(@music_set), notice: "Music set was successfully created." }
        format.json { render :show, status: :created, location: @music_set }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @music_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /music_sets/1 or /music_sets/1.json
  def update
    respond_to do |format|
      if @music_set.update(music_set_params)
        format.html { redirect_to music_set_url(@music_set), notice: "Music set was successfully updated." }
        format.json { render :show, status: :ok, location: @music_set }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @music_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /music_sets/1 or /music_sets/1.json
  def destroy
    @music_set.destroy

    respond_to do |format|
      format.html { redirect_to music_sets_url, notice: "Music set was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_music_set
      @music_set = MusicSet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def music_set_params
      params.require(:music_set).permit(:name, :style, :duration, :date)
    end
end
