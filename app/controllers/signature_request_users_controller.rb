class SignatureRequestUsersController < ApplicationController
  before_action :set_signature_request_user, only: %i[ show edit update destroy ]

  # GET /signature_request_users or /signature_request_users.json
  def index
    @signature_request_users = SignatureRequestUser.all
  end

  # GET /signature_request_users/1 or /signature_request_users/1.json
  def show
  end

  # GET /signature_request_users/new
  def new
    @signature_request_user = SignatureRequestUser.new
  end

  # GET /signature_request_users/1/edit
  def edit
  end

  # POST /signature_request_users or /signature_request_users.json
  def create
    @signature_request_user = SignatureRequestUser.new(signature_request_user_params)

    respond_to do |format|
      if @signature_request_user.save
        format.html { redirect_to signature_request_user_url(@signature_request_user), notice: "Signature request user was successfully created." }
        format.json { render :show, status: :created, location: @signature_request_user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @signature_request_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /signature_request_users/1 or /signature_request_users/1.json
  def update
    respond_to do |format|
      if @signature_request_user.update(signature_request_user_params)
        format.html { redirect_to signature_request_user_url(@signature_request_user), notice: "Signature request user was successfully updated." }
        format.json { render :show, status: :ok, location: @signature_request_user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @signature_request_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /signature_request_users/1 or /signature_request_users/1.json
  def destroy
    @signature_request_user.destroy

    respond_to do |format|
      format.html { redirect_to signature_request_users_url, notice: "Signature request user was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_signature_request_user
      @signature_request_user = SignatureRequestUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def signature_request_user_params
      params.require(:signature_request_user).permit(:request_id, :user_id, :pos_x, :pos_y, :num_page, :signed, :signature_date, :created_date)
    end
end
