class SongTag < ActiveRecord::Base
  belongs_to :song
  belongs_to :tag
  def self.search(search)
    where("tags LIKE ?", "%#{search}%")
  end
end
