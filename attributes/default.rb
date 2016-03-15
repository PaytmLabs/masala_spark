
default['apache_spark']['install_mode'] = 'tarball'

default['apache_spark']['download_url'] = 'http://apache.mirror.rafal.ca/spark/spark-1.6.1/spark-1.6.1-bin-hadoop2.6.tgz'
# The SHA256 checksum of the downloaded tarball.
default['apache_spark']['checksum'] = '09f3b50676abc9b3d1895773d18976953ee76945afa72fa57e6473ce4e215970'

# These options are used with the "package" installation mode.
default['apache_spark']['pkg_name'] = 'spark'
default['apache_spark']['pkg_version'] = '1.6.1'

# For setting ulimits for spark user
node.default["ulimit"]["users"][node["apache_spark"]["user"]]["filehandle_limit"] = 65536
node.default["ulimit"]["users"][node["apache_spark"]["user"]]["process_limit"] = 32768

# For setting sysctls for spark (applied by the base role)
default['sysctl']['params']['vm']['swappiness'] = "0"
default['sysctl']['params']['vm']['max_map_count'] = "262144"

