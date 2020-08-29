$bd = [Amazon.EC2.Model.BlockDeviceMapping]::new()
$bd.DeviceName = "/dev/sdh"
$bd.Ebs = [Amazon.EC2.Model.EbsBlockDevice]::new()
$bd.ebs.VolumeSize = 100
New-EC2Instance -ImageId "ami-0bbe28eb2173f6167" `
                -KeyName "ec2-keypair" `
                -InstanceType "t2.micro" `
                -Placement_AvailabilityZone "us-east-2c" `
                -BlockDeviceMappings $bd `
                -MinCount 1 `
                -MaxCount 2