//
//  LoggerExtension.swift
//  OSLogExample
//
//  Created by abdul karim on 09/12/23.
//

import Foundation
import OSLog

extension Logger {
    /// Using your bundle identifier is a great way to ensure a unique identifier.
    private static var subsystem = Bundle.main.bundleIdentifier!

    /// Logs the view cycles like a view that appeared.
    static let viewCycle = Logger(subsystem: subsystem, category: "ViewCycle")

    /// All logs related to tracking and analytics.
    static let statistics = Logger(subsystem: subsystem, category: "Statistics")
    
    /// All logs related to tracking and analytics.
    static let api = Logger(subsystem: subsystem, category: "API")
}
