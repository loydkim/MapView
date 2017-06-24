//
//  ViewController.m
//  MapView_Loyd
//
//  Created by YOUNGSIC KIM on 2017-06-24.
//  Copyright © 2017 YOUNGSIC KIM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet MKMapView *map_main;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Set MapView Location
    CLLocationCoordinate2D coord = {.latitude = 49.894107, .longitude = -97.138545};
    MKCoordinateSpan span = {.latitudeDelta = 0.050f, .longitudeDelta = 0.050f};
    MKCoordinateRegion region = {coord, span};
    [_map_main setRegion:region];
    
    //set pin
    MKPointAnnotation *annotation = [[MKPointAnnotation alloc]init];
    CLLocationCoordinate2D coordforpin = {.latitude = 49.894107, .longitude = -97.138545};
    [annotation setCoordinate:coordforpin];
    [annotation setTitle:@"Pin is here"];
    [_map_main addAnnotation:annotation];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
