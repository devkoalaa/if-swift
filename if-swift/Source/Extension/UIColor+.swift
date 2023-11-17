import Foundation
import UIKit

extension UIColor {
    static var viewBackgroundColor: UIColor {
        UIColor(named: "viewBackgroundColor") ?? .white
    }
    static var textLabelColor: UIColor {
        UIColor(named: "textLabelColor") ?? .lightGray
    }
    static var buttonBackgroundColor: UIColor {
        UIColor(named: "buttonBackgroundColor") ?? .black
    }
    static var textFieldBackgroundColor: UIColor {
        UIColor(named: "textFieldBackgroundColor") ?? .black
    }
    static var placeHolderColor: UIColor {
        UIColor(named: "placeHolderColor") ?? .white
    }
}
