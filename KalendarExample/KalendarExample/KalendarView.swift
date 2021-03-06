//
//  KalendarView.swift
//  KalendarExample
//
//  Created by Yudai.Hirose on 2017/07/28.
//  Copyright © 2017年 Yudai.Hirose. All rights reserved.
//

import UIKit

public class KalendarViewFlowLayout: UICollectionViewFlowLayout {
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
 
    public override init() {
        super.init()
    }
    
    public override func prepare() {
        scrollDirection = .horizontal
    }
}

public protocol KalendarViewDataSource: class {
    func headerView(for calendarView: KalendarView) -> UIView
    func footerView(for calendarView: KalendarView) -> UIView
}

public protocol KalendarViewHeader: class {
    var title: String { get set }
}

public protocol KalendarViewFooter: class {
    
}

public class KalendarView: UIView {
    fileprivate let collectionView = UICollectionView(frame: .zero, collectionViewLayout: KalendarViewFlowLayout())
    
    fileprivate var headerView: KalendarViewHeader?
    fileprivate var footerView: KalendarViewHeader?
    
    public func setup(for header: KalendarViewHeader) {
        
    }
    
    public weak var dataSource: KalendarViewDataSource? {
        didSet { setupHeaderFooterView() }
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    public override var intrinsicContentSize: CGSize {
        return CGSize(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height - 180)
    }
}

fileprivate extension KalendarView {
    func setupHeaderFooterView() {
        
    }
}


extension KalendarView: UICollectionViewDataSource {
    public func numberOfSections(in collectionView: UICollectionView) -> Int {
        fatalError()
    }
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        fatalError()
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        fatalError()
    }
}

extension KalendarView: UICollectionViewDelegateFlowLayout {
    public func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        fatalError()
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        fatalError()
    }
}
