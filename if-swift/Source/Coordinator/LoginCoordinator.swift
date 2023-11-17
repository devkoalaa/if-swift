import Foundation
import UIKit

class LoginCoordinator: Coordinator {
    var navigationController = UINavigationController()
    
    init(navigationController: UINavigationController = UINavigationController()) {
        self.navigationController = navigationController
    }
    
    func start(){
        let viewController = LoginViewController()
        self.navigationController.pushViewController(viewController, animated: true)
    }
}
