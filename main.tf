# Always apply changes to greeting message:
resource "terraform_data" "output_refresh" {
    triggers_replace = var.greeting
    input = var.greeting
}

locals {
    line = "================================================================="
    greeting_fmt = "\n${local.line}\n\n${var.greeting}\n\n${local.line}\n"
}