class Product < ApplicationRecord
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
