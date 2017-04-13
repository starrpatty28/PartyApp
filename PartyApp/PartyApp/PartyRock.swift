//
//  PartyRock.swift
//  PartyApp
//
//  Created by Noi-Ariella Baht Israel on 4/13/17.
//  Copyright © 2017 Plant A Seed of Code. All rights reserved.
//

import Foundation


class PartyRock {
    private var _imageURL: String!
    private var _videoURL: String!
    private var _videoTitle: String!
    
    var imageURL: String {  //this keeps outside classes from mannipulate yor data
        return _imageURL
    }
    
    var videoURL: String {
        return _videoURL
    }
    
    var videoTitle: String {
        return _videoTitle
    }
    
    init(imageURL: String, videoURL: String, videoTitle: String) {
        
        _imageURL = imageURL
        _videoURL = videoURL
        _videoTitle = videoTitle
    }
}

