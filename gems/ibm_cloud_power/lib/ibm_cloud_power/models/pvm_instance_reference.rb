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
  class PVMInstanceReference
    # PCloud PVM Instance ID
    attr_accessor :pvm_instance_id

    # Name of the server
    attr_accessor :server_name

    # The ImageID used by the server
    attr_accessor :image_id

    # Number of processors allocated
    attr_accessor :processors

    # Minimum number of processors that can be allocated (for resize)
    attr_accessor :minproc

    # Maximum number of processors that can be allocated (for resize)
    attr_accessor :maxproc

    # Processor type (dedicated, shared, capped)
    attr_accessor :proc_type

    # Amount of memory allocated (in GB)
    attr_accessor :memory

    # Minimum amount of memory that can be allocated (in GB, for resize)
    attr_accessor :minmem

    # Maximum amount of memory that can be allocated (in GB, for resize)
    attr_accessor :maxmem

    # Size of allocated disk (in GB)
    attr_accessor :disk_size

    # (deprecated - replaced by networks) The list of addresses and their network information
    attr_accessor :addresses

    # The list of addresses and their network information
    attr_accessor :networks

    # The status of the instance
    attr_accessor :status

    # The progress of an operation
    attr_accessor :progress

    attr_accessor :fault

    # Date/Time of PVM creation
    attr_accessor :creation_date

    # Date/Time of PVM last update
    attr_accessor :updated_date

    # System type used to host the instance
    attr_accessor :sys_type

    attr_accessor :health

    # Link to Cloud Instance resource
    attr_accessor :href

    attr_accessor :software_licenses

    # The pvm instance SRC lists
    attr_accessor :srcs

    # VM pinning policy to use [none, soft, hard]
    attr_accessor :pin_policy

    # Type of the OS [aix, ibmi, redhat, sles]
    attr_accessor :os_type

    # OS system information (usually version and build)
    attr_accessor :operating_system

    attr_accessor :sap_profile

    attr_accessor :virtual_cores

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
        :'pvm_instance_id' => :'pvmInstanceID',
        :'server_name' => :'serverName',
        :'image_id' => :'imageID',
        :'processors' => :'processors',
        :'minproc' => :'minproc',
        :'maxproc' => :'maxproc',
        :'proc_type' => :'procType',
        :'memory' => :'memory',
        :'minmem' => :'minmem',
        :'maxmem' => :'maxmem',
        :'disk_size' => :'diskSize',
        :'addresses' => :'addresses',
        :'networks' => :'networks',
        :'status' => :'status',
        :'progress' => :'progress',
        :'fault' => :'fault',
        :'creation_date' => :'creationDate',
        :'updated_date' => :'updatedDate',
        :'sys_type' => :'sysType',
        :'health' => :'health',
        :'href' => :'href',
        :'software_licenses' => :'softwareLicenses',
        :'srcs' => :'srcs',
        :'pin_policy' => :'pinPolicy',
        :'os_type' => :'osType',
        :'operating_system' => :'operatingSystem',
        :'sap_profile' => :'sapProfile',
        :'virtual_cores' => :'virtualCores'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'pvm_instance_id' => :'String',
        :'server_name' => :'String',
        :'image_id' => :'String',
        :'processors' => :'Float',
        :'minproc' => :'Float',
        :'maxproc' => :'Float',
        :'proc_type' => :'String',
        :'memory' => :'Float',
        :'minmem' => :'Float',
        :'maxmem' => :'Float',
        :'disk_size' => :'Float',
        :'addresses' => :'Array<PVMInstanceNetwork>',
        :'networks' => :'Array<PVMInstanceNetwork>',
        :'status' => :'String',
        :'progress' => :'Float',
        :'fault' => :'PVMInstanceFault',
        :'creation_date' => :'DateTime',
        :'updated_date' => :'DateTime',
        :'sys_type' => :'String',
        :'health' => :'PVMInstanceHealth',
        :'href' => :'String',
        :'software_licenses' => :'SoftwareLicenses',
        :'srcs' => :'Array<Array<SRC>>',
        :'pin_policy' => :'String',
        :'os_type' => :'String',
        :'operating_system' => :'String',
        :'sap_profile' => :'SAPProfileReference',
        :'virtual_cores' => :'VirtualCores'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `IbmCloudPower::PVMInstanceReference` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IbmCloudPower::PVMInstanceReference`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'pvm_instance_id')
        self.pvm_instance_id = attributes[:'pvm_instance_id']
      end

      if attributes.key?(:'server_name')
        self.server_name = attributes[:'server_name']
      end

      if attributes.key?(:'image_id')
        self.image_id = attributes[:'image_id']
      end

      if attributes.key?(:'processors')
        self.processors = attributes[:'processors']
      end

      if attributes.key?(:'minproc')
        self.minproc = attributes[:'minproc']
      end

      if attributes.key?(:'maxproc')
        self.maxproc = attributes[:'maxproc']
      end

      if attributes.key?(:'proc_type')
        self.proc_type = attributes[:'proc_type']
      else
        self.proc_type = 'dedicated'
      end

      if attributes.key?(:'memory')
        self.memory = attributes[:'memory']
      end

      if attributes.key?(:'minmem')
        self.minmem = attributes[:'minmem']
      end

      if attributes.key?(:'maxmem')
        self.maxmem = attributes[:'maxmem']
      end

      if attributes.key?(:'disk_size')
        self.disk_size = attributes[:'disk_size']
      end

      if attributes.key?(:'addresses')
        if (value = attributes[:'addresses']).is_a?(Array)
          self.addresses = value
        end
      end

      if attributes.key?(:'networks')
        if (value = attributes[:'networks']).is_a?(Array)
          self.networks = value
        end
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'progress')
        self.progress = attributes[:'progress']
      end

      if attributes.key?(:'fault')
        self.fault = attributes[:'fault']
      end

      if attributes.key?(:'creation_date')
        self.creation_date = attributes[:'creation_date']
      end

      if attributes.key?(:'updated_date')
        self.updated_date = attributes[:'updated_date']
      end

      if attributes.key?(:'sys_type')
        self.sys_type = attributes[:'sys_type']
      end

      if attributes.key?(:'health')
        self.health = attributes[:'health']
      end

      if attributes.key?(:'href')
        self.href = attributes[:'href']
      end

      if attributes.key?(:'software_licenses')
        self.software_licenses = attributes[:'software_licenses']
      end

      if attributes.key?(:'srcs')
        if (value = attributes[:'srcs']).is_a?(Array)
          self.srcs = value
        end
      end

      if attributes.key?(:'pin_policy')
        self.pin_policy = attributes[:'pin_policy']
      end

      if attributes.key?(:'os_type')
        self.os_type = attributes[:'os_type']
      end

      if attributes.key?(:'operating_system')
        self.operating_system = attributes[:'operating_system']
      end

      if attributes.key?(:'sap_profile')
        self.sap_profile = attributes[:'sap_profile']
      end

      if attributes.key?(:'virtual_cores')
        self.virtual_cores = attributes[:'virtual_cores']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @pvm_instance_id.nil?
        invalid_properties.push('invalid value for "pvm_instance_id", pvm_instance_id cannot be nil.')
      end

      if @server_name.nil?
        invalid_properties.push('invalid value for "server_name", server_name cannot be nil.')
      end

      if @image_id.nil?
        invalid_properties.push('invalid value for "image_id", image_id cannot be nil.')
      end

      if @processors.nil?
        invalid_properties.push('invalid value for "processors", processors cannot be nil.')
      end

      if @proc_type.nil?
        invalid_properties.push('invalid value for "proc_type", proc_type cannot be nil.')
      end

      if @memory.nil?
        invalid_properties.push('invalid value for "memory", memory cannot be nil.')
      end

      if @disk_size.nil?
        invalid_properties.push('invalid value for "disk_size", disk_size cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @href.nil?
        invalid_properties.push('invalid value for "href", href cannot be nil.')
      end

      if @os_type.nil?
        invalid_properties.push('invalid value for "os_type", os_type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @pvm_instance_id.nil?
      return false if @server_name.nil?
      return false if @image_id.nil?
      return false if @processors.nil?
      return false if @proc_type.nil?
      proc_type_validator = EnumAttributeValidator.new('String', ["dedicated", "shared", "capped", ""])
      return false unless proc_type_validator.valid?(@proc_type)
      return false if @memory.nil?
      return false if @disk_size.nil?
      return false if @status.nil?
      return false if @href.nil?
      return false if @os_type.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] proc_type Object to be assigned
    def proc_type=(proc_type)
      validator = EnumAttributeValidator.new('String', ["dedicated", "shared", "capped", ""])
      unless validator.valid?(proc_type)
        fail ArgumentError, "invalid value for \"proc_type\", must be one of #{validator.allowable_values}."
      end
      @proc_type = proc_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          pvm_instance_id == o.pvm_instance_id &&
          server_name == o.server_name &&
          image_id == o.image_id &&
          processors == o.processors &&
          minproc == o.minproc &&
          maxproc == o.maxproc &&
          proc_type == o.proc_type &&
          memory == o.memory &&
          minmem == o.minmem &&
          maxmem == o.maxmem &&
          disk_size == o.disk_size &&
          addresses == o.addresses &&
          networks == o.networks &&
          status == o.status &&
          progress == o.progress &&
          fault == o.fault &&
          creation_date == o.creation_date &&
          updated_date == o.updated_date &&
          sys_type == o.sys_type &&
          health == o.health &&
          href == o.href &&
          software_licenses == o.software_licenses &&
          srcs == o.srcs &&
          pin_policy == o.pin_policy &&
          os_type == o.os_type &&
          operating_system == o.operating_system &&
          sap_profile == o.sap_profile &&
          virtual_cores == o.virtual_cores
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [pvm_instance_id, server_name, image_id, processors, minproc, maxproc, proc_type, memory, minmem, maxmem, disk_size, addresses, networks, status, progress, fault, creation_date, updated_date, sys_type, health, href, software_licenses, srcs, pin_policy, os_type, operating_system, sap_profile, virtual_cores].hash
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
