## Load test a SageMaker Endpoint

`locust` folder contains `distributed.sh` which kicks of the distrabuted locust load test. 

Steps to run a load test:
1. Update `distributed.sh` ENV variables: 
```
export REGION=us-east-1
export CONTENT_TYPE=application/json
export PAYLOAD='{"inputs": "I am super happy right now."}'
export USERS=10
export WORKERS=30
export RUN_TIME=1m
```

2. `chmod +x distributed.sh`
3. `./distributed.sh endpoint-name`


## Security

See [CONTRIBUTING](CONTRIBUTING.md#security-issue-notifications) for more information.

## License

This library is licensed under the MIT-0 License. See the LICENSE file.

