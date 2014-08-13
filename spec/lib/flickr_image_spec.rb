require 'spec_helper'
require_relative "../../lib/flickr_image.rb" 

describe FlickrImage do

  describe "#initialize" do
      it 'throws an ArgumentError when given fewer than 6 parameters' do
        expect{FlickrImage.new}.to raise_exception(ArgumentError)
      end          
  end 
   
end