aws ec2 run-instances \
--image-id ami-0bbe28eb2173f6167 \
--key-name ec2-keypair \
--instance-type t2.micro \
--placement AvailabilityZone=us-east-2c \
--block-device-mappings DeviceName=/dev/sdh,Ebs={VolumeSize=100} \
--count 1

# CLI Getting Started
# https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html

# CLI reference docs
# https://docs.aws.amazon.com/cli/latest/index.html