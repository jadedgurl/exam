
variable "project_id" {
  type = string
  default = "mcit2022"
}
variable "name"{
  type = string
  default = "function_neg"
}
variable "function_name" {
  type = string
  default = "function"
}
variable "region" {
type = list(string) 
default=["northamerica-northeast1","us-central1"]
}
