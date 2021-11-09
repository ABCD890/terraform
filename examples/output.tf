output "abc0" {
 value = "hello/nworld"
}
output "abcc" {
  value = "hello"
}

variable "abc" {
  default = "100"
}
output "abc" {
  value = "var.abc"
}
variable "abc1" {
  default = 100
}
output "abc1" {
  value = "var.abc1"
}
string data type
variable "samples1" {
  default = "hello world"
}
number data type
variable "sample2"{
  dafault = 100
}
boolean data type
variable "sample3" {
  dafault = true
}
