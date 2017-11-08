class Blood 
  include Neo4j::ActiveNode
  property :name, type: String
    has_many :in, :players,type: :Age,model_class: :Player
	    validates :name,uniqueness: true


end
