class DocumentController < ApplicationController
  def show

    @document = Document.find_by(id: params[:id])
  #  @document = Document.find_by(docTitle: params[:docTitle])
end
def index
  @documents = Document.all
end

end
