=begin
#IAM Identity Services API

#The IAM Identity Service API allows for the management of Identities (Service IDs, ApiKeys).

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-beta2

=end

require 'date'

module IbmCloudIam
  # Response body format for service ID V1 REST requests.
  class ServiceId
    attr_accessor :context

    # Unique identifier of this Service Id.
    attr_accessor :id

    # Cloud wide identifier for identities of this service ID.
    attr_accessor :iam_id

    # Version of the service ID details object. You need to specify this value when updating the service ID to avoid stale updates.
    attr_accessor :entity_tag

    # Cloud Resource Name of the item. Example Cloud Resource Name: 'crn:v1:bluemix:public:iam-identity:us-south:a/myaccount::serviceid:1234-5678-9012'
    attr_accessor :crn

    # The service ID cannot be changed if set to true.
    attr_accessor :locked

    # If set contains a date time string of the creation date in ISO format
    attr_accessor :created_at

    # If set contains a date time string of the last modification date in ISO format
    attr_accessor :modified_at

    # ID of the account the service ID belongs to.
    attr_accessor :account_id

    # Name of the Service Id. The name is not checked for uniqueness. Therefore multiple names with the same value can exist. Access is done via the UUID of the Service Id.
    attr_accessor :name

    # The optional description of the Service Id. The 'description' property is only available if a description was provided during a create of a Service Id.
    attr_accessor :description

    # Optional list of CRNs (string array) which point to the services connected to the service ID.
    attr_accessor :unique_instance_crns

    # History of the Service ID
    attr_accessor :history

    attr_accessor :apikey

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'context' => :'context',
        :'id' => :'id',
        :'iam_id' => :'iam_id',
        :'entity_tag' => :'entity_tag',
        :'crn' => :'crn',
        :'locked' => :'locked',
        :'created_at' => :'created_at',
        :'modified_at' => :'modified_at',
        :'account_id' => :'account_id',
        :'name' => :'name',
        :'description' => :'description',
        :'unique_instance_crns' => :'unique_instance_crns',
        :'history' => :'history',
        :'apikey' => :'apikey'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'context' => :'ResponseContext',
        :'id' => :'String',
        :'iam_id' => :'String',
        :'entity_tag' => :'String',
        :'crn' => :'String',
        :'locked' => :'Boolean',
        :'created_at' => :'DateTime',
        :'modified_at' => :'DateTime',
        :'account_id' => :'String',
        :'name' => :'String',
        :'description' => :'String',
        :'unique_instance_crns' => :'Array<String>',
        :'history' => :'Array<EnityHistoryRecord>',
        :'apikey' => :'ApiKey'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `IbmCloudIam::ServiceId` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IbmCloudIam::ServiceId`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'context')
        self.context = attributes[:'context']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'iam_id')
        self.iam_id = attributes[:'iam_id']
      end

      if attributes.key?(:'entity_tag')
        self.entity_tag = attributes[:'entity_tag']
      end

      if attributes.key?(:'crn')
        self.crn = attributes[:'crn']
      end

      if attributes.key?(:'locked')
        self.locked = attributes[:'locked']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'modified_at')
        self.modified_at = attributes[:'modified_at']
      end

      if attributes.key?(:'account_id')
        self.account_id = attributes[:'account_id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'unique_instance_crns')
        if (value = attributes[:'unique_instance_crns']).is_a?(Array)
          self.unique_instance_crns = value
        end
      end

      if attributes.key?(:'history')
        if (value = attributes[:'history']).is_a?(Array)
          self.history = value
        end
      end

      if attributes.key?(:'apikey')
        self.apikey = attributes[:'apikey']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @iam_id.nil?
        invalid_properties.push('invalid value for "iam_id", iam_id cannot be nil.')
      end

      if @crn.nil?
        invalid_properties.push('invalid value for "crn", crn cannot be nil.')
      end

      if @locked.nil?
        invalid_properties.push('invalid value for "locked", locked cannot be nil.')
      end

      if @account_id.nil?
        invalid_properties.push('invalid value for "account_id", account_id cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @apikey.nil?
        invalid_properties.push('invalid value for "apikey", apikey cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @iam_id.nil?
      return false if @crn.nil?
      return false if @locked.nil?
      return false if @account_id.nil?
      return false if @name.nil?
      return false if @apikey.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          context == o.context &&
          id == o.id &&
          iam_id == o.iam_id &&
          entity_tag == o.entity_tag &&
          crn == o.crn &&
          locked == o.locked &&
          created_at == o.created_at &&
          modified_at == o.modified_at &&
          account_id == o.account_id &&
          name == o.name &&
          description == o.description &&
          unique_instance_crns == o.unique_instance_crns &&
          history == o.history &&
          apikey == o.apikey
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [context, id, iam_id, entity_tag, crn, locked, created_at, modified_at, account_id, name, description, unique_instance_crns, history, apikey].hash
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
        IbmCloudIam.const_get(type).build_from_hash(value)
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
