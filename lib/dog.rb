class Dog < ActiveRecord::Base
    has_many :feedings
    has_many :dog_walks
    has_many :walks, through: :dog_walks
    # means that we will get back a collection of associated feedings
    # .feedings => return all the feedings associated with the instances it was called on,
    # e.g. buffy.feedings

    # We also can get associations through shoveling! 
    # f = Feeding.create(time: Time.current)
    # buffy.feedings << f

end