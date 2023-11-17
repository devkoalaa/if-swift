import Foundation
import UIKit

class TextFieldDefault : UITextField {
    
    init(placeholder: String){
        super.init(frame: .zero)
        initDefault(placeholder: placeholder)
    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault(placeholder: String){
        self.backgroundColor = .textFieldBackgroundColor
        self.translatesAutoresizingMaskIntoConstraints = false
        self.placeholder = placeholder
        self.borderStyle = .roundedRect
    }
}
