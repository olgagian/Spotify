//
//  FeaturedPlaylistResponse.swift
//  Spotify
//
//  Created by ioannis giannakidis on 8/4/21.
//
import Foundation

struct FeaturedPlaylistsResponse: Codable {
    let playlists: PlaylistResponse
}



struct PlaylistResponse: Codable {
    let items: [Playlist]
}


struct User:Codable {
    let display_name:String
    let external_urls:[String:String]
    let id:String


    
    
}
