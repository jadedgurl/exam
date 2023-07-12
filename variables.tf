
variable "project" {
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
variable "backend" {
  type = list(string)
}
variable "region" {
type = list(string) 
default=["northamerica-northeast1","us-central1"]
}
