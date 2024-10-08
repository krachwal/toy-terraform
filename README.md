# Toy Terraform Project

## AWS

This repository assumes that you will be using AWS as your cloud provider and that you have AWS CLI installed.

Check to see if you have AWS CLI installed: 

```
aws --version
```

If not, [install it](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html#getting-started-install-instructions) and [configure](https://docs.aws.amazon.com/cli/v1/userguide/cli-configure-files.html#cli-configure-files-methods) it.

If you would like to use a bespoke set of credentials for this, you can use environmental variables instead of an AWS profile: 

```
export AWS_ACCESS_KEY_ID=AKIAIOSFODNN7EXAMPLE
export AWS_SECRET_ACCESS_KEY=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
export AWS_DEFAULT_REGION=us-west-2
```

## Terraform

This project represents a very basic Terraform deployment including a single VPC, an EC2 instance web server, and some basic networking and security components. It follows the recommended [project structure](https://developer.hashicorp.com/terraform/language/modules/develop/structure). 

You must have the [Terraform CLI installed](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli) to execute the configs. It's just a package install, no special steps or config required.

## Execution

Assuming you have both Terraform and AWS configured, you should be able to run:

```
terraform init
```

which will get you set up with the AWS provider. After which point you can run:

```
terraform plan
```

to see what Terraform would do with the configs as they are. Run `plan` every time you make a change in the .tf files provided or if you add some of your own.

## Structure

There are four basic constructs in Terraform. 

Provider: an authority providing an infrastructure component, e.g. AWS.
Resource: an infrastructure component, e.g. an EC2 instance in AWS.
Variable: an input to a module, making the population of that value required to execute any config referencing it.
Output: a value that is populated by the provider, e.g. identifiers for any infrastructure component in AWS e.g. EC2 instances, internet gateways, subnets.
