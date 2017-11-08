class Height 
  include Neo4j::ActiveNode
  property :name, type: Float
    has_many :in, :players,type: :Height,model_class: :Player
	    validates :name,uniqueness: true


end
