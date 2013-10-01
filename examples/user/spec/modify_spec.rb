require 'chefspec'

describe 'user::modify' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'modifys a user with an explicit action' do
    expect(chef_run).to modify_user('explicit_action')
  end

  it 'modifys a user with attributes' do
    expect(chef_run).to modify_user('with_attributes').with(uid: '1234')
  end

  it 'modifys a user when specifying the identity attribute' do
    expect(chef_run).to modify_user('identity_attribute')
  end
end