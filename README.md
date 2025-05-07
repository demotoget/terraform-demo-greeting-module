# THIS IS THE MALICIOUS BRANCH

# Module to print greeting message when applying Terraform


To use:
```
module "greeting-module" {
  source  = "demotoget/greeting-module/demo"
  version = "0.1.1"
  greeting = "Your greeting message"
}

output "Message_from_Terraform" {
  value = module.greeting.greeting_message
}
```

