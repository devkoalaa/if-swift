import Foundation
import UIKit

class RegisterView: ViewDefault {
    var onLoginTap: (() -> Void)?
    var imageLabel = LabelDefault(text: "Entre com seu e-mail e senha para se registrar.")
    var emailTextField = TextFieldDefault(placeholder: "E-mail", keyboardType: .emailAddress, returnKeyType: .next)
    var senhaTextField: TextFieldDefault = {
        let textField = TextFieldDefault(placeholder: "Senha", keyboardType: .default, returnKeyType: .next)
        textField.isSecureTextEntry = true
        return textField
    }()
    var senhaConfirmaTextField: TextFieldDefault = {
        let textField = TextFieldDefault(placeholder: "Confirme a senha", keyboardType: .default, returnKeyType: .done)
        textField.isSecureTextEntry = true
        return textField
    }()
    var buttonLogar = ButtonDefault(title: "LOGAR")
    var buttonRegistrar = ButtonDefault(title: "REGISTRAR")
    
    override func setupVisualElements(){
        super.setupVisualElements()
        emailTextField.delegate = self
        senhaTextField.delegate = self
        senhaConfirmaTextField.delegate = self
        
        addSubview(imageLabel)
        addSubview(emailTextField)
        addSubview(senhaTextField)
        addSubview(senhaConfirmaTextField)
        addSubview(buttonLogar)
        addSubview(buttonRegistrar)
        
        buttonLogar.addTarget(self, action: #selector(loginTap), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            imageLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 228),
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
            
            senhaConfirmaTextField.widthAnchor.constraint(equalToConstant: 374),
            senhaConfirmaTextField.heightAnchor.constraint(equalToConstant: 60),
            senhaConfirmaTextField.topAnchor.constraint(equalTo: senhaTextField.bottomAnchor, constant: 23),
            senhaConfirmaTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            senhaConfirmaTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            buttonLogar.widthAnchor.constraint(equalToConstant: 374),
            buttonLogar.heightAnchor.constraint(equalToConstant: 60),
            buttonLogar.topAnchor.constraint(equalTo: senhaConfirmaTextField.bottomAnchor, constant: 25),
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
    private func loginTap() {
        onLoginTap?()
    }
}

extension RegisterView: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == emailTextField {
            self.senhaTextField.becomeFirstResponder()
        } else if textField == senhaTextField {
            self.senhaConfirmaTextField.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
        }
        
        return true
    }
}
