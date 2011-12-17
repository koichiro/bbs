# -*- encoding: utf-8 -*- 
class EntriesController < ApplicationController
  def index
    @entry = Entry.new
    @entries = Entry.order("created_at desc")
  end
  
  def create
    @entry = Entry.new(params[:entry])
    if @entry.save
      redirect_to entries_path
    else
      render :index
    end
  end
  
  def destroy
    entry = Entry.find(params[:id])
    entry.destroy
    redirect_to entries_path, :notice => '投稿を削除しました。'
  end

end
