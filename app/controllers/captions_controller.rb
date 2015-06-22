class CaptionsController < ApplicationController
  def new
    @caption = Caption.new
  end

  def create
    # @caption = Caption.new(caption_params)
    # @caption.save
    redirect_to "#new"
  end

  def show
  end

  # private
  #   def caption_params
  #     params.require(:caption).permit(:text)
  #   end

end
