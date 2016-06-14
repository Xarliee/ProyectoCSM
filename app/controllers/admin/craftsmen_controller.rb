class Admin::CraftsmenController < ApplicationController
  before_action :set_admin_craftsman, only: [:show, :edit, :update, :destroy]

  # GET /admin/craftsmen
  # GET /admin/craftsmen.json
  def index
    @admin_craftsmen = Admin::Craftsman.all
  end

  # GET /admin/craftsmen/1
  # GET /admin/craftsmen/1.json
  def show
  end

  # GET /admin/craftsmen/new
  def new
    @admin_craftsman = Admin::Craftsman.new
  end

  # GET /admin/craftsmen/1/edit
  def edit
  end

  # POST /admin/craftsmen
  # POST /admin/craftsmen.json
  def create
    @admin_craftsman = Admin::Craftsman.new(admin_craftsman_params)

    respond_to do |format|
      if @admin_craftsman.save
        format.html { redirect_to @admin_craftsman, notice: 'Craftsman was successfully created.' }
        format.json { render :show, status: :created, location: @admin_craftsman }
      else
        format.html { render :new }
        format.json { render json: @admin_craftsman.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/craftsmen/1
  # PATCH/PUT /admin/craftsmen/1.json
  def update
    respond_to do |format|
      if @admin_craftsman.update(admin_craftsman_params)
        format.html { redirect_to @admin_craftsman, notice: 'Craftsman was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_craftsman }
      else
        format.html { render :edit }
        format.json { render json: @admin_craftsman.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/craftsmen/1
  # DELETE /admin/craftsmen/1.json
  def destroy
    @admin_craftsman.destroy
    respond_to do |format|
      format.html { redirect_to admin_craftsmen_url, notice: 'Craftsman was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_craftsman
      @admin_craftsman = Admin::Craftsman.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_craftsman_params
      params.fetch(:admin_craftsman, {})
    end
end
