//
//  Logger.swift
//  Logger
//
//  Created by Ben on 20.09.16.
//  Copyright © 2016 Ben Boecker. All rights reserved.
//

import Foundation
import UIKit

func log(_ any: Any, file: String = #file, line: Int = #line, function: String = #function) {
	log("\(any)", file: file, line: line, function: function)
}

func log(_ message: String = "", file: String = #file, line: Int = #line, function: String = #function) {
	#if !DEBUG
		return
	#endif

	Logger.shared.log(message: message, file: file, line: line, function: function)
}

fileprivate class Logger {
	static let shared = Logger()

	private var filePath: String? {
		guard let documentDirectory = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first else {
			return nil
		}

		let dateFormatter = DateFormatter()
		dateFormatter.dateFormat = "yyyy-MM-dd"

		return documentDirectory.appending("/\(dateFormatter.string(from: Date()))-logging.txt")
	}

	private init() {}

	func log(message: String, file: String, line: Int, function: String) {
		guard let filePath = self.filePath else {
			return
		}

		let logString = self.generate(logString: message, file: file, line: line, function: function)
		let fileContents = (try? NSString(contentsOfFile: filePath, encoding: String.Encoding.unicode.rawValue)) ?? ""
		let newContents = "\(fileContents)\n\(logString)"

		print(logString)
		try? newContents.write(toFile: filePath, atomically: true, encoding: .unicode)
	}

	private func generate(logString message: String, file: String, line: Int, function: String) -> String {
		let dateFormatter = DateFormatter()
		dateFormatter.dateFormat = "HH:mm"
		var logString = dateFormatter.string(from: Date()) + " - "

		if let escapedFile = file.addingPercentEncoding(withAllowedCharacters: NSCharacterSet.urlQueryAllowed),
			let url = NSURL(string: escapedFile),
			let lastPathComponent = url.lastPathComponent {
			logString += "\(lastPathComponent)"
		} else {
			logString += "\(file)"
		}

		logString += ":\(line) - \(function)"

		if message != "" {
			logString += "\n>>>>    \(message)"
		}

		logString += "\n"

		return logString
	}
}




