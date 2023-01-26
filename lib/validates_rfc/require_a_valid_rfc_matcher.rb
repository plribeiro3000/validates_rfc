# frozen_string_literal: true

require 'shoulda-matchers'

module Shoulda
  module Matchers
    module ActiveModel
      def require_a_valid_rfc(attr = :rfc)
        RequireAValidRfcMatcher.new(attr)
      end

      class RequireAValidRfcMatcher < ValidationMatcher
        def description
          'requires a valid RFC'
        end

        def failure_message
          'does not require a valid RFC'
        end

        def matches?(subject)
          super(subject)
          disallows_value_of('HEGG560427MVCRRL04') && allows_value_of('DSRT850311SA3')
        end
      end
    end
  end
end
