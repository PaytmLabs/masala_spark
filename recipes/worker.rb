#
# Cookbook Name:: masala_spark
# Recipe:: worker
#
# Copyright 2016, Paytm Labs
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

include_recipe 'masala_base::default'
# Apply ulmits (see attributes/default.rb)
include_recipe "ulimit"

#primary_if = node['network']['interfaces'][node['system']['primary_interface']]
#primary_addrs = primary_if['addresses']
#primary_addrs_ipv4 = primary_addrs.select { |_addr, attrs| attrs['family'] == 'inet' }
#primary_ip = primary_addrs_ipv4.keys.first
#node.default['apache_spark']['standalone']['worker_bind_ip'] = primary_ip

include_recipe 'apache_spark::spark-standalone-worker'
include_recipe 'masala_spark::cron'

