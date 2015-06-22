class CaptionsController < ApplicationController
  def new
    @caption = Caption.new
  end

  def create
    @caption = Caption.new(caption_params())
    if @caption.save
      redirect_to "#new"
    else
      render :new
    end
  end

  def show
  end

  private
    def caption_params
      params.require(:caption).permit(:text)
    end

end
