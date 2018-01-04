//
//  UserDefaultsHelper.swift
//  wanted
//
//  Created by Ross on 2017. 6. 20..
//  Copyright © 2017년 WantedLab. All rights reserved.
//

import Foundation

public class WTUserDefaultsHelper : WTUserDefaultsProtocol {
    var userDefaults: UserDefaults
    
    required public init() {
        self.userDefaults = UserDefaults()
    }
    
    required public init(suiteName: String) {
        if let defaults = UserDefaults(suiteName: suiteName) {
            self.userDefaults = defaults
        }
        else {
            self.userDefaults = UserDefaults.standard
        }
    }
    
    public func getBool(forKey:String) -> Bool {
        return userDefaults.bool(forKey:forKey)
    }
    
    public func getInteger(forKey:String) -> Int {
        return userDefaults.integer(forKey:forKey)
    }
    
    public func getObject(forKey:String) -> Any? {
        return userDefaults.object(forKey:forKey)
    }
    
    public func getArray(forKey:String) -> [Any]? {
        return userDefaults.array(forKey: forKey)
    }
    
    public func set(_ value:Any, forKey:String) {
        userDefaults.set(value, forKey:forKey)
    }
    
    public func synchronize() {
        userDefaults.synchronize()
    }
}
