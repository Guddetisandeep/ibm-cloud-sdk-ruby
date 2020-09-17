# frozen_string_literal: true

require 'ibm-cloud-sdk'

methods = {
  floating_ips: IBM::Cloud::SDK::VPC::FloatingIPs,
  flowlog_collectors: IBM::Cloud::SDK::VPC::FlowLogCollectors,
  ike_policies: IBM::Cloud::SDK::VPC::IKEPolicies,
  images: IBM::Cloud::SDK::VPC::Images,
  instances: IBM::Cloud::SDK::VPC::Instances,
  ipsec_policies: IBM::Cloud::SDK::VPC::IPSecPolicies,
  keys: IBM::Cloud::SDK::VPC::Keys,
  load_balancers: IBM::Cloud::SDK::VPC::LoadBalancers,
  network_acls: IBM::Cloud::SDK::VPC::NetworkACLs,
  operating_systems: IBM::Cloud::SDK::VPC::OperatingSystems,
  public_gateways: IBM::Cloud::SDK::VPC::PublicGateways,
  regions: IBM::Cloud::SDK::VPC::Regions,
  security_groups: IBM::Cloud::SDK::VPC::SecurityGroups,
  subnets: IBM::Cloud::SDK::VPC::Subnets,
  volumes: IBM::Cloud::SDK::VPC::Volumes,
  volumes_profiles: IBM::Cloud::SDK::VPC::VolumeProfiles,
  vpcs: IBM::Cloud::SDK::VPC::Vpcs,
  vpn_gateways: IBM::Cloud::SDK::VPC::VPNGateways
}.freeze


vpc = IBM::CloudSDK.new(ENV['IBM_CLOUD_APIKEY']).vpc

RSpec.describe 'Test vpc API' do
  let(:log) {
    Logger.new(STDOUT).tap { |l| l.level = Logger::DEBUG }
  }

  it 'can be instantiated' do
    expect(vpc).to be_an_instance_of(IBM::Cloud::SDK::Vpc)
  end

  it 'region can be changed' do
    old_endpoint = vpc.endpoint
    expect(vpc.endpoint).to eq(old_endpoint)
    new_region = 'us-south'
    vpc.region = new_region
    expect(vpc.region).to eq(new_region)
    # TODO: Find new_region from within string.
    expect(vpc.endpoint).not_to eq(old_endpoint)
  end

  methods.each do |k, v|
    it "#{k} can be called" do
      child = vpc.send(k)
      expect(child).to be_an_instance_of(v)
    end
  end
end

methods.each do |k, v|
  RSpec.describe "#{k} vpc API" do
    child = vpc.send(k)

    it 'can access fetch' do
      res = child.fetch
      expect(res.status).to eq(200)
    end

    it 'can get data' do
      expect(child.params(limit: 100).data).to be_an_instance_of(Array)
    end

    if child.has_count?
      it 'has total_count and can get all' do
        total_count = child.count

        i = 0
        child.all.each do
          i += 1
        end
        expect(i).to eq(total_count)
      end
    else
      it 'does not have total_count and can get all' do
        total_count = child.data.length
        i = 0
        child.all.each do
          i += 1
        end
        expect(i).to eq(total_count)
      end
    end

    it 'can get an instance' do
      child.all.first(1) do |value|
        id = value.fetch(:id)
        data = child.instance(id).details if id
        expect(data).to be_an_instance_of(Hash)
      end
    end
  end
end
