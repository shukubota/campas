class Length 
  include Neo4j::ActiveNode
  property :name, type: Integer

    has_many :in, :players,type: :Length,model_class: :Player
	    validates :name,uniqueness: true

end
