//
//  AuthManager.swift
//  Spotify
//
//  Created by ioannis giannakidis on 18/2/21.
//

import Foundation

final class AuthManager {
    static let shared = AuthManager ()
    struct Constants {
        static let clientID = "b11690406e7740deaa6b888e57aeaa85"
        static let clientSecret = "0da9bfc3a10a4523ab7cde1222487d76"
    }
    
    private init() {}
    var isSignedIn: Bool {
        return false
    }
    private var accessToken: String? {
        return nil
    }
    private var refreshToken:String? {
        return nil
    }
    
    private var tokenExpirationDate:Date? {
        return nil
    }
    private var shouldRefreshToken:Bool {
        return false
    }
}
