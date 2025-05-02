# Module to print greeting message when applying Terraform

To use:
```
module "greeting" {
  source = ""
  greeting = "Your greeting message"
}

output "Message_from_Terraform" {
  value = module.greeting.greeting_message
}
```

