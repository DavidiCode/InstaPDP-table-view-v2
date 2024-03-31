//
//  Post.swift
//  InstaPDP
//
//  Created by Akbar Ibodulloyev on 31/03/24.
//

import Foundation

class Post {
    var fullname: String? = ""
    var user_img: String? = ""
    var firstPost_img: String? = ""
    var secondPost_img: String? = ""
    
    init(fullname: String? = nil, user_img: String? = nil, firstPost_img: String? = nil, secondPost_img: String? = nil) {
        self.fullname = fullname
        self.user_img = user_img
        self.firstPost_img = firstPost_img
        self.secondPost_img = secondPost_img
    }
    
}
