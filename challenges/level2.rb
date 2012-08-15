#Challenge 1
  #Define a Zombie model
  class Zombie < ActiveRecord::Base

  end
  #Creating a Zombie with the created Model
  Zombie.create(:name=> "Dener", :graveyard=>"RIP")
  
  #Use your newly created model to count the number of Zombies
  Zombie.count

#Challenge 2
  #Validates presence of Name
  class Zombie < ActiveRecord::Base
    validates_presence_of :name
  end

#Challenge 3
  #Add a validation that checks for the uniqueness of a Zombie's name
  class Zombie < ActiveRecord::Base
    validates_uniqueness_of :name
  end

#Challenge 4 
#validation 3
  class Zombie < ActiveRecord::Base
    # insert validation here
    validates :name, :presence => true, :uniqueness => true
  end

#Challenge 5 
#relationship
  class Weapon < ActiveRecord::Base
    belongs_to :zombie
  end

#Challenge
#Relationship Find
  z = Zombie.find(1)
  z.weapons
  z.weapons.count
  
  
