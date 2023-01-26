# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Shoulda::Matchers::ActiveModel::RequireAValidRfcMatcher do
  subject { User.new }

  it { is_expected.to require_a_valid_rfc(:register) }
  it { is_expected.to require_a_valid_rfc }
  it { is_expected.not_to require_a_valid_rfc(:name) }
  it { is_expected.to require_a_valid_rfc(:person).for_person }
  it { is_expected.to require_a_valid_rfc(:company).for_company }
end
