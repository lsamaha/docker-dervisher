# docker-dervisher
Docks a dervisher (AWS kinesis event producing application).

'''
docker run -d --env-file=env.txt lsamaha/docker-dervisher
'''

Where the env-file has entries like:

'''
AWS_ACCESS_KEY_ID=YOUR_ID_HERE
AWS_SECRET_ACCESS_KEY=YOUR_KEY_HERE
'''
