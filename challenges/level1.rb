#Challenge 1
#Find Zombie where id = 1 and store it in a variable

zombie = Zombie.find(1)

#Challenge 2
#Create a new zombie
Zombie.create(:id=>1,:name=>"Dener",:graveyard=>"Morreu o Poser")
  #Extra Credit
  #Find the zombie you just created by its ID
  #Exemplo
  Zombie.find(4) #Isso no meu exemplo que foi gerado o Zombie com id 4


#Challenge 3
#Find the last zombie in the database, but don't use ID's
Zombie.last
#Find the first zombie in the database, but don't use ID's
Zombie.first

#Challenge 4
#Find all Zombies ordered by their names
Zombie.find(:all,:order=>"name")
#Do the same query but limit to just 2 Zombies
Zombie.find(:all,:order=>"name",:limit=>2)

#Challenge 5
#Update Zombie 3's graveyard to 'Benny Hills Memorial'
Zombie.find(3).update_attribute(:graveyard,"Benny Hills Memorial")
#Update Zombie 3's name and graveyard at the same time using update_attributes
Zombie.find(3).update_attributes(:name=>"Dener",:graveyard=>"RIP")

#Challenge 6
#Destroy Zombie where ID = 3
Zombie.find(3).destroy
#Destroy All
Zombie.destroy_all