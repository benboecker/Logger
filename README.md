# Logger

A simple and very basic logging mechanism written in Swift.

## How to install

Copy the file named `Logger.swift` into your project.

## Usage

Logger is intentionally kept very simple and basic. It currently provides only one overloaded global function called `log()`. You can use it as is or pass any struct, class or enum (in fact, anything that is `Any`).

```swift

log()
/// 

log("This is a logged message")
///

let cat = Cat(name: "Tom")
log(cat)
/// 

```
