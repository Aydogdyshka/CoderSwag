//
//  ViewController.swift
//  CoderSwag
//
//  Created by Aydogdy on 10/15/21.
//

import UIKit

class CategoryVC: UIViewController, UITableViewDataSource,
                  UITableViewDelegate {
 
    @IBOutlet weak var categoryTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell{
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            return cell
        }else{
            return CategoryCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        
        performSegue(withIdentifier: "ProductsVC", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        if let productsVC = segue.destination as? ProductsVC{
            
            let barbtn = UIBarButtonItem()
            barbtn.title = " "
            navigationItem.backBarButtonItem = barbtn
            
            assert(sender as? Category != nil)
            productsVC.initProducts(category: sender as! Category)
        }
        
       
        
    }


}

