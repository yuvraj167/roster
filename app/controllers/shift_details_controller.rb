class ShiftDetailsController < ApplicationController
   load_and_authorize_resource :except => [:create]
   before_action :set_shift_detail, only: [:show, :edit, :update, :destroy]
   skip_before_action :authenticate_user!,only: :list

   
  # GET /shift_details
  def index
    if current_user.email == 'yuvraj.167@gmail.com'
      @shift_details = ShiftDetail.all
    else
      @shift_details = ShiftDetail.where(user: current_user)
    end
  end

  def list
    @shift_details = ShiftDetail.all
  end

  # GET /shift_details/1
  def show
  end

  # GET /shift_details/new
  def new
    @shift_detail = ShiftDetail.new
  end

  # GET /shift_details/1/edit
  def edit
  end

  # POST /shift_details
  def create
    @shift_detail = ShiftDetail.new(shift_detail_params)
    if @shift_detail.user_id == nil
       @shift_detail.user= current_user
    end
    if @shift_detail.save
      respond_to do |format|
       format.js {redirect_to @shift_detail, notice: 'Shift detail was successfully created.'}  
       format.html {redirect_to @shift_detail, notice: 'Shift detail was successfully created.'}
    end  
    else
      render :new
    end
  end

  # PATCH/PUT /shift_details/1
  def update
    if @shift_detail.update(shift_detail_params)
      redirect_to @shift_detail, notice: 'Shift detail was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /shift_details/1
  def destroy
    @shift_detail.destroy
    redirect_to shift_details_url, notice: 'Shift detail was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shift_detail
      @shift_detail = ShiftDetail.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def shift_detail_params
      params.require(:shift_detail).permit(:shift_name, :start_time, :end_time, :description, :user_id)
    end
end
