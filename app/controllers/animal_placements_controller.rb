class AnimalPlacementsController < ApplicationController
  before_action :set_animal_placement, only: %i[ show edit update destroy ]

  # GET /animal_placements or /animal_placements.json
  def index
    @animal_placements = AnimalPlacement.all
  end

  # GET /animal_placements/1 or /animal_placements/1.json
  def show
  end

  # GET /animal_placements/new
  def new
    @animal_placement = AnimalPlacement.new
  end

  # GET /animal_placements/1/edit
  def edit
  end

  # POST /animal_placements or /animal_placements.json
  def create
    @animal_placement = AnimalPlacement.new(animal_placement_params)

    respond_to do |format|
      if @animal_placement.save
        format.html { redirect_to animal_placement_url(@animal_placement), notice: "Animal placement was successfully created." }
        format.json { render :show, status: :created, location: @animal_placement }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animal_placement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animal_placements/1 or /animal_placements/1.json
  def update
    respond_to do |format|
      if @animal_placement.update(animal_placement_params)
        format.html { redirect_to animal_placement_url(@animal_placement), notice: "Animal placement was successfully updated." }
        format.json { render :show, status: :ok, location: @animal_placement }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animal_placement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animal_placements/1 or /animal_placements/1.json
  def destroy
    @animal_placement.destroy

    respond_to do |format|
      format.html { redirect_to animal_placements_url, notice: "Animal placement was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animal_placement
      @animal_placement = AnimalPlacement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animal_placement_params
      params.require(:animal_placement).permit(:room, :location)
    end
end
