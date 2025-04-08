@programModule
Feature: Perform program module
  @getAllPrograms
  Scenario Outline: Get all the available programs
    Given User sends a request with "<Sheetname>" and <rownumber>
    When User sends HTTPS Request to get programs with "<Sheetname>" and <rownumber>
    Then User receives response with "<Sheetname>" and <rownumber>
    Examples:
      | Sheetname      | rownumber |
      | getAllPrograms |         0 |
      | getAllPrograms |         1 |
      | getAllPrograms |         2 |
      | getAllPrograms |         3 |
  @getAllProgramsWithUsers
  Scenario Outline: Get all the available programs with users
    Given User sends a request with "<Sheetname>" and <rownumber>
    When User sends HTTPS Request to get programs with "<Sheetname>" and <rownumber>
    Then User receives response with "<Sheetname>" and <rownumber>
    Examples:
      | Sheetname      | rownumber |
      | getAllPrograms |         0 |
      | getAllPrograms |         1 |
      | getAllPrograms |         2 |
      | getAllPrograms |         3 |
  @getProgramById
  Scenario Outline: Get program by using ProgramId
    Given User sends a request with "<Sheetname>" and <rownumber>
    When User sends GET Request to get program info with "<Sheetname>" and <rownumber>
    Then User receives response with "<Sheetname>" and <rownumber>
    Examples:
      | Sheetname      | rownumber |
      | getProgramById |         0 |
      | getProgramById |         1 |
      | getProgramById |         2 |
      | getProgramById |         3 |
      | getProgramById |         4 |
  @postProgram
  Scenario Outline: Check if user able to create  Programs
    Given User creates POST Request "<Sheetname>" and <rownumber> for the LMS API program endpoint with mandatory field.
    When User sends HTTPS Request and  request Body with mandatory , additional  fields
    Then User receives 201 Created Status with response body.
    Examples:
      | Sheetname   | rownumber |
      | postProgram |         0 |
      | postProgram |         1 |
      | postProgram |         2 |
      | postProgram |         3 |
      | postProgram |         4 |
      | postProgram |         5 |
      | postProgram |         6 |
      | postProgram |         7 |

@putProgrambyID
  Scenario Outline: Check if user able to update Programs
    Given User creates PUT Request "<Sheetname>" and <rownumber> for the LMS API program endpoint with mandatory field.
    When User sends HTTPS Request and  request Body with mandatory , additional  fields
    Then User receives 200 Created Status with response body.
    Examples:
      | Sheetname   | rownumber |
      | putProgram |         0 |
      | putProgram |         1 |
      | putProgram |         2 |
      | putProgram |         3 |
      | putProgram |         4 |
      | putProgram |         5 |
      | putProgram |         6 |
      | putProgram |         7 |

@putProgrambyName
  Scenario Outline: Check if user able to update Programs
    Given User creates PUT Request "<Sheetname>" and <rownumber> for the LMS API program endpoint with mandatory field.
    When User sends HTTPS Request and  request Body with mandatory , additional  fields
    Then User receives 200 Created Status with response body.
    Examples:
      | Sheetname   | rownumber |
      | putProgram |         0 |
      | putProgram |         1 |
      | putProgram |         2 |
      | putProgram |         3 |
      | putProgram |         4 |
      | putProgram |         5 |
      | putProgram |         6 |
      | putProgram |         7 |

@deleteProgramID
  Scenario Outline: Check if user able to delete Programs
    Given User creates DELETE Request by ID "<Sheetname>" and <rownumber> 
    WhenAdmin sends HTTPS Request with endpoint
    Then User receives 200 Created Status with response body.
    Examples:
      | Sheetname   | rownumber |
      | deleteProgram |         0 |
      | deleteProgram |         1 |
      | deleteProgram |         2 |
      

@deleteProgramName
  Scenario Outline: Check if user able to delete Programs
    Given User creates DELETE Request by Name "<Sheetname>" and <rownumber> 
    When Admin sends HTTPS Request with endpoint
    Then User receives 200 Created Status with response body.
    Examples:
      | heetname   | rownumber |
      | deleteProgram |         0 |
      | deleteProgram |         1 |
      | deleteProgram |         2 |
    


















