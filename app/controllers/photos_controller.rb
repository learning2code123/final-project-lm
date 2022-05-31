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
    @the_photo = Photo.where({ :id => the_id }).at(0)

    @the_photo.image = params.fetch("query_image")
    @the_photo.caption = params.fetch("query_caption")
    @the_photo.owner_id = params.fetch("query_owner_id")
    #the_photo.favcolor = params.fetch("favcolor")

    #validates(:hex_code, { :presence => true })
    #validates(:type, { :presence => true })

      if @the_photo.valid?
        @the_photo.save
        redirect_to("/garments/#{@the_photo.id}", { :notice => "Photo updated successfully."} )
      else
        redirect_to("/garments/#{@the_photo.id}", { :alert => @the_photo.errors.full_messages.to_sentence })
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


#FORMULA

#HEX TO RGB

#"the_photo.hex_code".match(/^#(..)(..)(..)$/).captures.map(&:hex)

#i need to fetch the r, g and b from here

#user_input_r =
#user_input_g =
#user_input_b =

#small r formula = R+r/2

#small_r_numerator = (user_input_r + color.code_r)

#small_r_final = small_r_numerator / 2

#distance_1st_part = small_r / 256

#distance_1st_part_final = distance_1st_part + 2

#delta_r = user_input_r - color.code_r

#delta_r_squared = delta_r ** 2

#distance_2nd_part = distance_1st_part_final * delta_r_squared

#delta_g = user_input_g - color.code_g

#delta_g_squared = delta_g ** 2

#distance_3rd_part = 4 * delta_g_squared

#delta_b = user_input_b - color.code_b

#delta_b_squared = delta_b ** 2

#distance_4th_part_numerator = 255 - small_r_final

#distance_4th_part_fraction = distance_4th_part_numerator/256

#distance_4th_part_parenthesis = distance_4th_part_fraction + 2

#distance_4th_part_final = distance_4th_part_parenthesis * delta_b_squared

#distance_final_sum = distance_2nd_part + distance_3rd_part + distance_4th_part_final

#distance_result = distance_final_sum ** 0.5







  

  def destroy
    the_id = params.fetch("path_id")
    the_photo = Photo.where({ :id => the_id }).at(0)

    the_photo.destroy

    redirect_to("/garments", { :notice => "Photo deleted successfully."} )

  end
end
