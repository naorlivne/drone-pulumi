# it's official and small so i'm using it
FROM pulumi/pulumi:3.17.0

# first we need to copy everything
COPY . /drone-pulumi

entrypoint bash

# run the script that does the actual work when the container starts
CMD ["sh", "/drone-pulumi/drone_pulumi.sh", " 2>&1"]
