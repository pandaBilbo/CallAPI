//
//  CallAPIExtension.swift
//  CallAPI
//
//  Created by wushengtao on 2023/12/13.
//

import Foundation

extension PrepareConfig {    
    func cloneConfig() -> PrepareConfig {
        let config = PrepareConfig()
        config.roomId = roomId
        config.rtcToken = rtcToken
//        config.rtmToken = rtmToken
        config.localView = localView
        config.remoteView = remoteView
//        config.autoAccept = autoAccept
        config.autoJoinRTC = autoJoinRTC
        config.calleeJoinRTCStrategy = calleeJoinRTCStrategy
        config.callTimeoutMillisecond = callTimeoutMillisecond
        config.userExtension = userExtension
        return config
    }
}

extension CallConfig {
    func cloneConfig() -> CallConfig {
        let config = CallConfig()
        config.appId = appId
        config.userId = userId
        config.rtcEngine = rtcEngine
        config.signalClient = signalClient
        return config
    }
}

extension Date {
    public func getCostMilliseconds() -> Int {
        return Int(-timeIntervalSinceNow * 1000)
    }
    
    public func millisecondsSince1970() -> Int {
        return Int(round(Date().timeIntervalSince1970 * 1000.0))
    }
}
