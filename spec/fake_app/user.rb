# frozen_string_literal: true

class User
  include ActiveModel::Model

  attr_accessor :rfc, :register, :name, :person, :company

  validates :register, rfc: true
  validates :rfc, rfc: true
  validates :person, rfc: { type: :person }
  validates :company, rfc: { type: :company }
end
