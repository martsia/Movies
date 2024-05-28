//
//  LoginViewController.swift
//  Movies
//
//  Created by Marta Kalichynska on 28.05.2024.
//

import UIKit

class LoginViewController: UIViewController {
    
    private let usernameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Username"
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.isSecureTextEntry = true
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Login", for: .normal)
        button.backgroundColor = UIColor(red: 92/255, green: 94/255, blue: 246/255, alpha: 1)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 5
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        return button
    }()
    
    private let rememberMeSwitch: UISwitch = {
        let rememberSwitch = UISwitch()
        rememberSwitch.translatesAutoresizingMaskIntoConstraints = false
        rememberSwitch.onTintColor = UIColor(red: 92/255, green: 94/255, blue: 246/255, alpha: 1)
        return rememberSwitch
    }()
    
    private let rememberMeLabel: UILabel = {
        let label = UILabel()
        label.text = "Remember Me"
        label.textColor = UIColor(red: 92/255, green: 94/255, blue: 246/255, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1)
        setupUI()
    }
    
    private func setupUI() {
        view.addSubview(usernameTextField)
        view.addSubview(passwordTextField)
        view.addSubview(loginButton)
        view.addSubview(rememberMeSwitch)
        view.addSubview(rememberMeLabel)
        
        NSLayoutConstraint.activate([
            usernameTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            usernameTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -80),
            usernameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            usernameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 20),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            rememberMeLabel.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 20),
            rememberMeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            rememberMeSwitch.centerYAnchor.constraint(equalTo: rememberMeLabel.centerYAnchor),
            rememberMeSwitch.leadingAnchor.constraint(equalTo: rememberMeLabel.trailingAnchor, constant: 10)
        ])
    }
    
    @objc private func loginButtonTapped() {
        // Handle login button tap
    }
}
