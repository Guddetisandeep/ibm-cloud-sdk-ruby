=begin
#IAM Identity Services API

#The IAM Identity Service API allows for the management of Identities (Service IDs, ApiKeys).

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-beta2

=end

require 'spec_helper'
require 'json'

# Unit tests for IbmCloudIam::TokenOperationsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TokenOperationsApi' do
  before do
    # run before each test
    @api_instance = IbmCloudIam::TokenOperationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TokenOperationsApi' do
    it 'should create an instance of TokenOperationsApi' do
      expect(@api_instance).to be_instance_of(IbmCloudIam::TokenOperationsApi)
    end
  end

  # unit tests for get_token_api_key
  # Create an IAM access token for a user or service ID using an API key.
  # Creates a non-opaque access token for an API key.
  # @param grant_type Grant type for this API call. You must set the grant type to &#x60;urn:ibm:params:oauth:grant-type:apikey&#x60;.
  # @param apikey The value of the api key
  # @param [Hash] opts the optional parameters
  # @return [TokenResponse]
  describe 'get_token_api_key test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_token_api_key_delegated_refresh_token
  # Create an IAM access token and delegated refresh token for a user or service ID.
  # Creates a non-opaque access token and a delegated refresh token for an API key.
  # @param grant_type Grant type for this API call. You must set the grant type to &#x60;urn:ibm:params:oauth:grant-type:apikey&#x60;.
  # @param apikey The value of the API key.
  # @param response_type Either &#39;delegated_refresh_token&#39; to receive a delegated refresh token only, or &#39;cloud_iam delegated_refresh_token&#39; to receive both an IAM access token and a delegated refresh token in one API call.
  # @param receiver_client_ids A comma separated list of one or more client IDs that will be able to consume the delegated refresh token. The service that accepts a delegated refresh token as API parameter must expose its client ID to allow this API call. The receiver of the delegated refresh token will be able to use the refresh token until it expires.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :delegated_refresh_token_expiry Expiration in seconds until the delegated refresh token must be consumed by the receiver client IDs. After the expiration, no client ID can consume the delegated refresh token, even if the life time of the refresh token inside is still not expired. The default, if not specified, is 518,400 seconds which corresponds to 6 days.
  # @return [TokenResponse]
  describe 'get_token_api_key_delegated_refresh_token test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_token_iam_authz
  # Create an IAM access token based on an authorization policy.
  # Creates a non-opaque access token, if an appropriate authorization policy is in place. This kind of IAM access token is typically used for access between services.
  # @param grant_type Grant type for this API call. You must set the grant type to &#x60;urn:ibm:params:oauth:grant-type:iam-authz&#x60;.
  # @param access_token The IAM access token of the identity that has the appropriate authorization to create an IAM access token for a given resource.
  # @param desired_iam_id The IAM ID of the IAM access token identity that should be created. The desired_iam_id identifies a resource identity. The IAM ID consists of the prefix crn- and the CRN of the target identity, e.g. crn-crn:v1:bluemix:public:cloud-object-storage:global:a/59bcbfa6ea2f006b4ed7094c1a08dcdd:1a0ec336-f391-4091-a6fb-5e084a4c56f4::.
  # @param [Hash] opts the optional parameters
  # @return [TokenResponse]
  describe 'get_token_iam_authz test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_token_password
  # Create an IAM access token for a user using username / password credentials and an optional account identifier.
  # Creates a non-opaque access token for a username and password. To be able to call IBM Cloud APIs, the token must be made account-specific. For this purpose, also pass the 32 character long identifier for your account in the API call. This API call is possible only for non-federated IBMid users.
  # @param authorization Basic Authorization Header containing a valid client ID and secret. If this header is omitted the request fails with BXNIM0308E: &#39;No authorization header found&#39;. You can use the client ID and secret that is used by the IBM Cloud CLI: &#x60;bx / bx&#x60;
  # @param grant_type Grant type for this API call. You must set the grant type to &#x60;password&#x60;.
  # @param username The value of the username
  # @param password The value of the password
  # @param [Hash] opts the optional parameters
  # @option opts [String] :account The 32 character identifier of the account. Specify this parameter to get an account-specific IAM token. IBM Cloud APIs require that IAM tokens are account-specific.
  # @return [TokenResponse]
  describe 'get_token_password test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
