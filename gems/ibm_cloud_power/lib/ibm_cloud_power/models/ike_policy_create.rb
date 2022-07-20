=begin
#Power Cloud API

#IBM Power Cloud API for Power Hardware / Infrastructure

The version of the OpenAPI document: 1.0.0
Contact: kylej@us.ibm.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'date'
require 'time'

module IbmCloudPower
  # IKE Policy object used for creation
  class IKEPolicyCreate
    # authentication of the IKE Policy
    attr_accessor :authentication

    # DH group of the IKE Policy
    attr_accessor :dh_group

    # encryption of the IKE Policy
    attr_accessor :encryption

    # Policy key lifetime
    attr_accessor :key_lifetime

    # name of the IKE Policy
    attr_accessor :name

    # Preshared key used in this IKE Policy (length of preshared key must be even)
    attr_accessor :preshared_key

    # version of the IKE Policy
    attr_accessor :version

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'authentication' => :'authentication',
        :'dh_group' => :'dhGroup',
        :'encryption' => :'encryption',
        :'key_lifetime' => :'keyLifetime',
        :'name' => :'name',
        :'preshared_key' => :'presharedKey',
        :'version' => :'version'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'authentication' => :'String',
        :'dh_group' => :'Integer',
        :'encryption' => :'String',
        :'key_lifetime' => :'Integer',
        :'name' => :'String',
        :'preshared_key' => :'String',
        :'version' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `IbmCloudPower::IKEPolicyCreate` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IbmCloudPower::IKEPolicyCreate`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'authentication')
        self.authentication = attributes[:'authentication']
      end

      if attributes.key?(:'dh_group')
        self.dh_group = attributes[:'dh_group']
      end

      if attributes.key?(:'encryption')
        self.encryption = attributes[:'encryption']
      end

      if attributes.key?(:'key_lifetime')
        self.key_lifetime = attributes[:'key_lifetime']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'preshared_key')
        self.preshared_key = attributes[:'preshared_key']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @authentication.nil?
        invalid_properties.push('invalid value for "authentication", authentication cannot be nil.')
      end

      if @dh_group.nil?
        invalid_properties.push('invalid value for "dh_group", dh_group cannot be nil.')
      end

      if @encryption.nil?
        invalid_properties.push('invalid value for "encryption", encryption cannot be nil.')
      end

      if @key_lifetime.nil?
        invalid_properties.push('invalid value for "key_lifetime", key_lifetime cannot be nil.')
      end

      if @key_lifetime > 86400
        invalid_properties.push('invalid value for "key_lifetime", must be smaller than or equal to 86400.')
      end

      if @key_lifetime < 180
        invalid_properties.push('invalid value for "key_lifetime", must be greater than or equal to 180.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @preshared_key.nil?
        invalid_properties.push('invalid value for "preshared_key", preshared_key cannot be nil.')
      end

      if @version.nil?
        invalid_properties.push('invalid value for "version", version cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @authentication.nil?
      authentication_validator = EnumAttributeValidator.new('String', ["sha1", "md5", "sha-256", "sha-384"])
      return false unless authentication_validator.valid?(@authentication)
      return false if @dh_group.nil?
      dh_group_validator = EnumAttributeValidator.new('Integer', [1, 2, 5, 14, 19, 20, 24])
      return false unless dh_group_validator.valid?(@dh_group)
      return false if @encryption.nil?
      encryption_validator = EnumAttributeValidator.new('String', ["3des-cbc", "aes-128-cbc", "aes-128-gcm", "aes-192-cbc", "aes-256-cbc", "aes-256-gcm", "des-cbc"])
      return false unless encryption_validator.valid?(@encryption)
      return false if @key_lifetime.nil?
      return false if @key_lifetime > 86400
      return false if @key_lifetime < 180
      return false if @name.nil?
      return false if @preshared_key.nil?
      return false if @version.nil?
      version_validator = EnumAttributeValidator.new('Integer', [1, 2])
      return false unless version_validator.valid?(@version)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] authentication Object to be assigned
    def authentication=(authentication)
      validator = EnumAttributeValidator.new('String', ["sha1", "md5", "sha-256", "sha-384"])
      unless validator.valid?(authentication)
        fail ArgumentError, "invalid value for \"authentication\", must be one of #{validator.allowable_values}."
      end
      @authentication = authentication
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] dh_group Object to be assigned
    def dh_group=(dh_group)
      validator = EnumAttributeValidator.new('Integer', [1, 2, 5, 14, 19, 20, 24])
      unless validator.valid?(dh_group)
        fail ArgumentError, "invalid value for \"dh_group\", must be one of #{validator.allowable_values}."
      end
      @dh_group = dh_group
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] encryption Object to be assigned
    def encryption=(encryption)
      validator = EnumAttributeValidator.new('String', ["3des-cbc", "aes-128-cbc", "aes-128-gcm", "aes-192-cbc", "aes-256-cbc", "aes-256-gcm", "des-cbc"])
      unless validator.valid?(encryption)
        fail ArgumentError, "invalid value for \"encryption\", must be one of #{validator.allowable_values}."
      end
      @encryption = encryption
    end

    # Custom attribute writer method with validation
    # @param [Object] key_lifetime Value to be assigned
    def key_lifetime=(key_lifetime)
      if key_lifetime.nil?
        fail ArgumentError, 'key_lifetime cannot be nil'
      end

      if key_lifetime > 86400
        fail ArgumentError, 'invalid value for "key_lifetime", must be smaller than or equal to 86400.'
      end

      if key_lifetime < 180
        fail ArgumentError, 'invalid value for "key_lifetime", must be greater than or equal to 180.'
      end

      @key_lifetime = key_lifetime
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] version Object to be assigned
    def version=(version)
      validator = EnumAttributeValidator.new('Integer', [1, 2])
      unless validator.valid?(version)
        fail ArgumentError, "invalid value for \"version\", must be one of #{validator.allowable_values}."
      end
      @version = version
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          authentication == o.authentication &&
          dh_group == o.dh_group &&
          encryption == o.encryption &&
          key_lifetime == o.key_lifetime &&
          name == o.name &&
          preshared_key == o.preshared_key &&
          version == o.version
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [authentication, dh_group, encryption, key_lifetime, name, preshared_key, version].hash
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
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
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
      when :Time
        Time.parse(value)
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
        # models (e.g. Pet) or oneOf
        klass = IbmCloudPower.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
