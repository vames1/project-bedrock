import json
import logging
logger = logging.getLogger()
logger.setLevel(logging.INFO)
def handler(event, context):
 for record in event['Records']:
 bucket = record['s3']['bucket']['name']
  key = record['s3']['object']['key']
logger.info(f"Image received: {key}")
logger.info(f"Bucket: {bucket}")
logger.info(f"File size: {record['s3']['object']['size']} bytes")
  return {
'statusCode': 200,
'body': json.dumps('File processed successfully!')
}
