import Foundation
import UIKit

class HomeViewController: UIViewController {
    lazy var viewMain: HomeView = {
        let classView = HomeView()
        
        return classView
    }()
    
    override func loadView() {
        self.view = viewMain
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Home"
    }
}

