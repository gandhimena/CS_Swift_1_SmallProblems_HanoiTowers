//
//  ViewController.swift
//  HanoiTowers
//
//  Created by spychatter mx on 1/25/18.
//  Copyright © 2018 trenx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		
		
		var numDisc = 3
		var towerA = Stack<Int>()
		var towerB = Stack<Int>()
		var towerC = Stack<Int>()
		
		for i in 1...numDisc{
			towerA.push(i)
		}
		
		hanoi(from: towerA, to: towerC, temp: towerB, n: numDisc)
		print(towerA)
		print(towerB)
		print(towerC)
	}
	
	func hanoi(from: Stack<Int>, to: Stack<Int>, temp:Stack<Int>, n: Int){
		if n == 1{
			to.push(from.pop()) // move 1 disk
		}else{
			hanoi(from: from, to: temp, temp: to, n: n - 1)
			hanoi(from: from, to: to, temp: temp, n: 1)
			hanoi(from: temp, to: to, temp: from, n: n - 1)
		}
	}
	

}

