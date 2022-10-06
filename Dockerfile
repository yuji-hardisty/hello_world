FROM google/cloud-sdk:slim

RUN echo "GCP_SA_KEY = $GCP_SA_KEY"

COPY $GCP_SA_KEY key.json

RUN gcloud auth activate-service-account --key-file key.json

RUN gsutil ls gs://hello-world-data


ENTRYPOINT echo hello world :)
