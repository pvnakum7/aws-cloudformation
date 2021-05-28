# cloudformation-stack example
## This stack will create VPC Components, ALB in Public ASG in Private Subnets and Bastion host to access Private resources, RDS, Security Groups etc...

---

### Note: This script is tested with regions ```us-east-1``` and ```us-west-2```

---
## How to RUN (AWS CLI With Administrator Access Required)

0. Configure AWS CLI.

```aws configure```

```
~ aws configure
AWS Access Key ID [********************]: 
AWS Secret Access Key [********************]: 
Default region name [us-east-1]: us-west-2
Default output format [json]:
```

1. Populate variables in cf-stack-parameter.json


2. Create CF Stack

```bash deploy.sh create```

3. Update CF Stack

```bash deploy.sh update```

4. Delete CF Stack

```bash deploy.sh delete```

---
### TO DO

- [x] ALB Creation
- [x] ASG Creation
- [x] Custom AMI
- [ ] Nested stacks

https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html