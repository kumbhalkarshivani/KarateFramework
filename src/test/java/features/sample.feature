Feature: print hello world

Scenario: Hello world scenario
    * print 'Hello Wrld!!'

Scenario: Declarer and print variables
    * def balance = 200
    * def fee = 20
    * def tax = 10
    * print 'total amount: ' + (balance + fee + tax)