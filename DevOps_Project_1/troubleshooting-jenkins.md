 Here is the Jenkins troubleshooting guide formatted as a Markdown file:

# Troubleshooting Jenkins on AWS EC2:

This guide offers solutions for common issues when installing Jenkins on an EC2 instance.

## Prerequisites

Before installing Jenkins:

- Install latest AWS CLI
- Create IAM user with EC2/VPC access  
- Generate SSH key pair
- Configure VPC security groups (ports 8080, 22)

## Common Issue #1: Outdated Installation Instructions

```
No package jenkins available
```

### Solution

Use updated DNF commands and Amazon Corretto:

```bash  
sudo dnf update -y
sudo dnf install java-11-amazon-corretto  
sudo dnf install java-11-amazon-corretto-devel
sudo dnf install jenkins
```

Verify with `java -version`.

## Common Issue #2: Plugin Installation Failures 

Plugins failing to install due to connectivity issues.  

### Solution

- Check EC2 connectivity and troubleshoot VPC 
- Disable IPv6 on Eth0 interface
- Retry plugin installation  

## Common Issue #3: Permission Errors  

```
Error starting Jenkins: Permission denied 
```

### Solution

Update Jenkins file permissions:

```bash
sudo chown -R jenkins:jenkins /var/lib/jenkins  
sudo chown -R jenkins:jenkins /var/cache/jenkins
sudo chmod -R 775 /var/lib/jenkins
```

