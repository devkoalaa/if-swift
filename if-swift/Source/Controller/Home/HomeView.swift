import Foundation
import UIKit

class HomeView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupVisualElements()
        self.backgroundColor = .viewBackgroundColor
    }
    
    required init? (coder: NSCoder){
        fatalError("Init(coder:) has not been implemented")
    }
    
    func setupVisualElements(){
//        setupVisualElements()
    }
}
