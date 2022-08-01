Dog

- name, breed, birthdate, last_fed_at, last_walked_at, image_url
- has_many :feedings
- has_many :dog_walks
- has_many :walks :through :dog_walks

Feeding (one to many)

- dog_id:integer, time:datetime
- belong_to :dog

Walk (many to many)

- time:datetime
- has_many :dog_walks
- has_many :dogs :through :dog_walks

DogWalk

- dog_id:integer, walk_id:datetime
- belong_to :walk
- belong_to :dog

-- A foreign key is a reference to the id or primary key in another table.
