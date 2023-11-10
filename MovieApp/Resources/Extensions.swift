//
//  Extensions.swift
//  MovieApp
//
//  Created by Saba Gogrichiani on 10.11.23.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
