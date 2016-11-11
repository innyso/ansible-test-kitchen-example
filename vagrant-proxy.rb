unless Vagrant.has_plugin?("vagrant-proxyconf")
  raise "Missing required plugin 'vagrant-proxyconf', run `vagrant plugin install vagrant-proxyconf`"
end

Vagrant.configure(2) do |config|
  # Allows busser gem and deps to be fetched as required
  config.proxy.http     = "http://10.0.2.2:3128"
  config.proxy.https    = "https://10.0.2.2:3128"
  config.proxy.no_proxy = "localhost,127.0.0.1"
end
