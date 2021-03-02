//
//  SettingsModels.swift
//  Spotify
//
//  Created by ioannis giannakidis on 2/3/21.
//

import Foundation

struct Section {
    let title:String
    let options:[Option]
    
}
struct Option {
    let title:String
    let handler:() ->Void
    
}
