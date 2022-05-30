import UIKit
import Firebase

class RegisterViewController: UIViewController {

    @IBOutlet weak var usernamRegister: UITextField!
    @IBOutlet weak var emailRegister: UITextField!
    @IBOutlet weak var passwordRegister: UITextField!
    @IBOutlet weak var paswordConfirmRegister: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func createAccountPressed(_ sender: UIButton) {
        
        
        if let safePassword = passwordRegister.text, let safeEMail = emailRegister.text {
            Auth.auth().createUser(withEmail: safeEMail, password: safePassword) { data, error in
                if let e = error {
                    print(e.localizedDescription)
                } else {
                    self.dismiss(animated: true, completion: nil)
                }
            }
        }
        
    }
}
















