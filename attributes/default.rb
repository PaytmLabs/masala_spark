
default['apache_spark']['install_mode'] = 'tarball'

default['apache_spark']['download_url'] = 'http://d3kbcqa49mib13.cloudfront.net/spark-1.6.0-bin-hadoop2.6.tgz'
# The SHA256 checksum of the downloaded tarball.
default['apache_spark']['checksum'] = '439fe7793e0725492d3d36448adcd1db38f438dd1392bffd556b58bb9a3a2601'

# These options are used with the "package" installation mode.
default['apache_spark']['pkg_name'] = 'spark'
default['apache_spark']['pkg_version'] = '1.6.0'

# For setting ulimits for spark user
node.default["ulimit"]["users"][node["apache_spark"]["user"]]["filehandle_limit"] = 65536
node.default["ulimit"]["users"][node["apache_spark"]["user"]]["process_limit"] = 32768

# For setting sysctls for spark (applied by the base role)
default['sysctl']['params']['vm']['swappiness'] = "0"
default['sysctl']['params']['vm']['max_map_count'] = "262144"

