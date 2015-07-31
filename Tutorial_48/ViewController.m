//
//  ViewController.m
//  Tutorial_48
//
//  Created by Admin on 30.07.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "ViewController.h"
@import GoogleMaps;
#import <GoogleMaps/GoogleMaps.h>
#import <UIKit/UIKit.h>


@interface ViewController ()

@end

@implementation ViewController {
    GMSMapView *mapView_;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Create a GMSCameraPosition that tells the map to display the
    // coordinate -33.86,151.20 at zoom level 6.
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:-33.86
                                                            longitude:151.20
                                                                 zoom:6];
    mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    mapView_.myLocationEnabled = YES;
    self.view = mapView_;
    
    // Creates a marker in the center of the map.
    GMSMarker *marker = [[GMSMarker alloc] init];
    marker.position = CLLocationCoordinate2DMake(-33.86, 151.20);
    marker.title = @"Sydney";
    marker.snippet = @"Australia";
    marker.map = mapView_;
    mapView_.settings.myLocationButton = YES;
    marker.icon = [GMSMarker markerImageWithColor:[UIColor greenColor]];
    marker.opacity = 0.6;
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
