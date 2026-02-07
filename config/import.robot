***Settings***

# Library
Library   SeleniumLibrary
Library   String
Library   Collections
Library   DateTime
Library   Process
Library   RequestsLibrary
Library   OperatingSystem
Library   JSONLibrary

# Fixture
Resource   ${CURDIR}/../fixtures/fixtureImport.robot

# Environment
Variables   ${CURDIR}/env/${env}.yaml
