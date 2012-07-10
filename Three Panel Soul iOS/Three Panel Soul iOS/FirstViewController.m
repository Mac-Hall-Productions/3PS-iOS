//
//  FirstViewController.m
//  Three Panel Soul iOS
//
//  Created by Matthew Boyd on 7/3/12.
//  Copyright (c) 2012 Mac Hall Productions L.L.C. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

@synthesize imageView = _imageView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSURL* comicURL = [NSURL URLWithString:@"http://threepanelsoul.com/comics/2012-07-04-239.png"];
    NSData* comicImageData = [NSData dataWithContentsOfURL:comicURL];
    UIImage* comicImage = [UIImage imageWithData:comicImageData];
    [_imageView setImage:comicImage];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
