# encoding: utf-8
require 'spec_helper'

describe User do

  let(:user) { User.new }
  subject { user }

  describe 'fields' do
    it 'should be in this list' do 
      attributes = [
      :created_at, :updated_at, :validated_at, :confirmed_at,
      :email, :token
      ]
      User.attributes.any? { |x| attributes.include?(x) }.should be_true
    end
  end

end