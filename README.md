# Logger

A simple and very basic logging mechanism written in Swift.

## How to install

Copy the file named `Logger.swift` into your project.

## Usage

Logger is intentionally kept very simple and basic. It currently provides only one overloaded global function called `log()`. You can use it as is or pass any struct, class or enum (in fact, anything that is `Any`). The only constraint is, that the logging will only happen in `DEBUG` mode for performance reasons. This may change with further updates as a configuration option.

The `log()` function will print the time, followed by the file name and line number and finally the name of the function it was called in. If you pass a message or object (or struct / enum) it will get printed on the next line, resorting to the `CustomStringConvertible` description if available.

```swift

log()
/// 08:15 - ViewController.swift:20 - viewDidLoad()

log("This is a logged message")
/// 08:15 - ViewController.swift:21 - viewDidLoad()
/// >>>>    This is a logged message

let cat = Cat(name: "Tom")
log(cat)
/// 08:15 - ViewController.swift:24 - viewDidLoad()
/// >>>>    Cat(name: "Tom")

```

Furthermore, this information gets persisted in a text file in the application's documents directory. One `.txt` file is created per day so not to create unneccessary large log files.

## Contact

If you have any questions or suggestions, feel free to [open an issue][1], file a pull request or shoot me an [email][2].

You can also follow and contact me on [Twitter][3].

## License

Logger is available under the [MIT License][4].



[1]:	https://github.com/bennibrightside/Logger/issues/new "open an issue"
[2]:	mailto:apps@ben-boecker.de "email"
[3]:	https://twitter.com/BenBoecker "Twitter"
[4]:	https://github.com/bennibrightside/Logger/blob/master/LICENSE "MIT License"