FROM google/cloud-sdk:slim

COPY /tekton/creds-secrets/docker-credentials/.dockerconfigjson  key.json

RUN gcloud auth activate-service-account --key-file key.json

RUN gsutil ls gs://hello-world-data


ENTRYPOINT echo hello world :)
