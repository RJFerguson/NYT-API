class Api::V1::ArticlesController < ApplicationController

  def index
    articles = Article.all
    render json: articles
  end

  def show
    render json: Article.find(params[:id])
  end


end
