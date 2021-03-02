//
//  UserProfile.swift
//  Spotify
//
//  Created by ioannis giannakidis on 18/2/21.
//

import Foundation
struct UserProfile:Codable {
    let country:String
    let display_name:String
    let email: String
    let explicit_content:[String:Int]
    let external_urls:[String:String]
    //let  followers:[String:Codable?]
    let id:String
    let product:String
    let images:[UserImage]
    
    
}
struct UserImage:Codable {
    let url:String
}

