//
//  UserDefaultsProtocol.swift
//  wanted
//
//  Created by Ross on 2017. 6. 20..
//  Copyright © 2017년 WantedLab. All rights reserved.
//

import Foundation

public protocol WTUserDefaultsProtocol {
    init()
    init(suiteName: String)
    func getBool(forKey: String) -> Bool
    func getInteger(forKey: String) -> Int
    func getObject(forKey: String) -> Any?
    func getArray(forKey: String) -> [Any]?
    func set(_ value:Any, forKey: String)
}
