//
//  ViewController.swift
//  ButtonTutorial
//
//  Created by Furkan Cingöz on 15.01.2024.
//
import SwiftUI
import UIKit

class ViewController: UIViewController {

  private let button: UIButton = {
    let button = UIButton()
    button.setTitle("My button", for: .normal)
    button.setTitleColor(.orange, for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 20,weight: .bold)
    button.backgroundColor = .systemBlue
    button.layer.cornerRadius = 10
    return button
  }()



  override func viewDidLoad() {
    super.viewDidLoad()

    self.button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    self.view.addSubview(button)
    button.translatesAutoresizingMaskIntoConstraints = false

    NSLayoutConstraint.activate([
      button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor), button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor), button.widthAnchor.constraint(equalToConstant: 120), button.heightAnchor.constraint(equalToConstant: 44)


    ])
  }

  @objc func didTapButton() {
    print("it is work")
  }

}

#Preview {
  ViewControllerViewRepresentable()
}
struct ViewControllerViewRepresentable: UIViewControllerRepresentable {
  func makeUIViewController(context: Context) -> ViewController {
    // PlayerDetailVC'nin örneğini oluştur.
    return ViewController()
  }

  func updateUIViewController(_ uiViewController: ViewController, context: Context) {
    // Bu fonksiyon, view controller'ı güncellemek için kullanılır.
  }
}
