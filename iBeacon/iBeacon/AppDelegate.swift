//
//  AppDelegate.swift
//  iBeacon
//
//  Created by Douglas MacbookPro on 5/25/17.
//  Copyright © 2017 Douglas MacbookPro. All rights reserved.
//

import UIKit
import CoreLocation

var beaconIDString = "No beacons"

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, CLLocationManagerDelegate {

    var window: UIWindow?

    var locationManager: CLLocationManager?
    var lastProximity: CLProximity?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        // Start ---------- iBeacon ----------
        let uuidString = "2F234454-CF6D-4A0F-ADF2-F4911BA9FFA6"
        let beaconRegionIdentifier = "CalmStop"
        let beaconUUID: NSUUID = NSUUID(uuidString: uuidString)!
        
        let beaconRegion: CLBeaconRegion = CLBeaconRegion(proximityUUID: beaconUUID as UUID, identifier: beaconRegionIdentifier)
        
        locationManager = CLLocationManager()
        
        if(locationManager!.responds(to: "requestAlwaysAuthorization")){
            locationManager!.requestAlwaysAuthorization()
        }
        
        
        locationManager!.delegate = self
        locationManager!.pausesLocationUpdatesAutomatically = false
        
        locationManager!.startMonitoring(for: beaconRegion)
        
        // Start monitoring in case we have a beacon in our region
        locationManager!.startRangingBeacons(in: beaconRegion)
        locationManager!.startUpdatingLocation()
        
        UIApplication.shared.registerUserNotificationSettings(
            UIUserNotificationSettings(types: [.alert, .sound, .badge], categories: nil))

        
        // End ---------- iBeacon ----------
        
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    func locationManager(_ manager: CLLocationManager, didEnterRegion region: CLRegion) {
        
        manager.startRangingBeacons(in: region as! CLBeaconRegion)
        manager.startUpdatingLocation()
        
        print("You entered the region")
        
        let notification = UILocalNotification()
        notification.alertBody = "An Officer is pulling you over, please open CalmStop to reply!"
        notification.soundName = UILocalNotificationDefaultSoundName
        UIApplication.shared.presentLocalNotificationNow(notification)
        
    }
    
    func locationManager(_ manager: CLLocationManager, didExitRegion region: CLRegion) {
        manager.stopRangingBeacons(in: region as! CLBeaconRegion)
        manager.stopUpdatingLocation()
        
        print("You exited the region")
        beaconIDString = "No Beacons"
    }
    
    
    func locationManager(_ manager: CLLocationManager, didRangeBeacons beacons: [CLBeacon], in region: CLBeaconRegion) {
        print("DidRangeBeacon: ", beacons.count)
        
        if beacons.count > 0 {
            beaconIDString = beacons[0].major.stringValue
            print(beaconIDString)
        }
    }



}

