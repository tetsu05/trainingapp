class LikesController < ApplicationController
  def create
    @training = Training.find(params[:training_id])
    @alreadylike = Like.find_by(ip: request.remote_ip, training_id: params[:training_id])
    if @alreadylike
       redirect_back(fallback_location: root_path)
       flash[:notice] = "すでにいいねしています"
    else
       @like = Like.create(training_id: params[:training_id], ip: request.remote_ip)
       redirect_back(fallback_location: root_path)
    end
  end
end
