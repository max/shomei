class Admin::SignaturesController < Admin::AdminController
  before_action :set_signature, only: [:destroy]

  def index
    @signatures = Signature.all
  end

  def destroy
    @signature.destroy
    redirect_to admin_signatures_url
  end

  private
    def set_signature
      @signature = Signature.find(params[:id])
    end

    def signature_params
      params.require(:signature).permit(:name, :signature)
    end
end
