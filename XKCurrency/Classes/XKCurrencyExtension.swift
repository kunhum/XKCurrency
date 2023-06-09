//
//  XKCurrencyExtension.swift
//  Pods
//
//  Created by kenneth on 2023/6/6.
//

import Foundation

public extension Bundle {
    class func currency() -> Bundle? {
        let bundle = Bundle(for: XKCurrency.self)
        guard let url = bundle.url(forResource: "XKCurrency", withExtension: "bundle") else { return nil }
        return Bundle(url: url)
    }
}

extension UIImage {
    class func currency(name: String) -> UIImage? {
        return UIImage(named: name, in: .currency(), compatibleWith: nil)
    }
}
