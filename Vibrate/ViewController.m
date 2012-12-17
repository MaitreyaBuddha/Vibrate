//
//  ViewController.m
//  Vibrate
//
//  Created by Parti Albert on 2012.12.17..
//  Copyright (c) 2012 Parti Albert. All rights reserved.
//

#import "ViewController.h"
#import "AudioToolbox/AudioToolbox.h"

@interface ViewController ()

@end

@implementation ViewController



- (IBAction)Vibrate:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSDictionary *appDefaults = [NSDictionary dictionaryWithObject:@"YES" forKey:@"vibrationKey"];
    
    [defaults registerDefaults:appDefaults];
    
    [defaults synchronize];
    
    BOOL enabled = [defaults boolForKey:@"vibrationKey"];
    
    
    if (enabled) {
        
        
        AudioServicesPlayAlertSound(kSystemSoundID_Vibrate);
        
        
        
    } else {
        
        
    }
}

- (void)viewDidLoad
{
   
    [super viewDidLoad];
    
   
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
