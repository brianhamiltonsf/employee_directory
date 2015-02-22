module Sluggable
  extend ActiveSupport::Concern

  included do
    before_create :generate_slug
    class_attribute :slug_column
  end

  def create_slug
    self.slug = self.send(self.class.slug_column.to_sym).gsub(/'/,'').gsub(/\W|_/, '-').gsub(/-+/,'-').downcase
  end

  def generate_slug
    str = create_slug
    obj = self.class.find_by(slug: str) # check if slug exists
    counter = 2
    while obj
      new_str = str if new_str.nil?
      new_str = new_str.split('-').slice(0...-1).join('-') if new_str.split('-').length > 1
      new_str = new_str + "-" + counter.to_s
      obj = self.class.find_by(slug: new_str)
      counter += 1
    end
    str = new_str unless new_str.nil?
    self.slug = str
  end

   def to_param
    self.slug
  end

  module ClassMethods
    def sluggable_column(col_name)
      self.slug_column = col_name
    end
  end
end
