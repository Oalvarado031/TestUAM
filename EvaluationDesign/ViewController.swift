import UIKit

class ViewController: UIViewController {
    
    // Main View
    let backgroundImage = UIImageView()
    let iconImage = UIImageView()
    
    let welcomeLabel = UILabel()
    let welcomeLabel2 = UILabel()
    
    let signUpButton = UIButton(type: .system)
    let signInButton = UIButton(type: .system)
    
    //Sign In View
    let signInView = UIView()
    let backButtonSignIn = UIButton(type: .system)
    let signInButton2 = UIButton(type: .system)
    let welcomeBackLabel = UILabel()
    
    let optionLabel = UILabel()
    
    let googleIcon = UIImageView()
    let appleIcon = UIImageView()
    let facebookIcon = UIImageView()
    
    //Sign Up View

    let signUpView = UIView()
    let backButtonSignUp = UIButton(type: .system)
    let newAccountLabel1 = UILabel()
    let newAccountLabel2 = UILabel()
    
    let titleLabelSignUpView = UILabel()
    let iconImageSignUpView = UIImageView()
    let placheHolderSignUpView = UITextField()
    let underlineSignUpView = UIView()
    let signUpButton2 = UIButton(type: .system)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUI()
        setSignInView()
        setSignUpView()
        
    }
    
    func setUI() {
        backgroundImage.image = UIImage(named: "uamBackground")
        backgroundImage.contentMode = .scaleAspectFill
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        backgroundImage.alpha = 0.8
        
        view.addSubview(backgroundImage)
        
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        
        // Welcome Labels
        welcomeLabel.text = "Gestor de Eventos"
        welcomeLabel.textColor = .black
        welcomeLabel.font = UIFont(name: "Georgia-Bold", size: 35)
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(welcomeLabel)
        
        NSLayoutConstraint.activate([
            welcomeLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: -50),
            welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        welcomeLabel2.text = "Universitarios"
        welcomeLabel2.textColor = .black
        welcomeLabel2.font = UIFont(name: "Georgia-Bold", size: 35)
        welcomeLabel2.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(welcomeLabel2)
        
        NSLayoutConstraint.activate([
            welcomeLabel2.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: -130),
            welcomeLabel2.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            
        ])
        
        iconImage.image = UIImage(named: "uamLogo")
        iconImage.contentMode = .scaleAspectFit
        iconImage.translatesAutoresizingMaskIntoConstraints = false
        iconImage.layer.cornerRadius = 75
        iconImage.layer.masksToBounds = true
        iconImage.backgroundColor = .brown
        
        view.addSubview(iconImage)
        
        NSLayoutConstraint.activate([
            iconImage.topAnchor.constraint(equalTo: welcomeLabel2.bottomAnchor, constant: 40),
            iconImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            iconImage.heightAnchor.constraint(equalToConstant: 150),
            iconImage.widthAnchor.constraint(equalToConstant: 150)
        ])
        
        signUpButton.setTitle("Registrarse", for: .normal)
        signUpButton.translatesAutoresizingMaskIntoConstraints = false
        signUpButton.setTitleColor(.black, for: .normal)
        signUpButton.titleLabel?.font = UIFont(name: "sans-serif moderna", size: 18)
        signUpButton.backgroundColor = UIColor(red: 40/255, green: 248/255, blue: 255/255, alpha: 1)
        signUpButton.layer.cornerRadius = 24
        signUpButton.addTarget(self, action: #selector(showSignUpView), for: .touchUpInside)
        
        view.addSubview(signUpButton)
        
        signInButton.setTitle("Iniciar Sesión", for: .normal)
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        signInButton.setTitleColor(.black, for: .normal)
        signInButton.titleLabel?.font = UIFont(name: "sans-serif moderna", size: 18)
        signInButton.backgroundColor = UIColor(ciColor: CIColor(red: 207/255, green: 240/255, blue: 230/255, alpha: 1))
        signInButton.layer.cornerRadius = 24
        signInButton.addTarget(self, action: #selector(showSignInView), for: .touchUpInside)
        
        view.addSubview(signInButton)
        
        NSLayoutConstraint.activate([
            signInButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            signInButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signInButton.widthAnchor.constraint(equalToConstant: 275),
            signInButton.heightAnchor.constraint(equalToConstant: 65)
        ])
        
        NSLayoutConstraint.activate([
            signUpButton.bottomAnchor.constraint(equalTo: signInButton.topAnchor, constant: -15),
            signUpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signUpButton.widthAnchor.constraint(equalToConstant: 275),
            signUpButton.heightAnchor.constraint(equalToConstant: 65)
        ])
        
    }
        
    func createInputSection(title: String, placeholder: String, iconName: String, isSecure: Bool) -> UIView {
        let containerView = UIView()

        let titleLabel = UILabel()
        titleLabel.text = title
        titleLabel.font = UIFont(name: "Georgia", size: 20)
        titleLabel.textColor = .brown
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(titleLabel)
        
        let iconImageView = UIImageView(image: UIImage(systemName: iconName))
        iconImageView.contentMode = .scaleAspectFit
        iconImageView.tintColor = .black
        iconImageView.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(iconImageView)
        
        
        let textField = UITextField()
        textField.placeholder = placeholder
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.isSecureTextEntry = isSecure ? true: false
        containerView.addSubview(textField)
        
        let underlineView = UIView()
        underlineView.backgroundColor = UIColor(ciColor: CIColor(red: 207/255, green: 240/255, blue: 230/255, alpha: 1))
        underlineView.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(underlineView)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: containerView.topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            
            iconImageView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            iconImageView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            iconImageView.widthAnchor.constraint(equalToConstant: 20),
            iconImageView.heightAnchor.constraint(equalToConstant: 20),

            textField.centerYAnchor.constraint(equalTo: iconImageView.centerYAnchor),
            textField.leadingAnchor.constraint(equalTo: iconImageView.trailingAnchor, constant: 5),
            textField.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),

            underlineView.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 5),
            underlineView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            underlineView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            underlineView.heightAnchor.constraint(equalToConstant: 5),

            containerView.bottomAnchor.constraint(equalTo: underlineView.bottomAnchor, constant: 5)
        ])
        
        return containerView
    }
    
    func setSignInView() {
        signInView.backgroundColor = .white
        signInView.translatesAutoresizingMaskIntoConstraints = false
        signInView.isHidden = true
        signInView.layer.cornerRadius = 35
        
        view.addSubview(signInView)
        
        NSLayoutConstraint.activate([
            signInView.topAnchor.constraint(equalTo: welcomeLabel2.bottomAnchor, constant: 70),
            signInView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            signInView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            signInView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        backButtonSignIn.setImage(UIImage(systemName: "arrowshape.turn.up.backward.fill"), for: .normal)
        backButtonSignIn.translatesAutoresizingMaskIntoConstraints = false
        backButtonSignIn.tintColor = .black
        backButtonSignIn.addTarget(self, action: #selector(hideSignInView), for: .touchUpInside)
        
        signInView.addSubview(backButtonSignIn)
        
        NSLayoutConstraint.activate([
            backButtonSignIn.topAnchor.constraint(equalTo: signInView.topAnchor, constant: 20),
            backButtonSignIn.leadingAnchor.constraint(equalTo: signInView.leadingAnchor, constant: 20),
            backButtonSignIn.widthAnchor.constraint(equalToConstant: 20),
            backButtonSignIn.heightAnchor.constraint(equalToConstant: 20),
        ])
        
        
        welcomeBackLabel.text = "Bienvenido"
        welcomeBackLabel.font = UIFont(name: "Georgia-Bold", size: 24)
        welcomeBackLabel.textColor = .black
        welcomeBackLabel.translatesAutoresizingMaskIntoConstraints = false
        
        signInView.addSubview(welcomeBackLabel)
        
        NSLayoutConstraint.activate([
            welcomeBackLabel.topAnchor.constraint(equalTo: signInView.topAnchor, constant: 40),
            welcomeBackLabel.centerXAnchor.constraint(equalTo: signInView.centerXAnchor)
        ])
        
        // Button Section
        
        signInButton2.setTitle("Iniciar Sesión", for: .normal)
        signInButton2.translatesAutoresizingMaskIntoConstraints = false
        signInButton2.backgroundColor = UIColor(ciColor: CIColor(red: 207/255, green: 240/255, blue: 230/255, alpha: 1))
        signInButton2.setTitleColor(.black, for: .normal)
        signInButton2.layer.cornerRadius = 24
        
        signInButton2.addTarget(self, action: #selector(changeScene), for: .touchUpInside)
        
        signInView.addSubview(signInButton2)
        
        NSLayoutConstraint.activate([
            signInButton2.bottomAnchor.constraint(equalTo: signInView.bottomAnchor, constant: -120),
            signInButton2.centerXAnchor.constraint(equalTo: signInView.centerXAnchor),
            signInButton2.widthAnchor.constraint(equalToConstant: 200),
            signInButton2.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        let usernameSectionSignIn = createInputSection(title: "Usuario", placeholder: "", iconName: "person.fill", isSecure: false)
        let passwordSectionSignIn = createInputSection(title: "Contraseña", placeholder: "", iconName: "key.fill", isSecure: true)
        
        let stackView1 = UIStackView(arrangedSubviews: [usernameSectionSignIn, passwordSectionSignIn])
        
        stackView1.axis = .vertical
        stackView1.distribution = .fillProportionally
        stackView1.translatesAutoresizingMaskIntoConstraints = false
        
        signInView.addSubview(stackView1)
        
        NSLayoutConstraint.activate([
            stackView1.topAnchor.constraint(equalTo: welcomeBackLabel.bottomAnchor, constant: 40),
            stackView1.bottomAnchor.constraint(equalTo: signInButton2.topAnchor, constant: -20),
            stackView1.leadingAnchor.constraint(equalTo: signInView.leadingAnchor, constant: 30),
            stackView1.trailingAnchor.constraint(equalTo: signInView.trailingAnchor, constant: -30),
        ])
        
        //
        
        optionLabel.text = "or sign in with"
        optionLabel.textColor = .gray
        optionLabel.translatesAutoresizingMaskIntoConstraints = false
        optionLabel.font = UIFont(name: "Georgia", size: 12)
        
        signInView.addSubview(optionLabel)
        
        NSLayoutConstraint.activate([
            optionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            optionLabel.topAnchor.constraint(equalTo: signInButton2.bottomAnchor, constant: 25)
            
        ])
        
        stackViewSignInIcons()
        
        
    }
    
    @objc func showSignInView() {
        signInView.isHidden = false
        welcomeLabel.isHidden = false
        welcomeLabel2.isHidden = false
        iconImage.isHidden = true
        signUpButton.isHidden = true
        signInButton.isHidden = true
    }
    
    @objc func hideSignInView(){
        signInView.isHidden = true
        welcomeLabel.isHidden = false
        welcomeLabel2.isHidden = false
        iconImage.isHidden = false
        signUpButton.isHidden = false
        signInButton.isHidden = false
    }
    
    func stackViewSignInIcons(){
        googleIcon.image = UIImage(named: "googleIcon")
        appleIcon.image = UIImage(named: "appleIcon")
        facebookIcon.image = UIImage(named: "facebookIcon")
        
        [googleIcon, appleIcon, facebookIcon].forEach {
            $0.contentMode = .scaleAspectFit
            $0.translatesAutoresizingMaskIntoConstraints = false
            $0.widthAnchor.constraint(equalToConstant: 40).isActive = true
            $0.heightAnchor.constraint(equalToConstant: 40).isActive = true
        }
        
        let stackView = UIStackView(arrangedSubviews: [
            googleIcon,
            appleIcon,
            facebookIcon
        ])
        
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        stackView.alignment = .center
        stackView.spacing = 10
        
        signInView.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.topAnchor.constraint(equalTo: optionLabel.bottomAnchor, constant: 20)
        ])
        
    }

    
    func setSignUpView(){
        signUpView.backgroundColor = .white
        signUpView.translatesAutoresizingMaskIntoConstraints = false
        signUpView.isHidden = true
        signUpView.layer.cornerRadius = 35
        
        view.addSubview(signUpView)
        
        NSLayoutConstraint.activate([
            signUpView.topAnchor.constraint(equalTo: welcomeLabel2.bottomAnchor, constant: 70),
            signUpView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            signUpView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            signUpView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        backButtonSignUp.setImage(UIImage(systemName: "arrowshape.turn.up.backward.fill"), for: .normal)
        backButtonSignUp.translatesAutoresizingMaskIntoConstraints = false
        backButtonSignUp.tintColor = .black
        backButtonSignUp.addTarget(self, action: #selector(hideSignUpView), for: .touchUpInside)
        
        signUpView.addSubview(backButtonSignUp)
        
        NSLayoutConstraint.activate([
            backButtonSignUp.topAnchor.constraint(equalTo: signUpView.topAnchor, constant: 20),
            backButtonSignUp.leadingAnchor.constraint(equalTo: signUpView.leadingAnchor, constant: 20),
            backButtonSignUp.widthAnchor.constraint(equalToConstant: 20),
            backButtonSignUp.heightAnchor.constraint(equalToConstant: 20),
        ])
        
        newAccountLabel1.text = "Crea una nueva"
        newAccountLabel1.font = UIFont(name: "Georgia-Bold", size: 24)
        newAccountLabel1.textColor = .black
        newAccountLabel1.translatesAutoresizingMaskIntoConstraints = false
        
        signUpView.addSubview(newAccountLabel1)
        
        NSLayoutConstraint.activate([
            newAccountLabel1.topAnchor.constraint(equalTo: signUpView.topAnchor, constant: 40),
            newAccountLabel1.centerXAnchor.constraint(equalTo: signUpView.centerXAnchor)
        ])
        
        newAccountLabel2.text = "Cuenta"
        newAccountLabel2.font = UIFont(name: "Georgia-Bold", size: 24)
        newAccountLabel2.textColor = .black
        newAccountLabel2.translatesAutoresizingMaskIntoConstraints = false
        
        signUpView.addSubview(newAccountLabel2)
        
        NSLayoutConstraint.activate([
            newAccountLabel2.topAnchor.constraint(equalTo: newAccountLabel1.bottomAnchor, constant: 10),
            newAccountLabel2.centerXAnchor.constraint(equalTo: signUpView.centerXAnchor)
        ])
        
        signUpButton2.setTitle("Sign up", for: .normal)
        signUpButton2.translatesAutoresizingMaskIntoConstraints = false
        signUpButton2.backgroundColor = UIColor(red: 255/255, green: 179/255, blue: 71/255, alpha: 1)
        signUpButton2.setTitleColor(.white, for: .normal)
        signUpButton2.layer.cornerRadius = 24
        
        signUpButton2.addTarget(self, action: #selector(changeScene2), for: .touchUpInside)
        
        signUpView.addSubview(signUpButton2)
        
        NSLayoutConstraint.activate([
            signUpButton2.bottomAnchor.constraint(equalTo: signUpView.safeAreaLayoutGuide.bottomAnchor, constant: -30),
            signUpButton2.centerXAnchor.constraint(equalTo: signUpView.centerXAnchor),
            signUpButton2.widthAnchor.constraint(equalToConstant: 200),
            signUpButton2.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        let usernameSection = createInputSection(title: "Username", placeholder: "", iconName: "person.fill", isSecure: false)
        let emailSection = createInputSection(title: "Email", placeholder: "", iconName: "envelope.fill", isSecure: false)
        let passwordSection = createInputSection(title: "Password", placeholder: "", iconName: "key.fill", isSecure: true)
    
    
        let stackView = UIStackView(arrangedSubviews: [
            usernameSection,
            emailSection,passwordSection
        ])
        
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        signUpView.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: newAccountLabel2.bottomAnchor, constant: 20),
            stackView.leadingAnchor.constraint(equalTo: signUpView.leadingAnchor, constant: 30),
            stackView.trailingAnchor.constraint(equalTo: signUpView.trailingAnchor, constant: -30),
            stackView.bottomAnchor.constraint(equalTo: signUpButton2.topAnchor, constant: -20)
            
        ])
    
    }
    
    @objc func changeScene2(){
        let homeView1 = HomeViewController(nibName: "HomeViewController", bundle: nil)
        self.navigationController?.pushViewController(homeView1, animated: true)
    }
    
    
    @objc func changeScene(){
        
        let usernameField = (signInView.subviews.compactMap { $0 as? UIStackView }.first?.arrangedSubviews[0].subviews.compactMap { $0 as? UITextField }.first)
        let passwordField = (signInView.subviews.compactMap { $0 as? UIStackView }.first?.arrangedSubviews[1].subviews.compactMap { $0 as? UITextField }.first)
        
        if let username = usernameField?.text, let password = passwordField?.text {
            if username == "Javier" && password == "Hola" {
                let homeView = HomeViewController(nibName: "HomeViewController", bundle: nil)
                self.navigationController?.pushViewController(homeView, animated: true)
            } else {
                let alert = UIAlertController(title: "Error", message: "Nombre de usuario o contraseña incorrectos", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
            
        }
    }

    @objc func showSignUpView() {
        signUpView.isHidden = false
        welcomeLabel.isHidden = false
        welcomeLabel2.isHidden = false
        iconImage.isHidden = true
        signUpButton.isHidden = true
        signInButton.isHidden = true
    }
    
    @objc func hideSignUpView(){
        signUpView.isHidden = true
        welcomeLabel.isHidden = false
        welcomeLabel2.isHidden = false
        iconImage.isHidden = false
        signUpButton.isHidden = false
        signInButton.isHidden = false
        
    }
}
