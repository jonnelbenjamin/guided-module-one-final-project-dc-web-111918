require 'active_record'
class Watched_Movies < ActiveRecord::Base
belongs_to :user
belongs_to :movie


end
