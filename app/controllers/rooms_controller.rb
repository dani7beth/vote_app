class RoomsController < ApplicationController
  def index
    #i dont think we need to do anything with a model in here, just give back html
    @rooms = Room.all
    @room = Room.new
  end

  def new
    @room = Room.new
    @tags = Thing.tags
  end
  def create
    code = "room#{Room.all.size + 1}"
    @room - Room.create(code: code, tag: params[:tag], num_users:params[:num_users])
    redirect_to root_path 
  end
  def room_things
    @room = Room.find(params[:id])
    @things = @room.get_things #things that match room tag name
  end

  def find_room
    @room = Room.find_by(code: params[:room][:code])
    if @room
      @user = @room.users.create
      render :room_things
    else
      redirect_to root_error_path
    end
  end

  def like_thing
    @thing = Thing.find(params[:id])
    @room = Room.find(params[:room_id])
    @user = User.find(params[:user_id])
    Like.create(thing_id: @thing.id, room_id: @room.id, user_id: @room.id)
    #after i like soemthing i need to check if all users have liked that thing
    all_users_like_thing = true
    if all_users_like_thing
      #I want to go to match patch
    else
      #i want to continue to alllow user to like/dislike things
    end
  end


end
