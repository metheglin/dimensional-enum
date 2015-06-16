module Dimensional
  module Enum
    class Attributes
    
      attr_reader :attrs

      def initialize( enum_attributes_hash={} )
        @attrs = enum_attributes_hash
      end

      def include?(key)
        @attrs.include? key
      end

      def to_attribute_h(enum_key)
        @attrs[enum_key]
      end

      def to_value_h(enum_key)
        hash = @attrs[enum_key].each_with_object({}) do |(key, value), h| 
          h[key] = value[:id]
        end
      end

      def to_display_h(enum_key)
        hash = @attrs[enum_key].each_with_object({}) do |(key, value), h| 
          h[key] = value[:name]
        end
      end

      def id(enum_key, enum_attr_key)
        @attrs[enum_key.to_sym][enum_attr_key.to_sym][:id]
      rescue
        nil
      end

      def name(enum_key, enum_attr_key)
        @attrs[enum_key.to_sym][enum_attr_key.to_sym][:name]
      rescue
        nil
      end

      def to_json(enum_key)
        arr = []
        @attrs[enum_key].each do |key, value|
          arr << { value: key, text: value[:name] }
        end
        JSON.unparse arr
      end

      alias_method :to_origin_h, :to_attribute_h
    end
  end
end