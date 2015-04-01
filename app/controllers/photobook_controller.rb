class PhotobookController < ApplicationController
  def showphotobooklist
      @photobooklist = Photobook.all.reverse
  end
  def createphotobook
      photobook = Photobook.new
      photobook.bookname = params[:bookname]
      photobook.save
    redirect_to :photos
  end
  def showphotos
      @photobook = Photobook.find_by_id(params[:photobook_id])
      @photolist = Photo.where(:photobook_id=>params[:photobook_id])
      respond_to do |format|
        format.js { render}
        format.html
      end
  end
end
