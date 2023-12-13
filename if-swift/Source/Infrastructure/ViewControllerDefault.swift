import Foundation
import UIKit


class ViewControllerDefault: ViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.prefersLargeTitles=true
        self.navigationItem.setHidesBackButton(true, animated: false) 
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.hideKeyboardByTappinOutside))
        
        self.view.addGestureRecognizer(tap)
    }
    
    @objc
    func hideKeyboardByTappinOutside() {
        self.view.endEditing(true)
    }
}
