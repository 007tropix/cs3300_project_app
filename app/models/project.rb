class Project < ApplicationRecord
    validates_presence_of :title, :build_item
end
