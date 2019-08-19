unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root'), :skip do
    it { should exist }
  end
end
# This is an example test, replace it with your own test.

describe package('python') do
  it { should be_installed }
end

describe package('python-pip') do
  it { should be_installed }
end

describe service('python') do
  it { should be_running }
end

describe package('python') do
  it { should be_enabled }
end
