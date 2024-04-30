//
//  Log.swift
//  YOMMA
//
//  Created by 전창평 on 5/1/24.
//

import Foundation
import OSLog

public class Log {
    public static func logDebugDefault(_ st: String) {
        let l = OSLog(subsystem: "\(Bundle.main.bundleIdentifier ?? "")", category: "DefaultLog")
        os_log("🟡🟡 %@",log: l, type: .debug, st)
    }
    
    public static func logDebugError(_ st: String) {
        let l = OSLog(subsystem: "\(Bundle.main.bundleIdentifier ?? "")", category: "ErrorLog")
        os_log("🔴🔴 %@",log: l, type: .error, st)
    }
    
    public static func logNetwork(_ st: String) {
        let l = OSLog(subsystem: "\(Bundle.main.bundleIdentifier ?? "")", category: "NetworkLog")
        os_log("🟣🟣 %@",log: l, type: .debug, st)
    }
    
}
