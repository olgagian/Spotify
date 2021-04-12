//
//  Playlist.swift
//  Spotify
//
//  Created by ioannis giannakidis on 18/2/21.
//

import Foundation
struct Playlist: Codable {
    let description:String
    let external_urls:[String:String]
    let id:String
    let images:[APIImage]
    let name:String
    let owner:User
    
}
