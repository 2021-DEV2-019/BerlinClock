# BerlinClock


 Project made using a custom MVVM pattern through delegate.
 The deployement target of the project is iOS 14.4 and the project use `cocopoads` (see https://guides.cocoapods.org) as dependency manager in order to use the custom `SwiftLint` script.

# Run the project

 - after cloning the repository move to the project's folder and run the `pod install` command in the terminal (see https://guides.cocoapods.org) in order to install the dependenccy
 - select the Target `Berlin clock` and use any simulator. (iPhone 8 is prefered).
 
 # Misc
- The project use a custom `Logger` class, if you need to print anything use `Logger.log(...)` instead of print because the SwiftLint script doesn't allow the usage of `print(...)`

# Source
- The test case are based on http://agilekatas.co.uk/katas/BerlinClock-Kata
