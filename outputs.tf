output "ecs_security_group_id" {
  description = "Security Group ID assigned to the ECS tasks."
  value       = join("", aws_security_group.ecs_sg.*.id)
}

output "task_execution_role_arn" {
  description = "The ARN of the task execution role that the Amazon ECS container agent and the Docker daemon can assume."
  value       = aws_ecs_task_definition.main.execution_role_arn
}

output "task_role_arn" {
  description = "The ARN of the IAM role assumed by Amazon ECS container tasks."
  value       = aws_ecs_task_definition.main.task_role_arn
}

output "task_definition_arn" {
  description = "Full ARN of the Task Definition (including both family and revision)."
  value       = aws_ecs_task_definition.main.arn
}

output "task_definition_family" {
  description = "The family of the Task Definition."
  value       = aws_ecs_task_definition.main.family
}

output "awslogs_group" {
  description = "Name of the CloudWatch Logs log group containers should use."
  value       = local.awslogs_group
}

output "awslogs_group_arn" {
  description = "ARN of the CloudWatch Logs log group containers should use."
  value       = aws_cloudwatch_log_group.main.arn
}

output "ecs_service_id" {
  description = "ARN of the ECS service."
  value       = aws_ecs_service.main.id
}
