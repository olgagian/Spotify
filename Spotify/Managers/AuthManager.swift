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
        static let tokenAPIURL = "https://accounts.spotify.com/api/token"
    }
    
    private init() {}
    var isSignedIn: Bool {
        return false
    }
    public var signInURL:URL?{
        let scopes = "user-read-private"
        let redirectURI =  "https://www.iosacademy.io"
        let base = "https://accounts.spotify.com/authorize"
        let string = "\(base)?response_type=code&client_id=\(Constants.clientID)&scope=\(scopes)&redirect_uri=\(redirectURI)&show_dialog=TRUE"
        return URL(string: string)
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
    public func exchangeCodeForToken(code:String,completion:@escaping((Bool)-> Void)) {
        
        //Get Token
        guard let url = URL(string: Constants.tokenAPIURL) else {
            return
        }
        var components =  URLComponents()
        components.queryItems = [URLQueryItem(name :"grant_type", value: "authorization_code"),
                                 URLQueryItem(name :"code", value: code),
                                 URLQueryItem(name :"redirect_uri", value: "https://www.iosacademy.io")]
        var request = URLRequest(url:url)
        request.httpMethod = "POST"
        request.httpBody = components.query?.data(using: .utf8)
        
        let task = URLSession.shared.dataTask(with: request) {data, _, error in
            guard let data = data , error == nil else {
                completion(false)
                return
            }
            
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
                print("SUCCESS:\(json)")
            }
            catch {
                print(error.localizedDescription)
                completion(false)
            }
        }
        task.resume()
    }
    private func RefreshAccessToken() {
        
    }
    private func cacheToten(){
        
    }
}
