import Foundation
import UIKit

class LoginCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start(){
        let viewController = LoginViewController()
        self.navigationController.pushViewController(viewController, animated: true)
        
        viewController.onRegisterTap = {
            self.goToRegister()
        }
        
        viewController.onLoginTap = {
            self.goToLogin()
        }
    }
    
    func goToRegister(){
        let coordinator = RegisterCoordinator(navigationController: navigationController)
        coordinator.start()
    }
    
    func goToLogin(){
        let coordinator = HomeCoordinator(navigationController: navigationController)
        coordinator.start()
    }
}
