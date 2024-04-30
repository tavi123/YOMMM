//
//  SplashView.swift
//  YOMMA
//
//  Created by 전창평 on 5/1/24.
//

import Foundation
import UIKit
import Then
import SnapKit

class SplashView: UIViewController {
    
    let splashIv = UIImageView().then({
        $0.image = .splashImg
    })
 
    override func viewDidLoad() {
        super.viewDidLoad()
        splashSet()
    }
    
    private func splashSet() {
        Log.logDebugDefault("기본 로그 테스트")
        view.addSubview(splashIv)
        splashIv.snp.makeConstraints({
            $0.edges.equalTo(view.snp.edges)
        })
    }
    private func dismissAnimate() {
        UIImageView.animate(withDuration: 0.2, delay: 2,
                            animations: {
            self.splashIv.backgroundColor = .white
        }, completion: { _ in
            let vc = HomeView()
            self.navigationController?.pushViewController(vc, animated: false)
        })
    }
    
    override func viewDidAppear(_ animated: Bool) {
        dismissAnimate()
    }
}
