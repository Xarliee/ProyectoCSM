class Muni::PagesController < ApplicationController
  before_action :set_muni_page, only: [:show, :edit, :update, :destroy]

  # GET /muni/pages
  # GET /muni/pages.json
  def index
    @muni_pages = Muni::Page.all
  end

  # GET /muni/pages/1
  # GET /muni/pages/1.json
  def show
  end

  # GET /muni/pages/new
  def new
    @muni_page = Muni::Page.new
  end

  # GET /muni/pages/1/edit
  def edit
  end

  # POST /muni/pages
  # POST /muni/pages.json
  def create
    @muni_page = Muni::Page.new(muni_page_params)

    respond_to do |format|
      if @muni_page.save
        format.html { redirect_to @muni_page, notice: 'Page was successfully created.' }
        format.json { render :show, status: :created, location: @muni_page }
      else
        format.html { render :new }
        format.json { render json: @muni_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /muni/pages/1
  # PATCH/PUT /muni/pages/1.json
  def update
    respond_to do |format|
      if @muni_page.update(muni_page_params)
        format.html { redirect_to @muni_page, notice: 'Page was successfully updated.' }
        format.json { render :show, status: :ok, location: @muni_page }
      else
        format.html { render :edit }
        format.json { render json: @muni_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /muni/pages/1
  # DELETE /muni/pages/1.json
  def destroy
    @muni_page.destroy
    respond_to do |format|
      format.html { redirect_to muni_pages_url, notice: 'Page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_muni_page
      @muni_page = Muni::Page.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def muni_page_params
      params.fetch(:muni_page, {})
    end
end
