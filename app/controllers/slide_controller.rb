class SlideController < ApplicationController
  def show
#@slide = Slide.find(params[:slideNumber])
@slide = Slide.find_by(slideNumber: params[:slideNumber])
  end

  def list
    @slides = Slide.all
  end


end
