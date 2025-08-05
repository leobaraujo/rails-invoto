class MicroregionsController < ApplicationController
  before_action :set_microregion, only: %i[ show edit update destroy ]

  # GET /microregions or /microregions.json
  def index
    @microregions = Microregion.all
  end

  # GET /microregions/1 or /microregions/1.json
  def show
  end

  # GET /microregions/new
  def new
    @microregion = Microregion.new
  end

  # GET /microregions/1/edit
  def edit
  end

  # POST /microregions or /microregions.json
  def create
    @microregion = Microregion.new(microregion_params)

    respond_to do |format|
      if @microregion.save
        format.html { redirect_to @microregion, notice: "Microregion was successfully created." }
        format.json { render :show, status: :created, location: @microregion }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @microregion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /microregions/1 or /microregions/1.json
  def update
    respond_to do |format|
      if @microregion.update(microregion_params)
        format.html { redirect_to @microregion, notice: "Microregion was successfully updated." }
        format.json { render :show, status: :ok, location: @microregion }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @microregion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /microregions/1 or /microregions/1.json
  def destroy
    @microregion.destroy!

    respond_to do |format|
      format.html { redirect_to microregions_path, status: :see_other, notice: "Microregion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_microregion
      @microregion = Microregion.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def microregion_params
      params.expect(microregion: [ :name, :region_id ])
    end
end
