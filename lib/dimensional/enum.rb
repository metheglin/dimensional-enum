require "dimensional/enum/version"
require "dimensional/enum/attributes"
require "dimensional/enum/attribute"

module Dimensional
  module Enum
    class InvalidDefinition < StandardError; end

    def self.included(klass)
      klass.extend ClassMethods
      # klass.class_eval do
      #   attr_reader :enum_attributes
      # end
    end

    module ClassMethods
      def set_enum_attributes( enum_attributes )
        @enum_attributes = enum_attributes
      end

      def def_enum( enum_key )
        if @enum_attributes.nil?
          raise ::Dimensional::Enum::InvalidDefinition, "Undefined @enum_attributes on #{self}"
        end

        unless @enum_attributes.include? enum_key
          raise ::Dimensional::Enum::InvalidDefinition, "Undefined enum_key #{enum_key} in @enum_attributes"
        end
        
        enum_values     = @enum_attributes.to_value_h( enum_key )
        enum_attribute  = @enum_attributes.to_attribute_h( enum_key )

        self.class_eval do
          enum enum_key => enum_values

          define_method enum_key do
            return nil unless attr_key = super()
            ::Dimensional::Enum::Object.new attr_key, enum_attribute
          end
        end
      end
    end
  end
end
