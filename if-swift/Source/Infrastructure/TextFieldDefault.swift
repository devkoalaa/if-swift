import Foundation
import UIKit

class TextFieldDefault : UITextField {
    init(placeholder: String){
        super.init(frame: .zero)
        initDefault(placeholder: placeholder, keyboardType: .default, returnKeyType: .default)
    }
    
    init(placeholder: String, keyboardType: UIKeyboardType, returnKeyType: UIReturnKeyType){
        super.init(frame: .zero)
        initDefault(placeholder: placeholder, keyboardType: keyboardType, returnKeyType: returnKeyType)
    }
    
    private func initDefault(placeholder: String, keyboardType: UIKeyboardType, returnKeyType: UIReturnKeyType){
        self.backgroundColor = .textFieldBackgroundColor
        self.placeholder = placeholder
        self.keyboardType = keyboardType
        self.returnKeyType = returnKeyType
        self.borderStyle = .roundedRect
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
}
