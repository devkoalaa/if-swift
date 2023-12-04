import Foundation
import UIKit


class ViewControllerDefault: ViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.prefersLargeTitles=true
//        self.navigationItem.setHidesBackButton(true, animated: false)
    }
}
