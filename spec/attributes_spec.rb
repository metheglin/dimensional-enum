require "spec_helper"
require "dimensional/enum"

module Dimensional::Enum
  describe Attributes do
    it "初期化できること" do
      enum_attributes = Attributes.new Sample::ENUM_ATTRIBUTES[:core]
      expect( enum_attributes.class ).to eq Dimensional::Enum::Attributes
    end

    it "#include?" do
      enum_attributes = Attributes.new Sample::ENUM_ATTRIBUTES[:core]
      expect( enum_attributes.include? :sale_state ).to eq true
      expect( enum_attributes.include? :available_type ).to eq false
    end

    it "#to_attribute" do
      enum_attributes = Attributes.new Sample::ENUM_ATTRIBUTES[:core]
      enum_attribute = enum_attributes.to_attribute_h(:status)
      expect( enum_attribute.has_key? :released ).to eq true
      expect( enum_attribute.has_key? :not_found ).to eq false
      expect( enum_attribute[:released][:id] ).to eq 1
      expect( enum_attribute[:released][:name] ).to eq "入稿済み"
    end

    it "#to_value_h" do
      enum_attributes = Attributes.new Sample::ENUM_ATTRIBUTES[:core]
      enum_attribute = enum_attributes.to_value_h(:status)
      expect( enum_attribute.has_key? :released ).to eq true
      expect( enum_attribute[:released] ).to eq 1
    end

    it "#to_display_h" do
      enum_attributes = Attributes.new Sample::ENUM_ATTRIBUTES[:core]
      enum_attribute = enum_attributes.to_display_h(:status)
      expect( enum_attribute.has_key? :released ).to eq true
      expect( enum_attribute[:released] ).to eq "入稿済み"
    end

    it "#id" do
      enum_attributes = Attributes.new Sample::ENUM_ATTRIBUTES[:core]
      expect( enum_attributes.id(:status, :released) ).to eq 1
    end

    it "#name" do
      enum_attributes = Attributes.new Sample::ENUM_ATTRIBUTES[:core]
      expect( enum_attributes.name(:status, :released) ).to eq "入稿済み"
    end
  end
end