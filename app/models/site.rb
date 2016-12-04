class Site < ApplicationRecord
  belongs_to :user

  # searchable do
  #   text :name, :url, :description
  # end

end
