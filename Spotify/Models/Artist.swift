//
//  Artist.swift
//  Spotify
//
//  Created by ioannis giannakidis on 18/2/21.
//

import Foundation
struct Artist:Codable {
    let id:String
    let name:String
    let type:String
    let external_urls:[String:String]
}
