class Throwbat 
  include Neo4j::ActiveNode
  property :name, type: String
   has_many :in, :players,type: :Throwbat,model_class: :Throwbat
      validates :name,uniqueness: true


end
