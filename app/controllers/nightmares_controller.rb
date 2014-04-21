class NightmaresController < ApplicationController
  before_action :set_nightmare, only: [:show, :edit, :update, :destroy]

  # GET /nightmares
  # GET /nightmares.json
  def index
    @nightmares = Nightmare.all
  end

  # GET /nightmares/1
  # GET /nightmares/1.json
  def show
  end

  # GET /nightmares/new
  def new
    @nightmare = Nightmare.new
  end

  # GET /nightmares/1/edit
  def edit
  end

  # POST /nightmares
  # POST /nightmares.json
  def create
    @nightmare = Nightmare.new(nightmare_params)

    respond_to do |format|
      if @nightmare.save
        format.html { redirect_to @nightmare, notice: 'Nightmare was successfully created.' }
        format.json { render :show, status: :created, location: @nightmare }
      else
        format.html { render :new }
        format.json { render json: @nightmare.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nightmares/1
  # PATCH/PUT /nightmares/1.json
  def update
    respond_to do |format|
      if @nightmare.update(nightmare_params)
        format.html { redirect_to @nightmare, notice: 'Nightmare was successfully updated.' }
        format.json { render :show, status: :ok, location: @nightmare }
      else
        format.html { render :edit }
        format.json { render json: @nightmare.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nightmares/1
  # DELETE /nightmares/1.json
  def destroy
    @nightmare.destroy
    respond_to do |format|
      format.html { redirect_to nightmares_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nightmare
      @nightmare = Nightmare.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nightmare_params
      params.require(:nightmare).permit(:name, :expression, :description)
    end
end
