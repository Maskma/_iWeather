//
//  ViewController.m
//  iWeather
//
//  Created by macbook on 9/21/15.
//  Copyright (c) 2015 Maskma. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

{

    int DateIndex;
    int LocationIndex;
    int TemType;
    
    NSArray *Dates;
    
    NSArray *Locations;
    
    NSArray *Weather;

    NSArray *Captions;
}

//***********************************************************************

- (void)viewDidLoad {
    [super viewDidLoad];
    
    DateIndex = 0;
    LocationIndex = 0;
    TemType = 0;
    
    Dates = @[@"Monday, Sep 21th, 2015",
              @"Tuesday, Sep 22th, 2015",
              @"Wednesday, Sep 23th, 2015",
              @"Thurday, Sep 24th, 2015",
              @"Friday, Sep 25th, 2015",
              @"Saturday, Sep 26th, 2015",
              @"Sunday, Sep 27th, 2015"
             ];
    
    Locations = @[@"Ha Noi, Viet Nam",
                  @"Sai Gon, Viet Nam",
                  @"Hue, Viet Nam",
                  @"Da Nang, Viet Nam"
                 ];
    
    Weather = @[@"Sunny",
                @"Cloudy",
                @"Lightning",
                @"Rainy",
                @"Rainy",
                @"Cloudy",
                @"Sunny"
               ];
    
    Captions = @[@"Today is Sunny day. The Sun shine is so beautiful!",
                 @"Cloudy Day. Let go to the park with your friend!",
                 @"Oh! Lightning. Are you scared it?",
                 @"It's Rainning. Don't go out, you'll get wet!",
                 @"It's Rainning. Don't go out, you'll get wet!",
                 @"Cloudy Day. Let go to the park with your friend!",
                 @"Today is Sunny day. The Sun shine is so beautiful!",
                ];
    
}

//*************************************************************************

- (IBAction)NavigateButton:(id)sender {
    
    if (LocationIndex == 3) LocationIndex = 0;
        else LocationIndex += 1;
    
    self.Location.text = Locations[LocationIndex];
    
}

- (IBAction)NextDayButton:(id)sender {
    
    if (DateIndex == 6) DateIndex = 0;
        else DateIndex += 1;
    
    self.Date.text = Dates[DateIndex];
    
    self.WeatherImage.image = [UIImage imageNamed: Weather[DateIndex]];
    self.WeatherName.text = Weather[DateIndex];
    
    self.Caption.text = Captions[DateIndex];
    
    [self RandomTem];
    
}

- (IBAction)PreviousDayButton:(id)sender {
    
    if (DateIndex == 0) DateIndex = 6;
        else DateIndex -= 1;
    
    self.Date.text = Dates[DateIndex];
    
    self.WeatherImage.image = [UIImage imageNamed: Weather[DateIndex]];
    self.WeatherName.text = Weather[DateIndex];
    
    self.Caption.text = Captions[DateIndex];
    
    [self RandomTem];

}

- (IBAction)TemperatureButton:(id)sender {
    
    if (TemType == 0) {
        
        TemType = 1;
        self.TemperatureType.text = @"F";
    
    } else {
        
        TemType = 0;
        self.TemperatureType.text = @"C";
        
    }
    
    [self RandomTem];
}

//*************************************************************************

- (float) getTemperature {
    
    return 15.0 + arc4random_uniform(20) + (float)arc4random() /(float) INT32_MAX;

}

- (void) RandomTem {
    
    NSString* string = [NSString stringWithFormat:@"%2.1f", [self getTemperature]];
    [self.Temperature setTitle:string forState:UIControlStateNormal];
    
}

@end
