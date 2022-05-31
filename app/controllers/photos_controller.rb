class PhotosController < ApplicationController
  
  #photos controller 

  def index
    matching_photos = Photo.all

    #@q = Photo.ransack(params[:q])
    #@list_of_photos = @q.result

    @list_of_photos = matching_photos.order({ :created_at => :desc })

    render({ :template => "photos/index.html.erb" })

  end

  def show
    the_id = params.fetch("path_id")

    matching_photos = Photo.where({ :id => the_id })

    @the_photo = matching_photos.at(0)

    render({ :template => "photos/show.html.erb" })
  end

  def create
    the_photo = Photo.new
    the_photo.image = params.fetch("query_image")
    the_photo.caption = params.fetch("query_caption")
    the_photo.owner_id = session.fetch(:user_id)

      if the_photo.valid?
        the_photo.save
        redirect_to("/garments/#{the_photo.id}", { :notice => "Photo created successfully." })
      else
        redirect_to("/garments", { :alert => the_photo.errors.full_messages.to_sentence })
      end

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

      if the_photo.valid?
        the_photo.save
        redirect_to("/garments/#{the_photo.id}", { :notice => "Photo updated successfully."} )
      else
        redirect_to("/garments/#{the_photo.id}", { :alert => the_photo.errors.full_messages.to_sentence })
      end
  end


  def updated_color
     #Parameters: {"favcolor"=>"#131313", "path_id"=>"14"}

    the_id = params.fetch("path_id")
    the_photo = Photo.where({ :id => the_id }).at(0)

    the_photo.hex_code = params.fetch("favcolor")

    the_photo.save
    
    redirect_to("/garments/#{the_photo.id}", { :notice => "Color updated successfully."} )

  end
  

  def destroy
    the_id = params.fetch("path_id")
    the_photo = Photo.where({ :id => the_id }).at(0)

    the_photo.destroy

    redirect_to("/garments", { :notice => "Photo deleted successfully."} )

  end
end
