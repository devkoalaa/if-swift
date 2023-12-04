import Foundation
import UIKit

class RegisterView: UIView {
    
    override init (frame: CGRect){
        super.init(frame:frame)
        self.backgroundColor = .viewBackgroundColor
        setupVisualElements()
    }
    
    var onLoginTap: (() -> Void)?
    
    var imageLabel = LabelDefault(text: "Entre com seu e-mail e senha para se registrar.")
    var emailTextField = TextFieldDefault(placeholder: "E-mail")
    var senhaTextField = TextFieldDefault(placeholder: "Senha")
    var senhaConfirmaTextField = TextFieldDefault(placeholder: "Comfirme a senha")
    var buttonLogar = ButtonDefault(title: "LOGAR")
    var buttonRegistrar = ButtonDefault(title: "REGISTRAR")
     
    func setupVisualElements(){
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
    
    required init(coder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc
    private func loginTap() {
        onLoginTap?()
    }
}
