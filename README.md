# S3 Static Web Hosting Terraform Configuration

## Purpose

Create and manage an AWS S3 bucket for hosting of static web content, such as a single page application

## Description

Using a combination of VT and AWS awesomeness awesome sauce is generated.
See the architectural diagram below:

Make sure you include an [architectural diagram](https://aws.amazon.com/architecture/icons/)

## Usage Instructions

Copy and paste into your Terraform configuration, insert or update the
variables, and run `terraform init`:

```
module my_web_hosting {
  source = "git@github.com:gammawave-geek/terraform-s3-static-web-hosting.git"
  AWS_DEFAULT_REGION    = "us-west-1"
  AWS_ACCESS_KEY_ID     = "A*********"
  AWS_SECRET_ACCESS_KEY = "**********"
  BUCKET_NAME = "my.globally.unique.bucket.name"
}
```

## Preconditions and Assumptions

This module is configured to work with [Terraform Cloud](https://app.terraform.io).  Prior to use, you must update providers.tf to specify your organization name, as well as a set of tags that have been applied to the appropriate workspaces within your organization.

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | -------- |
| AWS_DEFAULT_REGION | The [AWS region](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html) in which this bucket should be provisioned. | string | - | yes |
| AWS_ACCESS_KEY_ID | Access key for an IAM credential with the necessary permisisons to manage S3 bucket configuration | string | - | yes |
| AWS_SECRET_ACCESS_KEY | The secret associated with the access key | string | - | yes |
| BUCKET_NAME | The name of the S3 bucket to be provisioned.  It is recommended that this be stored as a workspace variable if Terraform Cloud is used | string | - | yes |

## Outputs
| Name | Description | Type |
| ---- | ----------- | ---- |
| ENDPOINT | The HTTPS endpoint where hosted content may be accessed | string |
| DOMAIN | The fully qualified domain name of this bucket.  Useful for establishing DNS CNAME entries | string |

## Versions

| Version | Major changes |
| ------- | ------------- |
| 1     | Created module |
