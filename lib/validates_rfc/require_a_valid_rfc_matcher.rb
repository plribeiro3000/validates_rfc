# frozen_string_literal: true

require 'shoulda-matchers'

module Shoulda
  module Matchers
    module ActiveModel
      def require_a_valid_rfc(attr = :rfc)
        RequireAValidRfcMatcher.new(attr)
      end

      class RequireAValidRfcMatcher < ValidationMatcher
        def initialize(attribute)
          @type = :both
          super
        end

        def for_company
          @type = :company
          self
        end

        def for_person
          @type = :person
          self
        end

        def description
          case @type
          when :both then 'requires a valid RFC'
          when :company then 'requires a valid company RFC'
          when :person then 'requires a valid person RFC'
          end
        end

        def failure_message
          case @type
          when :both then 'does not require a valid RFC'
          when :company then 'does not require a valid company RFC'
          when :person then 'does not require a valid person RFC'
          end
        end

        def matches?(subject)
          super(subject)

          case @type
          when :both then check_for_both_types
          when :company then check_for_company_type
          when :person then check_for_person_type
          end
        end

        private

        def check_for_both_types
          disallows_value_of('HEGG560427MVCRRL04') && allows_value_of('DSRT850311SA3') && allows_value_of('DSR850311SA3')
        end

        def check_for_company_type
          disallows_value_of('HEGG560427MVCRRL04') && disallows_value_of('DSRT850311SA3') && allows_value_of('DSR850311SA3')
        end

        def check_for_person_type
          disallows_value_of('HEGG560427MVCRRL04') && allows_value_of('DSRT850311SA3') && disallows_value_of('DSR850311SA3')
        end
      end
    end
  end
end
