class PostingsController < ApplicationController
  def index
    @posts = Posting.all

    respond_to do |format|
      format.html
      format.json { render json: @posts }
    end
  end

  def show
    render json: Posting.find(params[:id])
  end

  def create
    @posting = Posting.new(params[:posting])

    if @posting.save
      render json: @posting, status: :created, location: @posting
    else
      render json: @posting.errors, status: :unprocessable_entity
    end
  end

  def update
    @posting = Posting.find(params[:id])

    if @posting.update_attributes(params[:posting])
      head :no_content
    else
      render json: @posting.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @posting = Posting.find(params[:id])
    @posting.destroy

    head :no_content
  end
end
