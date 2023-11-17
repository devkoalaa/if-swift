import Foundation
import UIKit

class ImageDefault : UIImageView{
    
    init(image: String){
        super.init(frame: .zero)
        initDefault(image: image)
    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault(image: String){
        self.image = UIImage(named: image)
        self.contentMode = .scaleAspectFit
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
