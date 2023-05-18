# [Best practices for load testing Amazon SageMaker real-time inference endpoints](https://aws.amazon.com/blogs/machine-learning/best-practices-for-load-testing-amazon-sagemaker-real-time-inference-endpoints/)

## Setup

To get started have an EC2 instance up and running, in the case of this example we used an ml.c5.18xlarge instance. You can launch multiple EC2 instances to further get client side power to ramp up traffic. This script is not just EC2 reliant, if you want you can run this on EKS or even a SageMaker Notebook Instance, just be aware of the client compute power you have so that you do not get throttled on that end. For launching and setting up an EC2 instance follow this [documentation](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/LaunchingAndUsingInstances.html).

`locust` folder contains `distributed.sh` which kicks of the [distributed locust](https://docs.locust.io/en/stable/running-distributed.html) load test. 

## Load Test

Steps to run a load test:
1. Update `distributed.sh` ENV variables: 
```
export REGION=us-east-1
export CONTENT_TYPE=application/json
export PAYLOAD='{"inputs": "I am super happy right now."}'
export USERS=30
export WORKERS=10
export RUN_TIME=1m
```

2. `chmod +x distributed.sh`
3. `./distributed.sh endpoint-name`


## Security

See [CONTRIBUTING](CONTRIBUTING.md#security-issue-notifications) for more information.

## License

This library is licensed under the MIT-0 License. See the LICENSE file.

