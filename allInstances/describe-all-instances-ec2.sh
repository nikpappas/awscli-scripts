PROFILE=<YOUR_PROFILE>
describeInstances () {
	aws ec2 describe-instances --profile $2 --region $1 
}

REGIONS=($(aws ec2 describe-regions --output text | awk 'BEGIN {FS="\t"}; {print $3}'))
for REGION in "${REGIONS[@]}"
do
   :
  echo $REGION
  describeInstances $REGION $PROFILE
done
