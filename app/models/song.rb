class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
  has_many :notes
  
  accepts_nested_attributes_for :notes
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by(artist_name: :name)
  end 
  
  def artist_name 
    if self.artist
      self.artist.artist_name = nil 
    end 
  end 
  
  def notes_ids=(ids)
     ids.each do |id|
       note = Note.find(id)
       self.note << note
     end
   end
 
  
end

