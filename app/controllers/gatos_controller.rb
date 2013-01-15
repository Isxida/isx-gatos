class GatosController < ApplicationController
  # GET /gatos
  # GET /gatos.json
  def index
    @gatos = Gato.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gatos }
    end
  end

  # GET /gatos/1
  # GET /gatos/1.json
  def show
    @gato = Gato.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gato }
    end
  end

  # GET /gatos/new
  # GET /gatos/new.json
  def new
    @gato = Gato.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gato }
    end
  end

  # GET /gatos/1/edit
  def edit
    @gato = Gato.find(params[:id])
  end

  # POST /gatos
  # POST /gatos.json
  def create
    @gato = Gato.new(params[:gato])

    respond_to do |format|
      if @gato.save
        format.html { redirect_to @gato, notice: 'Gato was successfully created.' }
        format.json { render json: @gato, status: :created, location: @gato }
      else
        format.html { render action: "new" }
        format.json { render json: @gato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gatos/1
  # PUT /gatos/1.json
  def update
    @gato = Gato.find(params[:id])

    respond_to do |format|
      if @gato.update_attributes(params[:gato])
        format.html { redirect_to @gato, notice: 'Gato was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gatos/1
  # DELETE /gatos/1.json
  def destroy
    @gato = Gato.find(params[:id])
    @gato.destroy

    respond_to do |format|
      format.html { redirect_to gatos_url }
      format.json { head :no_content }
    end
  end
end
