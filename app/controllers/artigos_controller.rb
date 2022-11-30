class ArtigosController < ApplicationController
  before_action :set_artigo, only: %i[ show edit update destroy ]

  # GET /artigos or /artigos.json
  def index
    @artigos = Artigo.all
  end

  # GET /artigos/1 or /artigos/1.json
  def show
  end

  # GET /artigos/new
  def new
    @artigo = Artigo.new
  end

  # GET /artigos/1/edit
  def edit
  end

  # POST /artigos or /artigos.json
  def create
    @artigo = Artigo.new(artigo_params)

    respond_to do |format|
      if @artigo.save
        format.html { redirect_to artigo_url(@artigo), notice: "Artigo was successfully created." }
        format.json { render :show, status: :created, location: @artigo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artigo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artigos/1 or /artigos/1.json
  def update
    respond_to do |format|
      if @artigo.update(artigo_params)
        format.html { redirect_to artigo_url(@artigo), notice: "Artigo was successfully updated." }
        format.json { render :show, status: :ok, location: @artigo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artigo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artigos/1 or /artigos/1.json
  def destroy
    @artigo.destroy

    respond_to do |format|
      format.html { redirect_to artigos_url, notice: "Artigo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artigo
      @artigo = Artigo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artigo_params
      params.require(:artigo).permit(:Titulo, :Descrição)
    end
end
