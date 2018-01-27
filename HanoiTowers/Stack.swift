//
//  Stack.swift
//  HanoiTowers
//
//  Created by spychatter mx on 1/25/18.
//  Copyright © 2018 trenx. All rights reserved.
//

import UIKit


class Stack<T>{
	var container = [T]()
	func push(_ thing: T){container.append(thing)}
	func pop() -> T{return container.removeLast()}
	var description: String {
		return container.description
	}
	
}
