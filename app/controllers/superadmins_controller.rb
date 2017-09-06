class SuperadminsController < ApplicationController
  def new
  end

  def edit
  end

def delmod
  @superadmin=Superadmin.first
  # we get moderators that belongs to that superadmins
  @moderators= @superadmin.moderators
 if params[:id]
   @moderators.find_by_id(params[:id]).destroy
   redirect_to controller: "superadmins" ,action:"delmod"
 end
end
  # this page renders the moderators under that superadmin
  def index
     #displays session variable onto the console
     puts session[:current_user_id]
     # here we get the superadmin of the particular id
     @superadmin=Superadmin.first
     # we get moderators that belongs to that superadmins
     @moderators= @superadmin.moderators
  end


 # this function is responsible for creating a superadmin in the system
  def create
     # created new instance variable for superadmin class
     @superadmin=Superadmin.new(superadmin_params)
     # checking if the superadmin saves into the superadmins table
     if @superadmin.save!
      # render responsibility page for superadmin
      session[:current_user_id]=@superadmin.id
      redirect_to(controller: "superadmins",action: "index")

     end
  end
# this function is resposible for permitting the parameters that  should be included
# in mass assignment
  def superadmin_params
     params.require(:superadmin).permit(:name,:email,:contact,:password)
  end
end
