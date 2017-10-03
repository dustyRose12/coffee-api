

100.times do 
  blend = Faker::Coffee.blend_name
  origin = Faker::Coffee.origin
  variety = Faker::Coffee.variety
  notes = Faker::Coffee.notes

  Coffee.create(
                              blend: blend,
                              origin: origin,
                              variety: variety,
                              notes: notes
                              )
  
end