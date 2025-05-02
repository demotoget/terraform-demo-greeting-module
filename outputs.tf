output "greeting_message" {
value = local.greeting_fmt
}

# Force apply when greeting message is changed:
output "refresh" {
  value = terraform_data.output_refresh.output
}