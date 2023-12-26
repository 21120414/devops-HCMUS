### Wizards from HCMUS!

# CSC11004 – MẠNG MÁY TÍNH NÂNG CAO - Project 03

## Triển khai CI/CD sử dụng Git, Jenkins và Docker.

## Requirement

- Isolate environment using virtual environment, e.g `python venv` is well-known suported.
- All user name is MSSV.
- Shared commit history must not be modified, thus, no rebase.

## Workflow

1. Makes changes, commit to remote `GitHub` repo.
2. `Jenkins` pulls changes from `GitHub`, build image and publish to `DockerHub`
3. `Jenkins` deploy the app to `Docker` container. 

## Goals

- To show off the automatic superior of DevOps.
- From code to production.

## Planning

[] Write a website, deploy locally on Docker.
[] Configure Jenkins to automatically pull changes -> build image -> publish image.
[] Configure Jenkins to automatically trigger the docker to run the container.
