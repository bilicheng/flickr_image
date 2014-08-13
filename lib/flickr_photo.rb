class FlickrPhoto
  def initialize(id, title, description, link_url, thumbnail_url, original_url)
    @id = id
    @title = title
    @description = description
    @link_url = link_url
    @thumbnail_url = thumbnail_url
    @original_url = original_url
  end
 
  attr_accessor :id, :title, :description, :link_url, :thumbnail_url, :original_url
end
