class Akira::SitesController < ApplicationController
  layout 'site_create'
	def new
    @site = Site.new
  end
  # GET /sites/1/edit
  def edit
    @user = current_user
  end

  def update

    @user = User.find(params[:user_id])

    respond_to do |format|
      if @user.update_attributes!(params[:user])
        format.html { redirect_to root_path, notice: 'Model was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @model.errors, status: :unprocessable_entity }
      end
    end
  end


  # DELETE /sites/1
  # DELETE /sites/1.json
  def destroy
    @site = Site.find(params[:id])
    @site.destroy

    respond_to do |format|
      format.html { redirect_to sites_url }
      format.json { head :no_content }
    end
  end
end