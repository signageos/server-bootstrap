for node in `kubectl get nodes | awk '{print $1}'`; do
	ip=`kubectl get node $node -ojson | jq '.status.addresses[0].address' | xargs`
	scp aws-cloudwatch-agent-config-kubernetes.json $ip:config.json
	ssh $ip 'sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -a fetch-config -m ec2 -c file:config.json -s'
	ssh $ip 'rm config.json'
done
