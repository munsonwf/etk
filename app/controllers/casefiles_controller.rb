class CasefilesController < ApplicationController
  before_action :set_casefile, only: [:show, :edit, :update, :destroy]

  # GET /casefiles
  # GET /casefiles.json
  def index
    @casefiles = Casefile.all
  end

  # GET /casefiles/1
  # GET /casefiles/1.json
  def show
  end

  # GET /casefiles/new
  def new
    @casefile = Casefile.new
  end

  # GET /casefiles/1/edit
  def edit
  end

  # POST /casefiles
  # POST /casefiles.json
  def create
    @casefile = Casefile.new(casefile_params)

    respond_to do |format|
      if @casefile.save
        format.html { redirect_to @casefile, notice: 'Casefile was successfully created.' }
        format.json { render :show, status: :created, location: @casefile }
      else
        format.html { render :new }
        format.json { render json: @casefile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /casefiles/1
  # PATCH/PUT /casefiles/1.json
  def update
    respond_to do |format|
      if @casefile.update(casefile_params)
        format.html { redirect_to @casefile, notice: 'Casefile was successfully updated.' }
        format.json { render :show, status: :ok, location: @casefile }
      else
        format.html { render :edit }
        format.json { render json: @casefile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /casefiles/1
  # DELETE /casefiles/1.json
  def destroy
    @casefile.destroy
    respond_to do |format|
      format.html { redirect_to casefiles_url, notice: 'Casefile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_casefile
      @casefile = Casefile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def casefile_params
      params.require(:casefile).permit(:client, :matter, :file_number, :date_opened, :date_closed, :location)
    end
end
