# Create Jenkins Pipeline Shared Library project structure
# root)
# +- src                     # Groovy source files
# |   +- org
# |       +- foo
# |           +- Bar.groovy  # for org.foo.Bar class
# +- vars
# |   +- foo.groovy          # for global 'foo' variable
# |   +- foo.txt             # help for 'foo' variable
# +- resources               # resource files (external libraries only)
# |   +- org
# |       +- foo
# |           +- bar.json    # static helper data for org.foo.Bar
set -e

PROJECT_NAME=$1
MODULE_NAME=$2

if [ -z "$PROJECT_NAME" ]; then echo PROJECT_NAME is not set;exit 1; fi
if [ -z "$MODULE_NAME" ]; then echo MODULE_NAME is not set;exit 1; fi

mkdir -p $PROJECT_NAME/src/org/$PROJECT_NAME/
touch $PROJECT_NAME/src/org/$PROJECT_NAME/$MODULE_NAME.groovy

mkdir -p $PROJECT_NAME/vars
touch $PROJECT_NAME/vars/$PROJECT_NAME.groovy
touch $PROJECT_NAME/vars/$PROJECT_NAME.txt

mkdir -p $PROJECT_NAME/resources/org/$PROJECT_NAME
touch $PROJECT_NAME/resources/org/$MODULE_NAME.json