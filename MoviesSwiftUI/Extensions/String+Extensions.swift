//
//  String+Extensions.swift
//  MoviesSwiftUI
//
//  Created by Dongjun Lee on 11/19/24.
//

import Foundation

extension String {
    
    var urlEncoded: String? {
        return addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
    }
    
}
