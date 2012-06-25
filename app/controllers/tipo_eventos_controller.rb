class TipoEventosController < ApplicationController
  # GET /tipo_eventos
  # GET /tipo_eventos.json
  def index
    @tipo_eventos = TipoEvento.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tipo_eventos }
    end
  end

  # GET /tipo_eventos/1
  # GET /tipo_eventos/1.json
  def show
    @tipo_evento = TipoEvento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tipo_evento }
    end
  end

  # GET /tipo_eventos/new
  # GET /tipo_eventos/new.json
  def new
    @tipo_evento = TipoEvento.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tipo_evento }
    end
  end

  # GET /tipo_eventos/1/edit
  def edit
    @tipo_evento = TipoEvento.find(params[:id])
  end

  # POST /tipo_eventos
  # POST /tipo_eventos.json
  def create
    @tipo_evento = TipoEvento.new(params[:tipo_evento])

    respond_to do |format|
      if @tipo_evento.save
        format.html { redirect_to @tipo_evento, notice: 'Tipo evento was successfully created.' }
        format.json { render json: @tipo_evento, status: :created, location: @tipo_evento }
      else
        format.html { render action: "new" }
        format.json { render json: @tipo_evento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_eventos/1
  # PUT /tipo_eventos/1.json
  def update
    @tipo_evento = TipoEvento.find(params[:id])

    respond_to do |format|
      if @tipo_evento.update_attributes(params[:tipo_evento])
        format.html { redirect_to @tipo_evento, notice: 'Tipo evento was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tipo_evento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_eventos/1
  # DELETE /tipo_eventos/1.json
  def destroy
    @tipo_evento = TipoEvento.find(params[:id])
    @tipo_evento.destroy

    respond_to do |format|
      format.html { redirect_to tipo_eventos_url }
      format.json { head :no_content }
    end
  end
end
