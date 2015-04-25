//
//  AppDelegate.m
//  NumberProblems-Objc
//
//  Created by Joshua Howland on 8/14/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

/*Step 1: Create an iteration method
 
 - Add a method called iterateCount that takes an integer
 - The method should call itself and decrement the integer until the value is 0
     - Print the integer with the text "Iterate [integer]" where the integer gets printed
     - It should decrement the integer using operator shorthand.
 - In the didFinishLaunching method, call iterateCount and pass in 4
 
 Step 2: Create a calculation method (multiply)
 
 - Add a method called multiplied that takes an integer and returns an integer
 - At the top of the class declare a global static integer called multiple and set it equal to 8
 - In the multiplied method, return the integer multiplied by the global variable multiple
      - You can write it out fully, or you can use the operator shorthand
 - In the iterateCount method call multiplied and store the return value in a new variable
 - In the iterateCount method add a line that prints the result to the console with the message "Multiplied [integer] by [muliplie] to be [multiplied]" where the value returned by multiplied get printed inline
 Note: Multiplication is easy with integers. Programmers need to know what happens when you perform integer division.
 
 Step 3: Create another calculation method (divide)
 
 - Add a method called divided that takes an integer and returns and integer
 - At the top of the class declare a global static integer called divisor and set it equal to 6
 - In the divided method, return the integer divided by the global variable divisor
       - You can write it out fully, or you can use the operator shorthand
 - In the iterateCount method add a line that calls divided and passes in the value returned by multiplied and prints the result to the console with the message "Divided [multiplied] by [divisor] to be [divided]" where the value returned by divided gets printed inline
 Note: Play with the values. Can you predict what the outcome will be when you divide 16 by 6?
 
 Step 4: Get floating-point answers
 
 The goal is to get "Divided [integer] to be [divided]" such that divided is a floating point value rather than a rounded integer. For example, 16 / 6 = 2.6666667. When iterateCount prints divided it should be a floating point value. The others should not.
     Go back through the multiplied and divided methods and update them so that the iterateCount method can print a floating point answer.
     Completion
 
 You should have a printed series of results that show floating point values for the divided answer as you would expect from a calculator.
 Feel free to play with the divisor and multiple and see what gets printed.
 You should be very comfortable knowing the result of integer division and how to get float results.*/

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
 
// call the self of interateCount and pass a 4 through it
    
    [self iterateCount:4];

    return YES;
    
}

// at the top of class put multiple and divisor
    static int multiple = 8;
    static int divisor = 6;

- (void) iterateCount:(int)number;
{
    int multResult = [self multiplied:number];
    float divResult = [self divided:number];

    if(number == 0){
        NSLog(@"Iterate %d\n", number);
    }else{
        NSLog(@"Iterate %d\n", number);
        NSLog(@"Multiplied %d by %d to be %d\n", number, multiple, multResult);
        NSLog(@"Divided %d by %d to be %f\n", multResult, divisor, divResult);
        --number;
        [self iterateCount:number];
    }
}

- (int)multiplied:(int)firstNumber;
{
    int result = firstNumber *= multiple;
    return result;
}

- (float)divided: (int)secondNumber;
{
    return (float)secondNumber / (float)divisor;
}

@end;


