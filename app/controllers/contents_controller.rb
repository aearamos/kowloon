class ContentsController < ApplicationController
  def new
    @content = Content.new
  end

  def create
    @content = Content.find(params[:id])
    @content.save
  end

  def update
    @content = Content.find(params[:id])
    @content.update(params[:content])
  end

  def edit
    @content = Content.find(params[:id])
  end

  def destroy
    @content = Content.find(params[:id])
    @content.destroy
  end

  def index
    @contents = Content.all
  end

  def show
    @content = Content.find(params[:id])
  end

  private

  def set_content
    @content = Content.find(params[:id])
  end

  def content_params
    params.require(:content).permit(:title, :description)
  end
end
