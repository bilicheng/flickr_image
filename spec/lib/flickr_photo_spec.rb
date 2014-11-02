require 'spec_helper'
require_relative "../../lib/flickr_photo.rb" 

describe FlickrPhoto do

  describe "#initialize" do
      it 'throws an ArgumentError when given fewer than 6 parameters' do
        expect{FlickrPhoto.new}.to raise_error(ArgumentError)
      end          
  end 
   
end