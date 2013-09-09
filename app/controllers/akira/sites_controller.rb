class Akira::SitesController < ApplicationController

	 def new
    @site = Site.new
  end
  # GET /sites/1/edit
  def edit
    @user = current_user
    @user[:step] = "first"
  end

  def update
    @user = User.find(params[:user_id])
    binding.pry
    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @site, notice: 'Site was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @site.errors, status: :unprocessable_entity }
      end
    end
  end

  def second_step
     @user = current_user
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