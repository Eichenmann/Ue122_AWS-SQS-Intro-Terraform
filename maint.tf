# Configure the AWS Provider
provider "aws" {
  region = "eu-central-1"
  access_key ="ASIASN2YXBP7QIWOKWNY"
  secret_key = "d6aAdXKEN71SqwxNcW+k3/d6Apfh3isnjwVZv/lB"
  token = "IQoJb3JpZ2luX2VjEBwaDGV1LWNlbnRyYWwtMSJGMEQCIDM5+u0/wRdUR2c+D2V9iNVc2Yn3GUpeyOnJ1ITYDJ+gAiAlCtMJ5TY7ysMpuwKD3B9AVppyr8ZYy53hvlMPPCvmbyqkAwhFEAAaDDE2NzE1MjkxMzQwNyIMCGRFlk3D0YGc2CCsKoEDnEMHte42xiywIXVRxWcSlotRqQ5KZYiNAIloX4evUJsIgzRopxxla6O8UjgVLdnsfzUi9n0p/4oHQpA1YCO3ImrEWzjAM2f/xEezONYGa5Qa7a0NpyjAaZ+/WEp7SaUqbZ/JGtA3jbU6YUfyoCHuv2uQzp4nZB6LzZljqS5FjuxiTn7R541kDvp4ffNy4jDJmGOHUUGKzEXp04w1oDfA+VdiY+36XoLUxEx0vVa1HUAeEv2fkN5ZnmH1A/5un7ihIe6UAvQR6lvGGX6BLMYR+tEwbq2e61R6KuvTS2CunGxGXix/k08UiAoqvtfE9Z7QHOzv/At6KZs288OLGLCHh3KqRvhNqGkOxnEhMgKfUFprBbbpV6aMLBmSJydsoUUcargVXBT6vqHcEFcXqugoA6ROHk4p3TM+Jd01UIxc+nqQkLCYdKOUsp6HPTUBJHh6ivo+PPXlaD5fuQ3aXiMgooE4S17jfb3EIBFajElZbC4hBbaxwMsoPW3LplNmzJF+rDCS5d6pBjqnAXGFT3lp61OR/Bb+SSm3IaQU7ss56+KsVtMYt2VDCMYeJ8jsc65FyLbvLSQC/A3+RGeItsZ/McGy/ZY1jDhsDZr+U8BPpIRqWhHy+9+sMplwD3vRjdZyYTopqhpwEnDua1bb9JYnKdrXfENjidwcTvDGj0qTXEPM3wmLb+Td4tXOVK/fBu69q/zEGljRO8OotqZOFIhFT4cVtaBTZhQJfLLnHY7KPtZV"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}