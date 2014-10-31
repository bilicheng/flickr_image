require 'flickraw'
#require 'launchy'
require 'yaml' 
require 'flickr_photo'

class PhotosController < ApplicationController
  
  def index
    begin
      load_auth_data
      if params[:search] 
        if params[:search].blank?
          flash[:alert] = 'Search tag cannot be blank'
        else
          @pictures=get_flickr_images(params[:search]) 
          @photos=@pictures.paginate(params[:page],20)
          if @pictures.blank?
            flash[:notice] = 'No matched photo'
          end
        end
      end
    rescue  StandardError => e 
      $my_logger.info("error=#{e}")
    end
  end
  
private

    def load_auth_data
    
      config = YAML.load_file('config/flickrkey.yml')
      if config
        FlickRaw.api_key = config['api_key'] 
        FlickRaw.shared_secret = config['shared_secret']       
      else
        FlickRaw.api_key='0c61aa67a7b4019ec64f2120c1836321'
        FlickRaw.shared_secret='9a2b5492d7055a61'        
      end      
    end

    def get_flickr_images(tag)
      thumbnail_size = "m"
      original_size = "z"
     
      images = flickr.photos.search(:tags=>tag, :sort=>"relevance", :per_page=>500)  
      
      flickr_images = []
      images.each do |image|
        flickr_images << FlickrPhoto.new(
          image["id"],
          image["title"],
          "",
          "http://www.flickr.com/photos/#{image["owner"]}/#{image["id"]}",
          "http://farm#{image["farm"]}.static.flickr.com/#{image["server"]}/#{image["id"]}_#{image["secret"]}_#{thumbnail_size}.jpg",
          "http://farm#{image["farm"]}.static.flickr.com/#{image["server"]}/#{image["id"]}_#{image["secret"]}_#{original_size}.jpg"
        )
      end
     
      flickr_images
    end
     
end