class ScreenPicsController < ApplicationController
  # GET /screen_pics
  # GET /screen_pics.json
  def index
    @screen_pics = ScreenPic.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @screen_pics }
    end
  end

  # GET /screen_pics/1
  # GET /screen_pics/1.json
  def show
    @screen_pic = ScreenPic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @screen_pic }
    end
  end

  # GET /screen_pics/new
  # GET /screen_pics/new.json
  def new
    @screen_pic = ScreenPic.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @screen_pic }
    end
  end

  # GET /screen_pics/1/edit
  def edit
    @screen_pic = ScreenPic.find(params[:id])
  end

  # POST /screen_pics
  # POST /screen_pics.json
  def create
    @screen_pic = ScreenPic.new(params[:screen_pic])

    respond_to do |format|
      if @screen_pic.save
        format.html { redirect_to @screen_pic, notice: 'Screen pic was successfully created.' }
        format.json { render json: @screen_pic, status: :created, location: @screen_pic }
      else
        format.html { render action: "new" }
        format.json { render json: @screen_pic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /screen_pics/1
  # PUT /screen_pics/1.json
  def update
    @screen_pic = ScreenPic.find(params[:id])

    respond_to do |format|
      if @screen_pic.update_attributes(params[:screen_pic])
        format.html { redirect_to @screen_pic, notice: 'Screen pic was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @screen_pic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /screen_pics/1
  # DELETE /screen_pics/1.json
  def destroy
    @screen_pic = ScreenPic.find(params[:id])
    @screen_pic.destroy

    respond_to do |format|
      format.html { redirect_to screen_pics_url }
      format.json { head :ok }
    end
  end
end
