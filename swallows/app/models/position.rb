class Position 
  include Neo4j::ActiveNode
  property :name, type: String
    has_many :in, :players,type: :Position,model_class: :Player
	    validates :name,uniqueness: true


end
