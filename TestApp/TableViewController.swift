//
//  TableViewController.swift
//  TestApp
//
//  Created by epita on 28/03/2018.
//  Copyright © 2018 NOTNULL. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    @IBOutlet var tableBiew: UITableView!
    
    var mapArray = [Maps]()
    var images = [UIImage(named:"1"), UIImage(named:"2"), UIImage(named:"3"), UIImage(named:"4"),UIImage(named:"5"), UIImage(named:"6"), UIImage(named:"7"), UIImage(named:"8"), UIImage(named:"9"), UIImage(named:"10")]
    
    var clickedIndex : IndexPath?
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let map1 = Maps(mapname: "Dust 2 ", rank: "Rank: 1", type:"Type: DE", description: "An evergreen map! One can never get bored of playing this map, no matter how many times he wins or loses! This is a map where the ‘Terrorists’ go head to head with the ‘Counter Terrorists’ in an attempt to destroy the sandstone structure in the map with a little help from their deadly C4. ", image:"1")
        
        let map2 = Maps(mapname: "Inferno", rank: "Rank: 2", type:"Type: DE", description: "Houses! houses and more houses! This is the only way to describe this map! Both ‘Terrorists’ and ‘Counter Terrorists’ both spawn in an opening between, well, houses! The map has two bomb sites and a lot of hiding places. A good team can use the innumerable number of approach ways to take down the opponent team. ", image: "2")
        
        let map3 = Maps(mapname: "Dima 2", rank: "Rank: 3", type:"Type: AA", description: "A small but highly entertaining map. This map takes care of all the bugs and glitches that were encountered in the original ‘dima’. What more, it even has an elevated coloumn for the ‘Counter Terrorists’. Now they will be at equal levels when facing the ‘Terrorists’, literally speaking! ", image: "3")
        
        let map4 = Maps(mapname: "Nuke", rank: "Rank: 4", type:"Type: DE", description: "In this case, you may judge the book by its cover. The map is indeed a big nuclear reactor where the ‘Terrorists’ try to blow the reactor up. Naturally we have the ‘Counter Terrorists’ trying to protect it. The map is a rather difficult to play in as there are places in the map that are very well lit but there are places that are rather dark and scary!", image: "4")
        
        let map5 = Maps(mapname: "Minidust 2", rank: "Rank: 5", type:"Type: DE", description: "Counter Strike fans loved the map, ‘Dust 2’ so much that they decided to make a smaller version of the map where they could enjoy the dusty look even with a small number of players. Minidust 2 was the map that was created in the process. It boasts a single bombsite and it is a map loved by many gamers. ", image: "5")
        
        let map6 = Maps(mapname: "awp_india", rank: "Rank: 6", type:"Type: AWP", description: "‘Awp’, the term suggests that this map is meant for sniping only. A brilliant map where you can put your sniping skills to a test. One can hide behind blocks to protect themselves but beware, the bullets penetrate the blocks too! We have an elevated spot in between the map where you can see all around and shoot anyone within sight.", image: "6")
        
        let map7 = Maps(mapname: "Train", rank: "Rank: 7", type:"Type: DE", description: "A very confusing map for a first time player, to say the least. The map consists of a train yard with trains everywhere (that is the part where confusing comes in) and as usual the ‘Terrorists’ are up to no good with their C4. This time they decide to destroy all the trains in the vicinity! ", image:"7")
        
        let map8 = Maps(mapname: "Aztec ", rank: "Rank: 8", type:"Type: DE", description: "This map is a virtual remake of a central American archaeological site. The ‘Counter Terrorists’ spawn in the middle of an Aztec burial ground and one can see the skeletons of the ancient people who were buried there. To add on to the scary atmosphere we have incessant rain! Now going back to the game, the main objective of the ‘Terrorists’ is to blow up the entire archaeological site!", image:"8")
        
        let map9 = Maps(mapname: "Dima", rank: "Rank: 9", type:"Type: ZZ", description: "Dima can be considered as the original clan war map. Starting from sub machine guns to sniper rifles, this map has a weapon for every player! Grenades can be used to bring in an explosive edge to the game and exterminate a group on opponents within a fraction of a second. The ‘Terrorists’ have a structure on their spawn side that allows them to have an aerial view of the entire map.", image:"9")
        
        let map10 = Maps(mapname: "Headshot", rank: "Rank: 10", type:"Type: aim", description: "As the name suggests, this meant for blowing your opponent’s head off! Players are allowed to choose between the Maverick M4A1 and CV-47. For those brave hearts who dare to run into open grounds, the map gives them a chance to equip themselves with Kevlar and a sub machine gun located between the two spawn zones.",image:"10")
        
        
        mapArray.append(map1);
        mapArray.append(map2);
        mapArray.append(map3);
        mapArray.append(map4);
        mapArray.append(map5);
        mapArray.append(map6);
        mapArray.append(map7);
        mapArray.append(map8);
        mapArray.append(map9);
        mapArray.append(map10);
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return (mapArray.count)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        
        //Cell: Map Name
        cell.LName.text = mapArray[indexPath.row].mapname
        //Cell: Rank
        cell.LRank.text = mapArray[indexPath.row].rank
        //Cell: Type of map
        cell.LType.text = mapArray[indexPath.row].type
        //Cell: Image
        cell.cellImage.image = images[indexPath.row]
        
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        clickedIndex = indexPath
        self.performSegue(withIdentifier: "link", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let newVC =  segue.destination as! SecondViewController
        newVC.instance=mapArray[(clickedIndex?.row)!]
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    / In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
