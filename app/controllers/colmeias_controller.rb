class ColmeiasController < ApplicationController
  # GET /colmeias
  # GET /colmeias.json
  def index
    @colmeias = Colmeia.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @colmeias }
    end
  end

  # GET /colmeias/1
  # GET /colmeias/1.json
  def show
    @colmeia = Colmeia.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @colmeia }
    end
  end

  # GET /colmeias/new
  # GET /colmeias/new.json
  def new
    @colmeia = Colmeia.new
    @areas = Area.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @colmeia }
    end
  end

  # GET /colmeias/1/edit
  def edit
    @areas = Area.all
    @colmeia = Colmeia.find(params[:id])
    puts(@colmeia.area_id)
    puts 'rrrrr'
  end

  # POST /colmeias
  # POST /colmeias.json
  def create
    
    @colmeia = Colmeia.new(params[:colmeia])

    respond_to do |format|
      if @colmeia.save
        format.html { redirect_to @colmeia, notice: 'Colmeia was successfully created.' }
        format.json { render json: @colmeia, status: :created, location: @colmeia }
      else
        format.html { render action: "new" }
        format.json { render json: @colmeia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /colmeias/1
  # PUT /colmeias/1.json
  def update
    @colmeia = Colmeia.find(params[:id])

    respond_to do |format|
      if @colmeia.update_attributes(params[:colmeia])
        format.html { redirect_to @colmeia, notice: 'Colmeia was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @colmeia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /colmeias/1
  # DELETE /colmeias/1.json
  def destroy
    @colmeia = Colmeia.find(params[:id])
    @colmeia.destroy

    respond_to do |format|
      format.html { redirect_to colmeias_url }
      format.json { head :no_content }
    end
  end
end
