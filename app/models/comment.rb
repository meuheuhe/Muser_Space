class Comment < ActiveRecord::Base
    belongs_to :user
    belongs_to :songwriting
    belongs_to :show
    belongs_to :cover
end
