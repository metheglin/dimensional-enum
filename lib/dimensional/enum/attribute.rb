module Dimensional
  module Enum
    class Attribute

      delegate *(String.instance_methods - Object.instance_methods), to: :to_s

      def initialize( enum_attr_key, enum_attribute )
        @enum_attr_key  = enum_attr_key
        @enum_attribute = enum_attribute
      end

      def ==( other )
        to_s == other
      end

      def <=>( other )
        to_s <=> other
      end

      def id
        @enum_attribute[label][:id]
      rescue
        nil
      end

      def name
        @enum_attribute[label][:name]
      rescue
        nil
      end

      def label
        @enum_attr_key.to_sym
      rescue
        nil
      end

      def to_s
        label.to_s
      end

      def to_sym
        label.to_sym
      end

      def to_i
        id.to_i
      end

      alias_method :value, :id

    end
  end
end
