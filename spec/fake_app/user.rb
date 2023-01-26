# frozen_string_literal: true

class User
  include ActiveModel::Model

  attr_accessor :rfc, :register, :name

  validates :register, rfc: true
  validates :rfc, rfc: true
end
