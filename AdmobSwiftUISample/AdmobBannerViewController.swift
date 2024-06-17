//
//  AdmobBannerViewController.swift
//  AdmobSwiftUISample
//
//  Created by Davidyoon on 6/17/24.
//

import UIKit
import GoogleMobileAds
import SnapKit

final class AdmobBannerViewController: UIViewController {
    
    private lazy var bannerView: GADBannerView = {
        let view = GADBannerView()
        
        view.adUnitID = ""
        view.delegate = self
        
        return view
    }()
    
    private lazy var containerView: UIView = {
        let view = UIView()
        [
            self.bannerView
        ]
            .forEach {
                view.addSubview($0)
            }
        
        self.bannerView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupViews()
        self.loadAD()
    }
    
}

extension AdmobBannerViewController: GADBannerViewDelegate {
    
    func bannerViewDidReceiveAd(_ bannerView: GADBannerView) {
      print("bannerViewDidReceiveAd")
    }

    func bannerView(_ bannerView: GADBannerView, didFailToReceiveAdWithError error: Error) {
      print("bannerView:didFailToReceiveAdWithError: \(error.localizedDescription)")
    }

    func bannerViewDidRecordImpression(_ bannerView: GADBannerView) {
      print("bannerViewDidRecordImpression")
    }

    func bannerViewWillPresentScreen(_ bannerView: GADBannerView) {
      print("bannerViewWillPresentScreen")
    }

    func bannerViewWillDismissScreen(_ bannerView: GADBannerView) {
      print("bannerViewWillDIsmissScreen")
    }

    func bannerViewDidDismissScreen(_ bannerView: GADBannerView) {
      print("bannerViewDidDismissScreen")
    }
    
}

private extension AdmobBannerViewController {
    
    func setupViews() {
        self.view.backgroundColor = .systemBackground
        
        self.view.addSubview(self.containerView)
        
        self.containerView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    
    func loadAD() {
        self.bannerView.rootViewController = self
        
        self.bannerView.load(GADRequest())
    }
    
}


#Preview {
    AdmobBannerViewController()
}
