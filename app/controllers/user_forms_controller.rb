class UserFormsController < ApplicationController
  before_action :set_user_form, only: [:show, :edit, :update, :destroy]

  # GET /user_forms
  # GET /user_forms.json
  def index
    @user_forms = UserForm.all
  end

  # GET /user_forms/1
  # GET /user_forms/1.json
  def show
  end

  # GET /user_forms/new
  def new
    @user_form = UserForm.new
    1.times { @user_form.vaccs.build }
  end

  # GET /user_forms/1/edit
  def edit
  end

  # POST /user_forms
  # POST /user_forms.json
  def create
    @user_form = UserForm.new(user_form_params)
    @user_form.user_id = current_user.id 

    respond_to do |format|
      if @user_form.save
        format.html { redirect_to @user_form, notice: 'User form was successfully created.' }
        format.json { render :show, status: :created, location: @user_form }
      else
        format.html { render :new }
        format.json { render json: @user_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_forms/1
  # PATCH/PUT /user_forms/1.json
  def update
    respond_to do |format|
      if @user_form.update(user_form_params)
        format.html { redirect_to @user_form, notice: 'User form was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_form }
      else
        format.html { render :edit }
        format.json { render json: @user_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_forms/1
  # DELETE /user_forms/1.json
  def destroy
    @user_form.destroy
    
    respond_to do |format|
      format.html { redirect_to user_forms_url, notice: 'User form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_form
      @user_form = UserForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_form_params
      params.require(:user_form).permit(:user_id, vaccs_attributes: [:id, :title, :rec, :exp, :_destroy], form_images_attributes: [:id, :main_image, :_destroy])
    end
end
