//
//  FeedDataSource.swift
//  YouGov
//
//  Created by Przemyslaw Probola on 1/14/16.
//  Copyright © 2016 YouGov. All rights reserved.
//

import Foundation

protocol FeedDataSourceProtocol {
    
    var dataModels: [String] { get set }
}

class FeedDataSource {
    
    var dataModels = [String]()
    
    
}