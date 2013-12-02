class DocumentsController < ApplicationController
  respond_to :json

  def index
    @documents = Document.all
  end

  def show
    @document = Document.find(params[:id])
  end
end
