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

describe service('python') do
  it { should be_running }
end

describe service('python') do
  it { should be_enabled }
end

describe port(80) do
  it { should be_listening }
end

describe http('http://localhost',enable_remote_worker: true) do
  its('status'){ should cmp 502 }
end
