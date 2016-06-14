class Muni::UsersController < ApplicationController
  before_action :set_muni, only: [:show, :edit, :update]

  # GET /muni/users/1
  # GET /muni/users/1.json
  def show
  end

  # GET /muni/users/1/edit
  def edit
  end

  # PATCH/PUT /muni/users/1
  # PATCH/PUT /muni/users/1.json
  def update
    respond_to do |format|
      if @muni.update(muni_params)
        format.html { redirect_to @muni, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @muni }
      else
        format.html { render :edit }
        format.json { render json: @muni.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_muni
      @muni = User.find(current_user)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def muni_params
      params.require(:user).permit(:name, :region, :comuna, :mayor, :responsable, :role,  :info, :phone, :photo_cache, :photo)
    end
end
