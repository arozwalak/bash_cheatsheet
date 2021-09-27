#!/usr/bin/env bash

: '
Multiline
comments
here
'

# heredoc
cat << EOF
    textc
    this
    is multi
    line
EOF

# conditional statements
: '
-eq equal
-ne not equal
-gt greater than
-lt less than
-ge greater or equal
-le less or equal
-a and
-o or
'

count=20
# OR
# if [[ $count -gt 9 || $count -lt 20 ]]
# if [[ $count -gt 9 -o $count -lt 20 ]]
# if [ $count -gt 9 ] || [ $count -lt 20 ]
# AND
# if [[ $count -gt 9 && $count -lt 20 ]]
# if [[ $count -gt 9 -a $count -lt 20 ]]
if [ $count -gt 9 ] && [ $count -lt 20 ] # or (( $count > 9 ))
then
  echo "condition is true"
elif [ $count -ge 20 ]
then
  echo "something else"
else
  echo "condition is false"
fi

# case statement
: '
case EXPRESSION in

  PATTERN_1)
    STATEMENT
    ;;

  PATTERN_2)
    STATEMENT
    ;;

  PATTERN_3)
    STATEMENT
    ;;

  PATTERN_4)
    STATEMENT
    ;;

  *)
    STATEMENT
    ;;
esac
'

# PARAMETERS
for j in "${args[@]}"
do
    case $j in
        --ip=*)
        INTERNALIP="${j#*=}"
        shift
        ;;
    esac

    case $j in
        --host-ip=*)
        HOSTIP="${j#*=}"
        shift
        ;;
    esac

    # set mock path
    case $j in
        --path=*)
        MOCK_PATH="${j#*=}"
        shift
        ;;
    esac

    case $j in
        --aws-services=*)
        AWS_SERVICES="${j#*=}"
        shift
        ;;
    esac

    case $j in
        --custom-image=*)
        CUSTOM_IMAGE=1
        CUSTOM_URL="${j#*=}"
        shift
        ;;
    esac

    case $j in
        --tag=*)
        TAG="${j#*=}"
        shift
        ;;
    esac
done



# LOOPS

# while loop
echo "while loop"
number=1
while [ $number -le 10 ]
do
  echo "$number"
  number=$(( number+1 ))
done

# until loop
echo "until loop"
number=1
# will run until EXPRESSION is false
until [ $number -ge 10 ]
do
  echo "$number"
  number=$(( number+1 ))
done

# for loop
echo "for loop"
#for i in {1..20}
for i in 1 2 3 4 5
do
  echo $i
done

for i in {0..20..3} # increment doesn't work
do
  echo $i
done

for (( i=0; i<10; i++ ))
do
  if [ $i -eq 3 ]
  then
    continue
  fi
  if [ $i -gt 5 ]
  then
    break
  fi
  echo $i
done
