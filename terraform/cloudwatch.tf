resource "aws_cloudwatch_log_group" "app_logs" {
  name              = "/ec2/jenkins"
  retention_in_days = 14
}

resource "aws_cloudwatch_metric_alarm" "cpu_alarm" {

  alarm_name = "HighCPUUtilization"

  comparison_operator = "GreaterThanThreshold"

  evaluation_periods = 2

  metric_name = "CPUUtilization"

  namespace = "AWS/EC2"

  period = 300

  statistic = "Average"

  threshold = 80

  dimensions = {
    InstanceId = aws_instance.jenkins_server.id
  }

  alarm_description = "Alarm when CPU exceeds 80%"
}