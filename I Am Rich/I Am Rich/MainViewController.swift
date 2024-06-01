//
//  MainViewController.swift
//  I Am Rich
//
//  Created by Sergey Zakurakin on 21/05/2024.
//

import UIKit

final class MainViewController: UIViewController {
    
    let imageDiamond: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "diamond")
        imageView.contentMode = .scaleAspectFit
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let imRichLabel: UILabel = {
        let imRich = UILabel()
        imRich.text = """
        Hello!
        Im Rich
        """
        imRich.textColor = .white
        imRich.textAlignment = .center
        imRich.font = .systemFont(ofSize: 30)
        imRich.numberOfLines = 0
        
        imRich.translatesAutoresizingMaskIntoConstraints = false
        return imRich
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(imageDiamond)
        view.addSubview(imRichLabel)
        view.backgroundColor = .purple
        
        updateUI()
    }
    
    func updateUI() {
        imageDiamond.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50).isActive = true
        imageDiamond.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60).isActive = true
        imageDiamond.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60).isActive = true
        
        
        imRichLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60).isActive = true
        imRichLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 60).isActive = true
        imRichLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -60).isActive = true
    }
}

