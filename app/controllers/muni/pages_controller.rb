class Muni::PagesController < ApplicationController
   

  # GET /muni/pages
  # GET /muni/pages.json
  def index
    @users= User.all
  end

def show
  @user = User.find(current_user)
end
def new

end

def profile

end

end