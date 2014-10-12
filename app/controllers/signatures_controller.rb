class SignaturesController < ApplicationController
  def new
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, space_after_headers: true)
    nda = File.read(Rails.root.join('lib/docs/sfdc-gca-1209.md'))

    @nda = markdown.render(nda)
    @signature = Signature.new
  end

  def create
    @signature = Signature.new(signature_params)

    if @signature.save!
      redirect_to thank_you_signature_path
    else
      render action: 'new'
    end
  end

  def thank_you
  end

  private
    def signature_params
      params.require(:signature).permit(:name, :signature)
    end
end
