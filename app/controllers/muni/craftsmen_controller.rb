class Muni::CraftsmenController < ApplicationController
  before_action :set_craftsman, only: [:show, :edit, :update, :destroy]

  # GET /muni/craftsmen
  # GET /muni/craftsmen.json
  def index
    @craftsmen = Craftsman.all
  end

  # GET /muni/craftsmen/1
  # GET /muni/craftsmen/1.json
  def show
  end

  # GET /muni/craftsmen/new
  def new
    @craftsman = Craftsman.new
  end

  # GET /muni/craftsmen/1/edit
  def edit
  end

  # POST /muni/craftsmen
  # POST /muni/craftsmen.json
  def create
    @craftsman = Craftsman.new(craftsman_params)

    respond_to do |format|
      if @craftsman.save
        format.html { redirect_to @craftsman, notice: 'Craftsman was successfully created.' }
        format.json { render :show, status: :created, location: @craftsman }
      else
        format.html { render :new }
        format.json { render json: @craftsman.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /muni/craftsmen/1
  # PATCH/PUT /muni/craftsmen/1.json
  def update
    respond_to do |format|
      if @craftsman.update(craftsman_params)
        format.html { redirect_to @craftsman, notice: 'Craftsman was successfully updated.' }
        format.json { render :show, status: :ok, location: @craftsman }
      else
        format.html { render :edit }
        format.json { render json: @craftsman.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /muni/craftsmen/1
  # DELETE /muni/craftsmen/1.json
  def destroy
    @craftsman.destroy
    respond_to do |format|
      format.html { redirect_to craftsmen_url, notice: 'Craftsman was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_craftsman
      @craftsman = Craftsman.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def craftsman_params
      params.fetch(:craftsman).permit(:name, :email, :region, :bio, :category, :comuna, :photo_cache, :photo, :phone, :user_id, :age)
    end
end
