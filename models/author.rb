# frozen_string_literal: true

class Author < ActiveRecord::Base
  has_many :books, dependent: :destroy
end
