for host in `cat databases.txt`; do
	scp aws-cloudwatch-agent-config.json $host:config.json
	ssh $host 'sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -a fetch-config -m ec2 -c file:config.json -s'
	ssh $host 'rm config.json'
done
