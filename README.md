<div align="center">

<a id="readme-top"></a>

<br>

<img alt="MoJ logo" src="https://moj-logos.s3.eu-west-2.amazonaws.com/moj-uk-logo.png" width="200">

# CDPT AV

</div>

Clam AV base image for the Central Digital Product Team.

## Development

### Working on the Code

Work should be based off of, and PRed to, the main branch. We use the GitHub
PR approval process so once your PR is ready you'll need to have one person
approve it, and the CI tests passing, before it can be merged.


### Basic Setup

#### Cloning This Repository

Clone this repository then `cd` into the new directory

```
$ git clone git@github.com:ministryofjustice/cdpt-av.git
$ cd cdpt-av
```

### Building and pushing the image

The deploy workflow will build and push the CDPT-AV image to ECR. This image is then used by CDPT apps to run a containerised copy of Clam AV.

This image should be pushed on a regular basis to keep up-to-date with Clam AV security updates.