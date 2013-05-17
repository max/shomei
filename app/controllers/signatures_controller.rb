class SignaturesController < ApplicationController
  before_action :set_signature, only: [:show, :edit, :update, :destroy]

  def index
    @signatures = Signature.all
  end

  def show
  end

  def new
    @signature = Signature.new
  end

  def edit
  end

  def create
    @signature = Signature.new(signature_params)

    respond_to do |format|
      if @signature.save
        format.html { redirect_to @signature, notice: 'Signature was successfully created.' }
        format.json { render action: 'show', status: :created, location: @signature }
      else
        format.html { render action: 'new' }
        format.json { render json: @signature.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @signature.update(signature_params)
        format.html { redirect_to @signature, notice: 'Signature was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @signature.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @signature.destroy
    respond_to do |format|
      format.html { redirect_to signatures_url }
      format.json { head :no_content }
    end
  end

  private
    def set_signature
      @signature = Signature.find(params[:id])
    end

    def signature_params
      params.require(:signature).permit(:name, :signature)
    end
end
