import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var emailLogin: UITextField!
    @IBOutlet weak var passwordLogin: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func loginButtonTapped(_ sender: UIButton) {
        
        if let safeMail = emailLogin.text, let safePassword = passwordLogin.text {
            Auth.auth().signIn(withEmail: safeMail, password: safePassword) { data, error in
                if let e = error {
                    print(e.localizedDescription)
                } else {
                    self.performSegue(withIdentifier: "LoginToChat", sender: self)
                }
            }
        }
    }
}

