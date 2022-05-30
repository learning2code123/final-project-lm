class PhotosController < ApplicationController
  
  #migrated from looks controller
  
  def create
    the_look = Looks.new
    the_look.owner_id = session.fetch(:user_id)
    the_look.garment_1 = params.fetch("garment_1_id")
    #the_look.garment_2 = params.fetch("##")
    #the_look.garment_3 = params.fetch("##")
    #the_look.garment_4 = params.fetch("##")
    #the_look.garment_5 = params.fetch("##")
    
    #the_photo.caption = params.fetch("query_caption")
    #the_photo.owner_id = params.fetch("query_owner_id")

    if the_look.valid?
    the_look.save
  #if session.fetch(:user_id) != nil
    #organize the order of the conditionals once this is sorted out
      redirect_to("/looks", { :notice => "Look created successfully." })
    else
      redirect_to("/garments/#{the_look.garment_1}", { :alert => the_photo.errors.full_messages.to_sentence })
    #else
      #redirect_to "/user_sign_in", :alert => "Please sign in first"
    #end
    #end

    render({ :template => "looks/create.html.erb" })
      end
    end
  
  #photos controller 

  def index
    matching_photos = Photo.all

    #@q = Photo.ransack(params[:q])
    #@list_of_photos = @q.result

    @list_of_photos = matching_photos.order({ :created_at => :desc })

    #if session.fetch(:user_id) != nil
      render({ :template => "photos/index.html.erb" })
    #else
      #redirect_to "/user_sign_in", :alert => "Please sign in first"
    #end   
  end

  def show
    the_id = params.fetch("path_id")

    matching_photos = Photo.where({ :id => the_id })

    @the_photo = matching_photos.at(0)

      #if session.fetch(:user_id) != nil
      render({ :template => "photos/show.html.erb" })
    #else
      #redirect_to "/user_sign_in", :alert => "Please sign in first"
    #end
  end

  def create
    the_photo = Photo.new
    the_photo.image = params.fetch("query_image")
    the_photo.caption = params.fetch("query_caption")
    the_photo.owner_id = session.fetch(:user_id)

    #if session.fetch(:user_id) != nil
      if the_photo.valid?
        the_photo.save
        redirect_to("/garments/#{the_photo.id}", { :notice => "Photo created successfully." })
      else
        redirect_to("/garments", { :alert => the_photo.errors.full_messages.to_sentence })
      end
    #else
      #redirect_to "/user_sign_in", :alert => "Please sign in first"
    #end

  end

  def update

    the_id = params.fetch("path_id")
    the_photo = Photo.where({ :id => the_id }).at(0)

    the_photo.image = params.fetch("query_image")
    the_photo.caption = params.fetch("query_caption")
    the_photo.owner_id = params.fetch("query_owner_id")
    #the_photo.favcolor = params.fetch("favcolor")

    #validates(:hex_code, { :presence => true })
    #validates(:type, { :presence => true })

    #if session.fetch(:user_id) != nil
      if the_photo.valid?
        the_photo.save
        redirect_to("/garments/#{the_photo.id}", { :notice => "Photo updated successfully."} )
      else
        redirect_to("/garments/#{the_photo.id}", { :alert => the_photo.errors.full_messages.to_sentence })
      end
    #else
      #redirect_to "/user_sign_in", :alert => "Please sign in first"
    #end
  end


  def updated_color
     #Parameters: {"favcolor"=>"#131313", "path_id"=>"14"}

    the_id = params.fetch("path_id")
    the_photo = Photo.where({ :id => the_id }).at(0)

    the_photo.hex_code = params.fetch("favcolor")

    the_photo.save
    
    #if session.fetch(:user_id) != nil
    redirect_to("/garments/#{the_photo.id}", { :notice => "Color updated successfully."} )
    #else
      #redirect_to "/user_sign_in", :alert => "Please sign in first"
    #end  

  end
  

  def destroy
    the_id = params.fetch("path_id")
    the_photo = Photo.where({ :id => the_id }).at(0)

    the_photo.destroy

    #if session.fetch(:user_id) != nil
    redirect_to("/garments", { :notice => "Photo deleted successfully."} )
    #else
      #redirect_to "/user_sign_in", :alert => "Please sign in first"
    #end 
  end
end
