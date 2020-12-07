=begin
#Power Cloud API

#IBM Power Cloud API for Power Hardware / Infrastructure

The version of the OpenAPI document: 1.0.0
Contact: kylej@us.ibm.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-beta2

=end

require 'date'

module IbmCloudPower
  class CloudInstanceCreate
    # The tenant ID that owns this cloud instance
    attr_accessor :tenant_id

    # The region the cloud instance lives
    attr_accessor :region

    # Number of processors allowed
    attr_accessor :processors

    # Number of processor units allowed
    attr_accessor :proc_units

    # Amount of memory allowed
    attr_accessor :memory

    # Number of power instances allowed
    attr_accessor :instances

    # Amount of storage allowed (TB)
    attr_accessor :storage

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'tenant_id' => :'tenantID',
        :'region' => :'region',
        :'processors' => :'processors',
        :'proc_units' => :'procUnits',
        :'memory' => :'memory',
        :'instances' => :'instances',
        :'storage' => :'storage'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'tenant_id' => :'String',
        :'region' => :'String',
        :'processors' => :'Float',
        :'proc_units' => :'Float',
        :'memory' => :'Float',
        :'instances' => :'Float',
        :'storage' => :'Float'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `IbmCloudPower::CloudInstanceCreate` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IbmCloudPower::CloudInstanceCreate`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'tenant_id')
        self.tenant_id = attributes[:'tenant_id']
      end

      if attributes.key?(:'region')
        self.region = attributes[:'region']
      end

      if attributes.key?(:'processors')
        self.processors = attributes[:'processors']
      end

      if attributes.key?(:'proc_units')
        self.proc_units = attributes[:'proc_units']
      end

      if attributes.key?(:'memory')
        self.memory = attributes[:'memory']
      end

      if attributes.key?(:'instances')
        self.instances = attributes[:'instances']
      end

      if attributes.key?(:'storage')
        self.storage = attributes[:'storage']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @tenant_id.nil?
        invalid_properties.push('invalid value for "tenant_id", tenant_id cannot be nil.')
      end

      if @region.nil?
        invalid_properties.push('invalid value for "region", region cannot be nil.')
      end

      if @processors.nil?
        invalid_properties.push('invalid value for "processors", processors cannot be nil.')
      end

      if @proc_units.nil?
        invalid_properties.push('invalid value for "proc_units", proc_units cannot be nil.')
      end

      if @memory.nil?
        invalid_properties.push('invalid value for "memory", memory cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @tenant_id.nil?
      return false if @region.nil?
      return false if @processors.nil?
      return false if @proc_units.nil?
      return false if @memory.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          tenant_id == o.tenant_id &&
          region == o.region &&
          processors == o.processors &&
          proc_units == o.proc_units &&
          memory == o.memory &&
          instances == o.instances &&
          storage == o.storage
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [tenant_id, region, processors, proc_units, memory, instances, storage].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        IbmCloudPower.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end
        
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
