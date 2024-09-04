//
//  userModel.swift
//  cuddleme.mobile_swift
//
//  Created by Gideon Adewuyi on 04/09/2024.
//

import Foundation

class User: Identifiable {
  let id: UUID
  private var fullname: String
  private var bio: String
  
  init(fullname: String, bio: String) {
    self.id = UUID()
    self.fullname = fullname
    self.bio = bio
  }
}

struct UserViewModel {
  
}
