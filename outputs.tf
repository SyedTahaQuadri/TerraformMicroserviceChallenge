output "application_url" {
  value = "http://${aws_lb.app_alb.dns_name}"
}