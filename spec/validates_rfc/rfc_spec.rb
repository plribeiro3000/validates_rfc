# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ValidatesRfc::Rfc do
  it 'accepts RAAA921127RI6' do
    expect(ValidatesRfc::Rfc.new('RAAA921127RI6')).to be_valid
  end

  it 'accepts DSRT850311SA3' do
    expect(ValidatesRfc::Rfc.new('DSRT850311SA3')).to be_valid
  end

  it 'accepts IMS120607120' do
    expect(ValidatesRfc::Rfc.new('IMS120607120')).to be_valid
  end

  it 'rejects KAOB750230MASLHJ07' do
    expect(ValidatesRfc::Rfc.new('KAOB750230MASLHJ07')).not_to be_valid
  end

  it 'rejects EOMR330613FDFPKT08' do
    expect(ValidatesRfc::Rfc.new('EOMR330613FDFPKT08')).not_to be_valid
  end

  it 'rejects YOOR280801HXXLTK07' do
    expect(ValidatesRfc::Rfc.new('YOOR280801HXXLTK07')).not_to be_valid
  end

  it 'rejects EIMV310211MQRPKT1X' do
    expect(ValidatesRfc::Rfc.new('EIMV310211MQRPKT1X')).not_to be_valid
  end

  it 'rejects L6NF640805MYNTNN10' do
    expect(ValidatesRfc::Rfc.new('L6NF640805MYNTNN10')).not_to be_valid
  end

  it 'rejects MOJL020101HCLKWMXY09' do
    expect(ValidatesRfc::Rfc.new('MOJL020101HCLKWMXY09')).not_to be_valid
  end

  it 'rejects HEGG560427MVCRRL04' do
    expect(ValidatesRfc::Rfc.new('HEGG560427MVCRRL04')).not_to be_valid
  end

  it 'rejects ZAZD801124MBSYQN13' do
    expect(ValidatesRfc::Rfc.new('ZAZD801124MBSYQN13')).not_to be_valid
  end

  it 'rejects RUNO390705HSLPTC02' do
    expect(ValidatesRfc::Rfc.new('RUNO390705HSLPTC02')).not_to be_valid
  end

  it 'accepts blank string' do
    expect(ValidatesRfc::Rfc.new('')).to be_valid
  end

  it 'accepts nil' do
    expect(ValidatesRfc::Rfc.new(nil)).to be_valid
  end
end
