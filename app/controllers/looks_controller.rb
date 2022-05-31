class LooksController < ApplicationController
  
  def index
    matching_looks = @current_user.looks

    @list_of_looks = matching_looks.order({ :created_at => :desc })

    render({ :template => "looks/index.html.erb" })
  end

  def show

    the_id = params.fetch("path_id")

    matching_looks = Looks.where({ :id => the_id })

    @the_look = matching_looks.at(0)

    render({ :template => "looks/show.html.erb" })
  end

  def create

    @the_look = Looks.new
    @the_look.owner_id = session.fetch(:user_id)
    @the_look.garment_1 = params.fetch("garment_1")
    @the_look.garment_2 = params.fetch("garment_2" , nil)
    @the_look.garment_3 = params.fetch("garment_3", nil)
    @the_look.garment_4 = params.fetch("garment_4", nil)
    @the_look.garment_5 = params.fetch("garment_5", nil)

    if @the_look.valid?
      @the_look.save
      redirect_to("/looks/#{@the_look.id}", { :notice => "Look created successfully." })
    else
      redirect_to("/looks", { :alert => the_look.errors.full_messages.to_sentence })
    end
  end

  def update

    the_id = params.fetch("path_id")
    @the_look = Looks.where({ :id => the_id }).at(0)

    @the_look.user_id = session.fetch(:owner_id)
    @the_look.garment_1 = params.fetch("garment_1")

    if @the_look.valid?
      @the_look.save
      redirect_to("/looks/#{@the_look.id}", { :notice => "Look updated successfully."} )
    else
      redirect_to("/looks/#{@the_look.id}", { :alert => the_look.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    @the_look = Looks.where({ :id => the_id }).at(0)

    @the_look.destroy

    redirect_to("/looks", { :notice => "Look deleted successfully."} )
  end
end
