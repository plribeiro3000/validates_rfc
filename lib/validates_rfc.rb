# frozen_string_literal: true

require 'active_model'
require 'validates_rfc/rfc_validator'
require 'validates_rfc/require_a_valid_rfc_matcher' if defined?(::Shoulda)

module ValidatesRfc
  autoload :Rfc, 'validates_rfc/rfc'
end
