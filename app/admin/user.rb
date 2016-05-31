ActiveAdmin.register User do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :name, :email, :password, :password_confirmation, :comuna, :region, :mayor, :phone, :responsable, :info, :role
#
# or
#
 #permit_params do
   #permitted = [:permitted, :attributes, ]
   #permitted << :other if params[:action] == 'create' && current_user.admin?
  # permitted
 #end
 #def permitted_params
  #    params.permit(:user => [:name, :email, :comuna, :region, :mayor, :phone, :responsable, :info, :role])
      # params.permit! # allow all parameters
   # end

  index do 
    column :name
    column :email
    column :responsable 
    column :mayor 
    column :role  do |user|
           
    end
      actions
  end

filter :null


  form do |f|
        inputs "Agrega un usuario" do
    
    input :name
    input :email
    #input :password
    #input :password_confirmation
    input :comuna
    input :region
    input :mayor
    input :responsable
    input :info
    input :phone
    input :role
  end
    actions
 end
end
