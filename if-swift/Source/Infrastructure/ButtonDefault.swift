import Foundation
import UIKit

class ButtonDefault : UIButton {
    
    init(title: String){
        super.init(frame: .zero)
        initDefault(title: title)
    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault(title: String){
        self.setTitle(title, for: .normal)
        self.backgroundColor = .buttonBackgroundColor
        self.layer.cornerRadius = 14
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
