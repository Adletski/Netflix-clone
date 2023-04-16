//
//  Extensions.swift
//  Netflix Clone
//
//  Created by Adlet Zhantassov on 14.04.2023.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}

