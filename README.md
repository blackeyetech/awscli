# Introduction

This image allows you to run a container for the AWS CLI.

You should bind mount your project directory to **/home/aws**.

NOTE: You need to ensure your **.aws** directory is in the root of your project
directory, unless you are going to run **configure**.

NOTE: The container is run as the user **aws**.

An example of using this container is as follows:

```
docker container run --rm -it \
                     --mount type=bind,src=$(pwd),target=/home/aws \
                     blackeyetechnology/awscli
```

**aws** is the default command.
