# iOS CI Testing

# Introduction

This project is to test continuous integration (CI) in Ios based on several service providers. This project has following purposes to achieve:

 - Self testing (unit test, functional test via simulator)
 - Notification (Slack notification for the test result in particular channel)
 - Deploy base on branches (development branch to Fabric, master branch to itunes connect)
 
Currently we focus on cloud solution providers, and following are the achievable services:

 - Travis CI (with supported slack plugin and use Faselane to deploy)
 - CircleCI (with supported slack plugin and use Faselane to deploy)
 
 
# Service Flow

Generally speaking, these services are all followed the procedures below:

 - Set up virtual machine base environment (Ruby with Android studion installed)
 - Download/update the required SDK platforms, SDK tools, etc.
 - Set up the simulator and wait until its running
 - Running tests based on our code
 - Generate the signed build and deploy to the designated service (development branch to Fabric, master branch to itunes connect)
 - Nodify users based on the setting (email, slack, etc..)
 
User needs to create/ modify the .yml file and put it into the repository's root folder. As soon as the service detects the corresponding .yml file everytime when committed, it automatically activates the CI service to deal with it. Detailed settings in specific service as below.


# Travis CI Setting

Travis CI detects ".travis.yml" file to activate the service. Please check .travis.yml from this repository.

# Circle CI Setting

Circle CI detects "circle.yml" file to activate the service. Please check circle.yml from this repository.

# Faselane Setting
 
Reference: https://www.raywenderlich.com/136168/fastlane-tutorial-getting-started-2
