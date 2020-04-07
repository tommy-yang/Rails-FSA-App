class FsasController < ApplicationController
  before_action :set_fsa, only: [:show, :edit, :update, :destroy]

  # GET /fsas
  # GET /fsas.json
  def index
    @fsas = Fsa.all
  end

  # GET /fsas/1
  # GET /fsas/1.json
  def show
  end

  # GET /fsas/new
  def new
    @fsa = Fsa.new
  end

  # GET /fsas/1/edit
  def edit
  end

  # POST /fsas
  # POST /fsas.json
  def create
    @fsa = Fsa.new(fsa_params)

    respond_to do |format|
      if @fsa.save
        format.html { redirect_to @fsa, notice: 'Fsa was successfully created.' }
        format.json { render :show, status: :created, location: @fsa }
      else
        format.html { render :new }
        format.json { render json: @fsa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fsas/1
  # PATCH/PUT /fsas/1.json
  def update
    respond_to do |format|
      if @fsa.update(fsa_params)
        format.html { redirect_to @fsa, notice: 'Fsa was successfully updated.' }
        format.json { render :show, status: :ok, location: @fsa }
      else
        format.html { render :edit }
        format.json { render json: @fsa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fsas/1
  # DELETE /fsas/1.json
  def destroy
    @fsa.destroy
    respond_to do |format|
      format.html { redirect_to fsas_url, notice: 'Fsa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fsa
      @fsa = Fsa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fsa_params
      params.require(:fsa).permit(:fsacode)
    end
end
