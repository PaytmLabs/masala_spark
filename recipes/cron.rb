#
# Cookbook Name:: masala_spark
# Recipe:: cron
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

# underlying cookbook generated per-day logs but does not clean them at all
# to avoid more forking we just run a cron to purge past 7 days
cron "logrotate_spark" do
  minute "0"
  hour "12"
  command "find #{node['apache_spark']['standalone']['log_dir']} -mtime +7 -name '*.log' -exec /bin/rm {} ';'"
  user node['apache_spark']['user']
end
