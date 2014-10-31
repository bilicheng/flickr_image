class FlickrPhoto
 
  
  def initialize(id=nil, title=nil, description=nil, link_url=nil, thumbnail_url=nil, original_url=nil)
    @id = id
    @title = title
    @description = description
    @link_url = link_url
    @thumbnail_url = thumbnail_url
    @original_url = original_url
  end
  attr_accessor :id, :title, :description, :link_url, :thumbnail_url, :original_url

end
