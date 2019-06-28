//
//  KaijuProfileViewController.swift
//  KaijuProject
//
//  Created by Rubens Paulico on 18/06/19.
//  Copyright © 2019 Rubens Paulico. All rights reserved.
//

import UIKit

class KaijuMonstersViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 110, height: 150)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Model.instance.kaijuMonsters.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "kaijuProfile", for: indexPath) as! KaijuProfileCollectionViewCell
        
        let kaijuInfo = Model.instance.kaijuMonsters[indexPath.row]
        
        cell.kaijuImage.image = kaijuInfo.picture
        cell.kaijuName.image = kaijuInfo.kaijuButtonName
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if let vc = storyboard?.instantiateViewController(withIdentifier: "kaijuProfile") as? KaijuProfileTableViewController {
            
            vc.selectedKaijuIndex = indexPath.row
            
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @IBOutlet weak var kaijuCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        kaijuCollectionView.dataSource = self
        
        kaijuCollectionView.delegate = self
    }


        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



