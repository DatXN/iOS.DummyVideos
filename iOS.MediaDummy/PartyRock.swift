//
//  File.swift
//  iOS.MediaDummy
//
//  Created by Nguyễn Xuân Đạt on 2/12/17.
//  Copyright © 2017 Nguyễn Xuân Đạt. All rights reserved.
//

import Foundation

class PartyRock {
    private var _videoTitle: String!
    private var _videoImage: String!
    private var _videoURL: String!

    var videoTitle: String {
        get {
            return _videoTitle
        }
    }
    
    var videoImage: String {
        get {
            return _videoImage
        }
    }
    
    var videoURL: String {
        get {
            return _videoURL
        }
    }

    init(videoImage: String, videoURL: String, videoTitle: String) {
        _videoTitle = videoTitle
        _videoImage = videoImage
        _videoURL = videoURL
    }
}
