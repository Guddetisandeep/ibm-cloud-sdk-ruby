=begin
#Power Cloud API

#IBM Power Cloud API for Power Hardware / Infrastructure

The version of the OpenAPI document: 1.0.0
Contact: kylej@us.ibm.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-beta2

=end

require 'spec_helper'
require 'json'

# Unit tests for IbmCloudPower::PCloudSAPApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PCloudSAPApi' do
  before do
    # run before each test
    @api_instance = IbmCloudPower::PCloudSAPApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PCloudSAPApi' do
    it 'should create an instance of PCloudSAPApi' do
      expect(@api_instance).to be_instance_of(IbmCloudPower::PCloudSAPApi)
    end
  end

  # unit tests for pcloud_sap_get
  # Get the information on an SAP profile
  # @param cloud_instance_id Cloud Instance ID of a PCloud Instance
  # @param sap_profile_id SAP Profile ID
  # @param [Hash] opts the optional parameters
  # @return [SAPProfile]
  describe 'pcloud_sap_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for pcloud_sap_getall
  # Get list of SAP profiles
  # @param cloud_instance_id Cloud Instance ID of a PCloud Instance
  # @param [Hash] opts the optional parameters
  # @return [SAPProfiles]
  describe 'pcloud_sap_getall test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for pcloud_sap_post
  # Create a new SAP PVM Instance
  # @param cloud_instance_id Cloud Instance ID of a PCloud Instance
  # @param body Parameters for the creation of a new SAP PVM Instance
  # @param [Hash] opts the optional parameters
  # @return [Array<PVMInstance>]
  describe 'pcloud_sap_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
