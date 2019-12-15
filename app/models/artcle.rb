class Artcle < ApplicationRecord
  belongs_to :author
  belongs_to :blog
end
