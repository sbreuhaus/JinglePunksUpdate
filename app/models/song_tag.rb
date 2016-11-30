class SongTag < ActiveRecord::Base
  belongs_to :song
  belongs_to :tag

  #validate :uniq_tag_for_song
  validates :tag, uniqueness: { scope: :song, message: 'duplicate tag' }

  def uniq_tag_for_song
    errors.add(:tag, "Duplicate tag") if SongTag.where(song_id: song.id, tag_id: tag.id)
  end

end
