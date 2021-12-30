import os

# Set environment variables
from ibm_watson import IAMTokenManager

apikey="IBM SPEEC HRECOGNITION SERVICE API KEY"
iam_token_manager = IAMTokenManager(apikey)
token = iam_token_manager.get_token()
#print(token)
os.environ['TOK'] = token

print(token)
