class Song < ActiveRecord::Base
  has_many :tags, :through => :song_tags
  has_many :song_tags, :dependent => :destroy

end
