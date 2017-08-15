class Like < ActiveRecord::Base
    
    belongs_to :Songwriting, :counter_cache => :likes_count
    belongs_to :user


end
