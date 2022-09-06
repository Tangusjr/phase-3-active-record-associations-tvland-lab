class Actor < ActiveRecord::Base
  has_many :charachacters
has_many :shows, through: :charachacters

def full_name
  self.first_name + " " + self.last_name
 end 

 def list_roles
  self.characters.map do |character|
   "#{character.name} - #{character.show.name}"
  end
end
end