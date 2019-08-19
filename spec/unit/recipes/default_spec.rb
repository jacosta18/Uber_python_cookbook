#
# Cookbook:: python
# Spec:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'python::default' do
  context 'When all attributes are default, on Ubuntu 18.04' do
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
    platform 'ubuntu', '18.04'

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'should update the souces list' do
      expect(chef_run).to update_apt_update 'update_sources'
    end

    it 'should install python' do
      expect(chef_run).to install_package 'python'
    end

    it 'should install pip for python' do
      expect(chef_run).to install_package 'python-pip'
    end

    it 'should install two plugins for gnureadline' do
      expect(chef_run).to install_package 'libncurses5-dev'
      expect(chef_run).to install_package 'libffi-dev'
    end

    it 'should install flask version 0.10.1' do
      expect(chef_run).to run_execute('pip install flask==0.10.1')
    end

    it 'should install Jinja2 version 2.7.3' do
      expect(chef_run).to run_execute('pip install Jinja2==2.7.3')
    end

    it 'should install flask MarkupSafe version 0.23' do
      expect(chef_run).to run_execute('pip install MarkupSafe==0.23')
    end

    it 'should install Werkzeug version 0.9.6' do
      expect(chef_run).to run_execute('pip install Werkzeug==0.9.6')
    end

    it 'should install gnureadline version 6.3.3' do
      expect(chef_run).to run_execute('pip install gnureadline==6.3.3')
    end

    it 'should install rauth version 0.7.0' do
      expect(chef_run).to run_execute('pip install rauth==0.7.0')
    end

    it 'should install requests version 2.3.0' do
      expect(chef_run).to run_execute('pip install requests==2.3.0')
    end

    it 'should install wsgiref version 0.1.2' do
      expect(chef_run).to run_execute('pip install wsgiref==0.1.2')
    end

    it 'should install gunicorn version 18.0' do
      expect(chef_run).to run_execute('pip install gunicorn==18.0')
    end

    it 'should install pip Flask-SSLify==0.1.4' do
      expect(chef_run).to run_execute('pip install Flask-SSLify==0.1.4')
    end

    it 'should install pytest version 2.5.2' do
      expect(chef_run).to run_execute('pip install pytest==2.5.2')
    end

    it 'should install pip pytest-cov version 1.6' do
      expect(chef_run).to run_execute('pip install pytest-cov==1.6')
    end

    it 'should install pip betamax version 0.4.0' do
      expect(chef_run).to run_execute('pip install betamax==0.4.0')
    end

    it 'should install pip flake version 2.1.0' do
      expect(chef_run).to run_execute('pip install flake8==2.1.0')
    end

    it 'should install pip pep8 version 1.5.66' do
      expect(chef_run).to run_execute('pip install pep8==1.5.6')
    end

    it 'should install pip pyflakes version 0.8.1' do
      expect(chef_run).to run_execute('pip install pyflakes==0.8.1')
    end

    it 'should install pip coveralls version 0.4.2' do
      expect(chef_run).to run_execute('pip install coveralls==0.4.2')
    end
  end
end
