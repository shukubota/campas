class Player 
  include Neo4j::ActiveNode
  property :name, type: String
	    validates :name,uniqueness: true
    has_one :out, :age,type: :Age,model_class: :Age
    has_one :out, :number,type: :Number,model_class: :Number
    has_one :out, :position,type: :Position,model_class: :Position
    has_one :out, :birthday,type: :Birthday,model_class: :Birthday
    has_one :out, :length,type: :Length,model_class: :Length
    has_one :out, :height,type: :Height,model_class: :Height
    has_one :out, :weight,type: :Weight,model_class: :Weight
    has_one :out, :blood,type: :Blood,model_class: :Blood
    has_one :out, :throwbat,type: :Throwbat,model_class: :Throwbat
    has_one :out, :place,type: :Place,model_class: :Place
    has_one :out, :salarie,type: :Salary,model_class: :Salary


end
