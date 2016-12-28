class Site < ApplicationRecord
  belongs_to :user

  # Kaminari gem
  paginates_per 12

  # sunspot gem
  searchable do
    text :name, :url, :description
    integer :user_id
  end
  
end
