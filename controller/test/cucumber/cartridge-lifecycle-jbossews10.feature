@cartridge_extended3
@cartridge_extended
@jboss
@jbossews1

Feature: Cartridge Lifecycle JBossEWS1.0 Verification Tests
  Scenario: Application Creation
    Given the libra client tools
    When 1 jbossews-1.0 applications are created
    Then the applications should be accessible

  Scenario: Application Modification
    Given an existing jbossews-1.0 application
    And JAVA_OPTS_EXT is available
    When the application is changed
    Then it should be updated successfully
    And the application should be accessible
    And the jvm is using JAVA_OPTS_EXT

  Scenario: Application Restarting
    Given an existing jbossews-1.0 application
    When the application is restarted
    Then the application should be accessible

  Scenario: Application Destroying
    Given an existing jbossews-1.0 application
    When the application is destroyed
    Then the application should not be accessible
