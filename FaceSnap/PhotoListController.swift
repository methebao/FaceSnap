//
//  ViewController.swift
//  FaceSnap
//
//  Created by The Bao on 1/25/17.
//  Copyright © 2017 The Bao. All rights reserved.
//

import UIKit

class PhotoListController: UIViewController {

    lazy var cameraButton: UIButton = {
        let button = UIButton(type: .system)

        button.setTitle("Camera", for: .normal)
        button.tintColor = .white
        button.backgroundColor = UIColor(red: 254/255.0, green: 123/255.0, blue: 135/255.0, alpha: 1.0)

        button.addTarget(self, action: #selector(PhotoListController.presentImagePickerController), for: .touchUpInside)

        return button
    }()

    lazy var mediaPickerMananger: MediaPickerManager = {
        let manager = MediaPickerManager(presentingViewController: self)
        return manager
    }()

    // MARK: - Layout 
    override func viewWillLayoutSubviews() {
        view.addSubview(cameraButton)
        cameraButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            cameraButton.leftAnchor.constraint(equalTo: view.leftAnchor),
            cameraButton.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            cameraButton.rightAnchor.constraint(equalTo: view.rightAnchor),
            cameraButton.heightAnchor.constraint(equalToConstant: 56.0)
            ])
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // MARK: - Image Picker Controller
    @objc private func presentImagePickerController() {

        mediaPickerMananger.presentImagePickerController(animated: true)

    }


}

