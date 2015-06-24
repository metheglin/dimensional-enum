require "spec_helper"
require "dimensional/enum"

module Dimensional::Enum
  describe Attribute do
    it "初期化できること" do
      enum_attributes = Attributes.new Sample::ENUM_ATTRIBUTES[:core]
      enum_attribute  = Attribute.new "sale_on_nego", enum_attributes.to_attribute_h(:sale_state)
      expect( enum_attribute.class ).to eq Dimensional::Enum::Attribute
    end

    it "#id" do
      enum_attributes = Attributes.new Sample::ENUM_ATTRIBUTES[:core]
      enum_attribute  = Attribute.new "sale_on_nego", enum_attributes.to_attribute_h(:sale_state)
      expect( enum_attribute.id ).to eq 4
    end

    it "#name" do
      enum_attributes = Attributes.new Sample::ENUM_ATTRIBUTES[:core]
      enum_attribute  = Attribute.new "sale_on_nego", enum_attributes.to_attribute_h(:sale_state)
      expect( enum_attribute.name ).to eq "商談中"
    end

    it "#label" do
      enum_attributes = Attributes.new Sample::ENUM_ATTRIBUTES[:core]
      enum_attribute  = Attribute.new "sale_on_nego", enum_attributes.to_attribute_h(:sale_state)
      expect( enum_attribute.label ).to eq :sale_on_nego
    end

    it "#to_sym" do
      enum_attributes = Attributes.new Sample::ENUM_ATTRIBUTES[:core]
      enum_attribute  = Attribute.new "sale_on_nego", enum_attributes.to_attribute_h(:sale_state)
      expect( enum_attribute.to_sym ).to eq :sale_on_nego
    end

    it "#to_s" do
      enum_attributes = Attributes.new Sample::ENUM_ATTRIBUTES[:core]
      enum_attribute  = Attribute.new "sale_on_nego", enum_attributes.to_attribute_h(:sale_state)
      expect( enum_attribute.to_s ).to eq "sale_on_nego"
    end

    it "#to_i" do
      enum_attributes = Attributes.new Sample::ENUM_ATTRIBUTES[:core]
      enum_attribute  = Attribute.new "sale_on_nego", enum_attributes.to_attribute_h(:sale_state)
      expect( enum_attribute.to_i ).to eq 4
    end

    it "#==" do
      enum_attributes = Attributes.new Sample::ENUM_ATTRIBUTES[:core]
      enum_attribute  = Attribute.new "sale_on_nego", enum_attributes.to_attribute_h(:sale_state)
      expect( enum_attribute == "sale_on_running" ).to eq false
      expect( enum_attribute == "sale_on_nego" ).to eq true
    end

    it "supports right side equality check" do
      enum_attributes = Attributes.new Sample::ENUM_ATTRIBUTES[:core]
      enum_attribute  = Attribute.new "sale_on_nego", enum_attributes.to_attribute_h(:sale_state)
      expect(  "sale_on_nego" == enum_attribute ).to eq true
      expect( ["sale_running", "sale_on_nego"].include? enum_attribute ).to eq true
    end

    describe "Stringを想定したメソッドよびだしがto_strに対しておこなわれること" do
      let(:enum_attributes) { Attributes.new Sample::ENUM_ATTRIBUTES[:core] }
      let(:enum_attribute) { enum_attribute  = Attribute.new "released", enum_attributes.to_attribute_h(:status) }
      it "#empty?" do
        expect( enum_attribute.empty? ).to eq false
      end

      it "#upcase" do
        expect( enum_attribute.upcase ).to eq "RELEASED"
      end
    end

  end
end