class Like < ActiveRecord::Base
    
    belongs_to :Songwriting
    belongs_to :cover
    belongs_to :show
    belongs_to :user


end
