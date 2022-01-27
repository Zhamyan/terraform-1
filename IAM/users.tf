provider "aws" {
    region = "us-east-1" 
}

resource "aws_iam_user" "bab" {
    name = "bab"
}

resource "aws_iam_user" "zam" {
    name = "zam"
}

resource "aws_iam_group" "developers" {
  name = "developers"
}

resource "aws_iam_group" "marketing" {
  name = "marketing"
}

resource "aws_iam_group_membership" "team" {
    name = "developers-membership"
    users = [
        aws_iam_user.bab.name,
    ]

    group = aws_iam_group.developers.name
}

resource "aws_iam_group_membership" "examle" {
    name = "marketing-membership"
    users = [
        aws_iam_user.zam.name,
    ]

    group = aws_iam_group.marketing.name
}

