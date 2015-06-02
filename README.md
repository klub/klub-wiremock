# wiremock

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with wiremock](#setup)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
6. [Development - Guide for contributing to the module](#development)

## Overview

This module installs the specified version of Wiremock standalone jar web server.

## Module Description

This module installs the specified version of Wiremock web server. Also installs Java. For more on Wiremock visit http://wiremock.org/

## Setup
Using hiera simply include the wiremock class in your yaml template

    classes:

      -wiremock

or if using classes simply

    include wiremock


Configurable parameters:

    wiremock::version = 1.56

    wiremock::install_dir = '/opt/wiremock'

    wiremock::wiremock_owner: 'root'

    wiremock::wiremock_group: 'root'



## Usage

    java -jar /opt/wiremock/wiremock-standalone.jar

for more configuration options to pass as command line arguments see http://wiremock.org/running-standalone.html


## Development

To submit potential fixes or expand features please fork and make a pull request

