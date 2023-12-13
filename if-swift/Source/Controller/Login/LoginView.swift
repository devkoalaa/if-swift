import Foundation
import UIKit

class LoginView: ViewDefault {
    var onRegisterTap: (() -> Void)?
    var onLoginTap: (() -> Void)?
    var imageLogin = ImageDefault(image: "logo-notifica-bw")
    var imageLabel = LabelDefault(text: "Registre e gerencie as ocorrências do seu IF")
    var emailTextField = TextFieldDefault(placeholder: "E-mail", keyboardType: .emailAddress, returnKeyType: .next)
    var senhaTextField: TextFieldDefault = {
        let textField = TextFieldDefault(placeholder: "Senha", keyboardType: .default, returnKeyType: .done)
        textField.isSecureTextEntry = true
        return textField
    }()
    var buttonLogar = ButtonDefault(title: "LOGAR")
    var buttonRegistrar = ButtonDefault(title: "REGISTRAR")
    
    override func setupVisualElements(){
        super.setupVisualElements()
        emailTextField.delegate = self
        senhaTextField.delegate = self
        
        addSubview(imageLogin)
        addSubview(imageLabel)
        addSubview(emailTextField)
        addSubview(senhaTextField)
        addSubview(buttonLogar)
        addSubview(buttonRegistrar)
        
        buttonRegistrar.addTarget(self, action: #selector(registerTap), for: .touchUpInside)
        
        buttonLogar.addTarget(self, action: #selector(loginTap), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            imageLogin.heightAnchor.constraint(equalToConstant: 82.64),
            imageLogin.topAnchor.constraint(equalTo: self.topAnchor, constant: 228),
            imageLogin.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            imageLabel.widthAnchor.constraint(equalToConstant: 100),
            imageLabel.topAnchor.constraint(equalTo: imageLogin.bottomAnchor, constant: 5),
            imageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            imageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            
            emailTextField.widthAnchor.constraint(equalToConstant: 374),
            emailTextField.heightAnchor.constraint(equalToConstant: 60),
            emailTextField.topAnchor.constraint(equalTo: imageLabel.bottomAnchor, constant: 70),
            emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            senhaTextField.widthAnchor.constraint(equalToConstant: 374),
            senhaTextField.heightAnchor.constraint(equalToConstant: 60),
            senhaTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 23),
            senhaTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            senhaTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            buttonLogar.widthAnchor.constraint(equalToConstant: 374),
            buttonLogar.heightAnchor.constraint(equalToConstant: 60),
            buttonLogar.topAnchor.constraint(equalTo: senhaTextField.bottomAnchor, constant: 25),
            buttonLogar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonLogar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            buttonRegistrar.widthAnchor.constraint(equalToConstant: 374),
            buttonRegistrar.heightAnchor.constraint(equalToConstant: 60),
            buttonRegistrar.topAnchor.constraint(equalTo: buttonLogar.bottomAnchor, constant: 10),
            buttonRegistrar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonRegistrar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16)
        ])
    }
    
    @objc
    private func registerTap() {
        onRegisterTap?()
    }
    
    @objc
    private func loginTap() {
        onLoginTap?()
    }
}

extension LoginView: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == emailTextField {
            self.senhaTextField.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
        }
        
        return true
    }
}
