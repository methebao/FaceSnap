//
//  mediaPickerManager.swift
//  FaceSnap
//
//  Created by The Bao on 1/25/17.
//  Copyright © 2017 The Bao. All rights reserved.
//

import UIKit
import MobileCoreServices

class MediaPickerManager: NSObject {

    private let imagePickerController = UIImagePickerController()
    private let presentingViewController: UIViewController

    init(presentingViewController: UIViewController) {
        self.presentingViewController = presentingViewController
        super.init()
        //imagePickerController.delegate = self
        if UIImagePickerController.isSourceTypeAvailable(.camera)   {
            imagePickerController.sourceType = .camera
            imagePickerController.cameraDevice = .front
        }else {
            imagePickerController.sourceType = .photoLibrary
        }
        imagePickerController.mediaTypes = [kUTTypeImage as String]
    }

    func presentImagePickerController(animated animated: Bool){
        presentingViewController.present(imagePickerController, animated: animated, completion: nil)
    }
    func dismissImagePikcerController(animated animated: Bool, completion: (()-> Void)){
        imagePickerController.dismiss(animated: animated, completion: nil)
    }
}
