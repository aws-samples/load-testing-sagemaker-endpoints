#replace with your endpoint name in format https://<<endpoint-name>>
export ENDPOINT_NAME=https://huggingface-pytorch-inference-2022-10-04-00-07-12-419

export REGION=us-east-1
export CONTENT_TYPE=application/json
export PAYLOAD='{"inputs": "I am super happy right now."}'

#replace with the locust script that you are testing, this is the locust_script that will be used to make the InvokeEndpoint API calls. 
export SCRIPT=locust_script.py
#make sure you are in a virtual environment
#. ./venv/bin/activate
locust -f $SCRIPT -H $ENDPOINT_NAME --master --expect-workers=30 -u 10 -t 1m --csv results --headless &
locust -f $SCRIPT -H $ENDPOINT_NAME --worker --master-host=localhost &
locust -f $SCRIPT -H $ENDPOINT_NAME --worker --master-host=localhost &
locust -f $SCRIPT -H $ENDPOINT_NAME --worker --master-host=localhost &
locust -f $SCRIPT -H $ENDPOINT_NAME --worker --master-host=localhost &
locust -f $SCRIPT -H $ENDPOINT_NAME --worker --master-host=localhost &
locust -f $SCRIPT -H $ENDPOINT_NAME --worker --master-host=localhost &
locust -f $SCRIPT -H $ENDPOINT_NAME --worker --master-host=localhost &
locust -f $SCRIPT -H $ENDPOINT_NAME --worker --master-host=localhost &
locust -f $SCRIPT -H $ENDPOINT_NAME --worker --master-host=localhost &
locust -f $SCRIPT -H $ENDPOINT_NAME --worker --master-host=localhost &
locust -f $SCRIPT -H $ENDPOINT_NAME --worker --master-host=localhost &
locust -f $SCRIPT -H $ENDPOINT_NAME --worker --master-host=localhost &
locust -f $SCRIPT -H $ENDPOINT_NAME --worker --master-host=localhost &
locust -f $SCRIPT -H $ENDPOINT_NAME --worker --master-host=localhost &
locust -f $SCRIPT -H $ENDPOINT_NAME --worker --master-host=localhost &
locust -f $SCRIPT -H $ENDPOINT_NAME --worker --master-host=localhost &
locust -f $SCRIPT -H $ENDPOINT_NAME --worker --master-host=localhost &
locust -f $SCRIPT -H $ENDPOINT_NAME --worker --master-host=localhost &
locust -f $SCRIPT -H $ENDPOINT_NAME --worker --master-host=localhost &
locust -f $SCRIPT -H $ENDPOINT_NAME --worker --master-host=localhost &
locust -f $SCRIPT -H $ENDPOINT_NAME --worker --master-host=localhost &
locust -f $SCRIPT -H $ENDPOINT_NAME --worker --master-host=localhost &
locust -f $SCRIPT -H $ENDPOINT_NAME --worker --master-host=localhost &
locust -f $SCRIPT -H $ENDPOINT_NAME --worker --master-host=localhost &
locust -f $SCRIPT -H $ENDPOINT_NAME --worker --master-host=localhost &
locust -f $SCRIPT -H $ENDPOINT_NAME --worker --master-host=localhost &
locust -f $SCRIPT -H $ENDPOINT_NAME --worker --master-host=localhost &
locust -f $SCRIPT -H $ENDPOINT_NAME --worker --master-host=localhost &
locust -f $SCRIPT -H $ENDPOINT_NAME --worker --master-host=localhost &
locust -f $SCRIPT -H $ENDPOINT_NAME --worker --master-host=localhost &
