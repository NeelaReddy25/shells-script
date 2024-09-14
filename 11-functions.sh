# #!/bin/bash

# USERID=$(id -u)


# VALIDATE(){
#     if [ $1 -ne 0 ]
#     then
#         echo "$2...FAILURE"
#         exit 1
#     else
#         echo "$2...SUCCESS"
#     fi
# }

# if [ $USERID -ne 0 ]
# then
#     echo "Please run this script with root access."
#     exit 1 # manually exit if error comes.
# else
#     echo "You are super user."
# fi

# dnf install mysql -y
# VALIDATE $? "Installing MySQL"

# dnf install git -y
# VALIDATE $? "Installing git"

# dnf install nginx -y
# VALIDATE $? "Installing nginx"

#!/bin/bash

# Capture the output of a command
free_space=$(df / | grep / | awk '{ print $4 }')

# Use the variable in an if statement
if [ $free_space -lt 1000000 ]; then
    echo "Low disk space!...FAILURE"
else
    echo "Sufficient disk space!...SUCCESS"
fi
