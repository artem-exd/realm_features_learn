//
//  RealmConfig.swift
//  Exams
//
//  Created by Artem Sherbachuk (UKRAINE) on 9/21/16.
//  Copyright © 2016 Realm Inc. All rights reserved.
//

import Foundation
import RealmSwift

enum RealmConfig {
    private static let mainConfig = Realm.Configuration(fileURL: URL.inDocumentsFolder("main.realm"),
                                                     schemaVersion: 1)
    private static let copyInitialData: Void = {
        let from = Bundle.main.url(forResource: "default_v1.0", withExtension: "realm")!
        let to = RealmConfig.mainConfig.fileURL!
        Exams.copyInitialData(from, to: to)
        print("Copy Initial Data for Realm Executed")
    }()//dispatch once swift 3
    
    case Main
    
    var configuration: Realm.Configuration {
        switch self {
        case .Main:
            RealmConfig.copyInitialData
            return RealmConfig.mainConfig
        }
    }
}
