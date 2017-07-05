puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "Chicago",
    category:     "french"
  },
  {
    name:         "La truffière",
    address:      "Los Angeles",
    category:     "french"
  },
  {
    name:         "Le pré catelan",
    address:      "Belgum",
    category:     "belgian",
  },
  {
    name:         "Kobe",
    address:      "Atlanta GA",
    category:     "japanese",
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    category:     "french"
  }

]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'