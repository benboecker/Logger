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

## Contact

If you have any questions or suggestions, feel free to [open an issue][1], file a pull request or shoot me an [email][2].

You can also follow and contact me on [Twitter][3].

## License

Logger is available under the [MIT License][4].



[1]:	https://github.com/bennibrightside/Logger/issues/new "open an issue"
[2]:	mailto:apps@ben-boecker.de "email"
[3]:	https://twitter.com/BenBoecker "Twitter"
[4]:	https://github.com/bennibrightside/Logger/blob/master/LICENSE "MIT License"