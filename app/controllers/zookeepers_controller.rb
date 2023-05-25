class ZookeepersController < ApplicationController
  before_action :set_zookeeper, only: %i[ show edit update destroy ]

  # GET /zookeepers or /zookeepers.json
  def index
    @zookeepers = Zookeeper.all
  end

  # GET /zookeepers/1 or /zookeepers/1.json
  def show
  end

  # GET /zookeepers/new
  def new
    @zookeeper = Zookeeper.new
  end

  # GET /zookeepers/1/edit
  def edit
  end

  # POST /zookeepers or /zookeepers.json
  def create
    @zookeeper = Zookeeper.new(zookeeper_params)

    respond_to do |format|
      if @zookeeper.save
        format.html { redirect_to zookeeper_url(@zookeeper), notice: "Zookeeper was successfully created." }
        format.json { render :show, status: :created, location: @zookeeper }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @zookeeper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zookeepers/1 or /zookeepers/1.json
  def update
    respond_to do |format|
      if @zookeeper.update(zookeeper_params)
        format.html { redirect_to zookeeper_url(@zookeeper), notice: "Zookeeper was successfully updated." }
        format.json { render :show, status: :ok, location: @zookeeper }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @zookeeper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zookeepers/1 or /zookeepers/1.json
  def destroy
    @zookeeper.destroy

    respond_to do |format|
      format.html { redirect_to zookeepers_url, notice: "Zookeeper was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zookeeper
      @zookeeper = Zookeeper.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def zookeeper_params
      params.require(:zookeeper).permit(:name, :dateofbirth)
    end
end
