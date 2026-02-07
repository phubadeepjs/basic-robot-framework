***Settings***

# Fixture
Resource   ${CURDIR}/../fixtures/fixtureImport.robot

# Environment
Variables   ${CURDIR}/env/${env}.yaml

# Library
Library   SeleniumLibrary  timeout=${config.global_timeout}  implicit_wait=${config.global_implicit_wait}
Library   String
Library   Collections
Library   DateTime
Library   Process
Library   RequestsLibrary
Library   OperatingSystem
Library   JSONLibrary

# Support
Resource   ${CURDIR}/../supports/supportImport.robot
