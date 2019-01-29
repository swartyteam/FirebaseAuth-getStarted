//
//  Created by Kirill Verhoturov on 05/01/2019.
//  Copyright © 2019 Kirill Verhoturov. All rights reserved.
//

import UIKit
import FirebaseAuth

class MainVC: UIViewController {
    
    @IBOutlet weak var uidLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uidLabel.text = Auth.auth().currentUser?.uid
    }
    
    @IBAction func signOut(_ sender: Any) {
        do {
            try Auth.auth().signOut()
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let viewController = storyboard.instantiateViewController(withIdentifier :"reg")
            self.present(viewController, animated: true, completion: nil)
        } catch {
            print(error)
            
        }
    }
    
}
