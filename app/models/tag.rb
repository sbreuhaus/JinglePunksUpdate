class Tag < ActiveRecord::Base
  has_many :songs, :through => :song_tags
  has_many :song_tags, :dependent => :destroy
end
