//
//  WSTag.swift
//  Whitesmith
//
//  Created by Ricardo Pereira on 12/05/16.
//  Copyright © 2016 Whitesmith. All rights reserved.
//

import Foundation

public struct WSTag: Hashable {

    public let tag: String
    public let text: String
    public let image: UIImage

    public init(_ tag: String, _ text: String, image: UIImage = UIImage()) {
        self.tag = tag
        self.text = text
        self.image = image
    }

    public var hashValue: Int {
        return self.text.hashValue
    }

    public func equals(_ other: WSTag) -> Bool {
        return self.text == other.text
    }

}

public func == (lhs: WSTag, rhs: WSTag) -> Bool {
    return lhs.equals(rhs)
}
