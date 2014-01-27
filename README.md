# SEGModules

[![Version](https://cocoapod-badges.herokuapp.com/v/SEGModules/badge.png)](http://cocoadocs.org/docsets/SEGModules)
[![Platform](https://cocoapod-badges.herokuapp.com/p/SEGModules/badge.png)](http://cocoadocs.org/docsets/SEGModules)

## Usage

To create a module, declare a protocol with all of the methods of the module. Then, subclass `SEGModule` with the same name as your module's protocol, declare your subclass as adopting the protocol, and implement all the methods in the protocol. (Note: you cannot access ivars in any way, so if you need any properties, you should store them as associated objects on `self`.) For each class you wish to include the module, just declare that class as conforming to the module's protocol (you can even do this on the declaration of a category or class extension). The rest of the work will be done automatically upon the initialization of the runtime.

> A class should be used for functionality that will require instantiation or that needs to keep track of state. A module can be used either as a way to mix functionality into multiple classes, or as a way to provide one-off features that don't need to be instantiated or to keep track of state.	
 [Jimmy Cuadra (on SO)](http://stackoverflow.com/a/2671706/1675979)

To run the example project; clone the repo, and run `pod install` from the Project directory first.

## Requirements

## Installation

SEGModules is available through [CocoaPods](http://cocoapods.org), to install
it simply add the following line to your Podfile:

    pod "SEGModules"

## Author

Samuel E. Giddins, segiddins@segiddins.me

## License

SEGModules is available under the MIT license. See the LICENSE file for more info.

