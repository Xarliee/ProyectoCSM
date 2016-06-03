class Muni::PagesController < ApplicationController
   

  # GET /muni/pages
  # GET /muni/pages.json
  def index
    @users = User.all 
  end
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to user_url, notice: 'Page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


end