class TagsController < ApplicationController  
  def show
    puts 'hello ------------------------'
    @tag = Tag.find(params[:id])
  end
end