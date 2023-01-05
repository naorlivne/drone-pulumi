# it's official and small so i'm using it
FROM pulumi/pulumi:3.51.0

# first we need to copy everything
COPY . /drone-pulumi

ENTRYPOINT ["/bin/bash"]

RUN chmod +x /drone-pulumi/drone_pulumi.sh

# run the script that does the actual work when the container starts
CMD ["/drone-pulumi/drone_pulumi.sh"]
