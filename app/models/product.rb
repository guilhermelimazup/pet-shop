class Product < ApplicationRecord
  
  validates :price, presence: true, numericality: { only_float: true, greater_than: 0 } 
  validates :name, presence: true
  validates :description, presence: true


  has_one :animal
  has_one :toy
  has_one :remedy
  accepts_nested_attributes_for :animal
  accepts_nested_attributes_for :toy
  accepts_nested_attributes_for :remedy

  def author
    "Alexandre"
  end

  def as_json(options={})
    super(methods: :author, root: true)
  end

end
