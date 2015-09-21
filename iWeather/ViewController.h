//
//  ViewController.h
//  iWeather
//
//  Created by macbook on 9/21/15.
//  Copyright (c) 2015 Maskma. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *Location;

@property (weak, nonatomic) IBOutlet UILabel *Date;

@property (weak, nonatomic) IBOutlet UIImageView *WeatherImage;

@property (weak, nonatomic) IBOutlet UILabel *WeatherName;

@property (weak, nonatomic) IBOutlet UILabel *TemperatureType;

@property (weak, nonatomic) IBOutlet UILabel *Caption;

@property (weak, nonatomic) IBOutlet UIButton *Temperature;

- (IBAction)NavigateButton:(id)sender;

- (IBAction)NextDayButton:(id)sender;

- (IBAction)PreviousDayButton:(id)sender;

- (IBAction)TemperatureButton:(id)sender;

- (float) getTemperature;

- (void) RandomTem;

@end

