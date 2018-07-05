class Note < ActiveRecord::Base
  belongs_to :song
  
  def note_contents=(content)
    self.notes = Note.find_or_create_by(content: :content)
  end 
  
  def note_contents 
    if self.note 
      self.note.content = nil 
    end 
  end
  
  
  
end
