variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
  default     = "project-bedrock-cluster"
}

variable "vpc_name" {
  description = "VPC name"
  type        = string
  default     = "project-bedrock-vpc"
}

variable "namespace" {
  description = "Kubernetes namespace"
  type        = string
  default     = "retail-app"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "production"
}

variable "student_id" {
  description = "Student ID for unique resource naming"
  type        = string
  default     = "alt-soe-025-0161"
}
