FROM google/cloud-sdk:slim

RUN echo "***GCP_SA_KEY= $GCP_SA_KEY***"

RUN gcloud auth activate-service-account --key-file $GCP_SA_KEY

RUN gsutil ls gs://hello-world-data


ENTRYPOINT echo hello world :)
