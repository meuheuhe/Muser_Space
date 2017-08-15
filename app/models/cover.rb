class Cover < ActiveRecord::Base
    has_many :like2s
    belongs_to :user
    has_many :c_comments

    has_many :impressions, :as=>:impressionable
      is_impressionable :counter_cache => true, :column_name => :hits
    def impression_count
        impressions.size
    end
     
    def unique_impression_count
        # impressions.group(:ip_address).size gives => {'127.0.0.1'=>9, '0.0.0.0'=>1}
        # so getting keys from the hash and calculating the number of keys
        impressions.group(:ip_address).size.keys.length #TESTED
    end

end
