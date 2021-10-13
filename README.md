# Spring Cloud SSM Parameters

Easily create AWS Parameter Store parameters conforming to the format in
[Spring Cloud AWS](https://cloud.spring.io/spring-cloud-static/spring-cloud-aws/2.1.0.RELEASE/single/spring-cloud-aws.html#_integrating_your_spring_cloud_application_with_the_aws_parameter_store).


# Examples

Creating an application and runtime environment specific parameter

```
module "enable_foo" {
  source = "github.com/Widewail/terraform-spring-cloud-ssm-param"
  app = "my-service"
  env = "production"
  key = "foo.enabled"
  value = "true"
}
```

Creating a global parameter

```
module "enable_foo" {
  source = "github.com/Widewail/terraform-spring-cloud-ssm-param"
  key = "company.name"
  value = "Megacorp"
}
```

Creating a application specific global parameter

```
module "enable_foo" {
  source = "github.com/Widewail/terraform-spring-cloud-ssm-param"
  app = "my-service"
  key = "app.name"
  value = "my-service"
}
```
