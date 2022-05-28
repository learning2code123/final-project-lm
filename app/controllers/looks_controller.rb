class LooksController < ApplicationController
  def index
    #matching_photos = Photo.all

    #@list_of_photos = matching_photos.order({ :created_at => :desc })

    #render({ :template => "photos/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_looks = Looks.where({ :id => the_id })

    @the_look = matching_looks.at(0)

    render({ :template => "looks/show.html.erb" })
  end

  def create
    the_look = Look.new
    the_look.garment_1 = params.fetch("##")
    the_look.garment_2 = params.fetch("##")
    the_look.garment_3 = params.fetch("##")
    the_look.garment_4 = params.fetch("##")
    the_look.garment_5 = params.fetch("##")
    #the_photo.caption = params.fetch("query_caption")
    #the_photo.owner_id = params.fetch("query_owner_id")

    #if the_look.valid?
      the_look.save
      redirect_to("/looks/:path_id", { :notice => "Look created successfully." })
    #else
      #redirect_to("/garments", { :alert => the_photo.errors.full_messages.to_sentence })
    #end

    render({ :template => "looks/create.html.erb" })

  end

  #def update
    #the_id = params.fetch("path_id")
    #the_photo = Photo.where({ :id => the_id }).at(0)

    #the_photo.image = params.fetch("query_image")
    #the_photo.caption = params.fetch("query_caption")
    #the_photo.owner_id = params.fetch("query_owner_id")

    #if the_photo.valid?
      #the_photo.save
      #redirect_to("/garments/#{the_photo.id}", { :notice => "Photo updated successfully."} )
    #else
      #redirect_to("/garments/#{the_photo.id}", { :alert => the_photo.errors.full_messages.to_sentence })
    #end
  #end

  #def destroy
    #the_id = params.fetch("path_id")
    #the_photo = Photo.where({ :id => the_id }).at(0)

    #the_photo.destroy

    #redirect_to("/garments", { :notice => "Photo deleted successfully."} )
  #end
end
