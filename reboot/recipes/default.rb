#recipe start

file '/tmp/hello' do
  action :create
  notifies :request_reboot, 'reboot[Restart Computer]', :delayed
end

reboot 'Restart Computer' do
  action :nothing
  reason 'Need to reboot when the run completes successfully.'
  delay_mins 2
  ignore_failure true
end

#recipe end