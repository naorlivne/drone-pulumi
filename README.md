# drone-pulumi

CI/CD build status: [![Build Status](https://cloud.drone.io/api/badges/naorlivne/drone-pulumi/status.svg)](https://cloud.drone.io/naorlivne/drone-pulumi)

Drone plugin for running pulumi.
## Usage

This plugin can be used to deploy pulumi stacks, it will create\update the given stack as needed.

The below pipeline configuration demonstrates simple usage:

```yaml
kind: pipeline
type: docker
name: default

steps:
- name: pulumi_deploy
  image: naorlivne/drone-pulumi
  settings:
    pulumi_command: up --non-interactive --skip-preview
    pulumi_dependencies: pip install -r requirements.txt

```

## Parameter Reference

#### pulumi_command

The command to run in the container, defaults to `up --non-interactive --skip-preview`.

#### pulumi_dependencies

The dependencies to install in the container, defaults to `pip install -r requirements.txt`.
