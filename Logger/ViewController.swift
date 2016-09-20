//
//  ViewController.swift
//  Logger
//
//  Created by Benni on 20.09.16.
//  Copyright © 2016 Ben Boecker. All rights reserved.
//

import UIKit

struct Cat {
	let name: String
}

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()

		log()
		log("This is a logged message")

		let cat = Cat(name: "Tom")
		log(cat)

	}

}

