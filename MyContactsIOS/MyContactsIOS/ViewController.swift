//
//  ViewController.swift
//  MyContactsIOS
//
//  Created by Richard Dizerega on 1/22/16.
//  Copyright © 2016 richdizz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    let AUTHORITY:String = "https://login.microsoftonline.com/common"
    let GRAPH_RESOURCE:String = "https://graph.microsoft.com/"
    let CLIENT_ID:String = "8edd5ea4-69a7-4f65-a0db-cb77f7317db4"
    let REDIRECT:NSURL = NSURL(string: "http://localhost:8000")!
    var contacts:Array<MSGraphServiceContact> = Array<MSGraphServiceContact>()

    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
        
        // Setup the authentication context with Azure AD
        var er:ADAuthenticationError? = nil
        let authContext:ADAuthenticationContext = ADAuthenticationContext(authority: AUTHORITY, error: &er)
        
        authContext.acquireTokenWithResource(GRAPH_RESOURCE, clientId: CLIENT_ID, redirectUri: REDIRECT, completionBlock: { (result: ADAuthenticationResult!) in
            // Validate token exists in response
            if (result.accessToken == nil) {
                print("token nil")
            }
            else {
                // Use the token to call service
                let resolver:ADALDependencyResolver = ADALDependencyResolver(context: authContext, resourceId: self.GRAPH_RESOURCE, clientId: self.CLIENT_ID, redirectUri: self.REDIRECT)
                let client:MSGraphServiceClient = MSGraphServiceClient(url: self.GRAPH_RESOURCE + "v1.0", dependencyResolver: resolver)
                client.me.contacts.readWithCallback({(list: Array<AnyObject>!, error: NSError!) -> Void in
                    self.contacts = (list as! Array<MSGraphServiceContact>)
                    self.myTableView.reloadData()
                })
                
            }
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return contacts.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell:UITableViewCell = myTableView.dequeueReusableCellWithIdentifier("dataCell", forIndexPath: indexPath)
        
        //TODO: set text cell detail
        let contact = contacts[indexPath.row]
        cell.textLabel?.text = contact.displayName
        cell.detailTextLabel!.text = contact.emailAddresses[0].address
        
        return cell;
    }

}

