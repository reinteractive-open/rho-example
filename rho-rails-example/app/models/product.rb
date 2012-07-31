class Product < ActiveRecord::Base
	include Rhoconnect::Resource
  attr_accessible :name

  def partition
    :app
  end
  
  def self.rhoconnect_query(partition)
    Product.all
  end

end
