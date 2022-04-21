//
//  UserIslandParams.swift
//  DesafioCamp_ODS10
//
//  Created by Rita Lisboa on 21/04/22.
//

import Foundation

struct UserIslandsParams: Codable {
    let id: String?
    let name: String?
    let description: String?
    let documents: [UserDocumentsParams]
    
}
