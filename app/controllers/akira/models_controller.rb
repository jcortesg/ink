class Akira::ModelsController < ApplicationController
  layout "akira"
  # GET /models
  # GET /models.json
  def index
    @models = Model.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @models }
    end
  end

  # GET /models/1
  # GET /models/1.json
  def show
    @model = Model.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @model }
    end
  end


  # GET /models/1/edit
  def edit
    @model = User.find(params[:id])
  end


  # PUT /models/1
  # PUT /models/1.json
  def update
    
    @model = User.find(params[:id])
    p params
    respond_to do |format|
      if @model.update_attributes(params[:model])
        format.html { redirect_to root_path, notice: 'Model was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { redirect_to root_path, notice: 'Model was successfully updated.' }
        format.json { render json: @model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /models/1
  # DELETE /models/1.json
  def destroy
    @model = Model.find(params[:id])
    @model.destroy

    respond_to do |format|
      format.html { redirect_to models_url }
      format.json { head :no_content }
    end
  end
end
