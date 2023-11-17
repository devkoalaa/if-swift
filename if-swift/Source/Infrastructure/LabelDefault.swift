import Foundation
import UIKit

class LabelDefault : UILabel {
    
    init(text: String){
        super.init(frame: .zero)
        initDefault(text: text)
    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault(text: String){
        self.textColor = .textLabelColor
        self.font = UIFont(name: "SFProDisplay-Light", size: 16)
        self.text = text
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
