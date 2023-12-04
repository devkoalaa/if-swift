import Foundation
import UIKit

class LoginViewController: ViewControllerDefault {
    var onRegisterTap: (() -> Void)?
    var onLoginTap: (() -> Void)?
    
    lazy var viewMain: LoginView = {
        let loginView = LoginView()
        loginView.onRegisterTap = {
            self.onRegisterTap?()
        }
        
        loginView.onLoginTap = {
            self.onLoginTap?()
        }
        
        return loginView
    }()
    
    override func loadView() {
        self.view = viewMain
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Logar"
    }
}
