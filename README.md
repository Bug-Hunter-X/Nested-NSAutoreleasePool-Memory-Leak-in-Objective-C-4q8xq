# Nested NSAutoreleasePool Memory Leak in Objective-C

This repository demonstrates a subtle memory management bug in Objective-C related to improperly nested `NSAutoreleasePool` objects within a long-running task. The bug leads to a memory leak and potential crashes, particularly in multi-threaded scenarios.  The solution showcases how to properly manage these pools to prevent this issue.

## Bug Description
The `NestedAutoreleasePoolBug.m` file contains code that creates a deeply nested `NSAutoreleasePool` inside a loop.  The inner pool isn't explicitly drained, causing objects to accumulate in memory without proper release. This leads to memory exhaustion over time.

## Solution
The `NestedAutoreleasePoolSolution.m` file provides a corrected version where the inner `NSAutoreleasePool` is explicitly drained at the end of its scope, ensuring that all autoreleased objects are properly released and preventing the memory leak.