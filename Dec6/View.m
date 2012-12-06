//
//  View.m
//  Dec6
//
//  Created by Lisa Jenkins on 12/6/12.
//  Copyright (c) 2012 Lisa Jenkins. All rights reserved.
//

#import "View.h"
#import "Dec6ViewController.h"
#import "DogImage.h"

@implementation View

- (id)initWithFrame:(CGRect)frame controller:(Dec6ViewController *)c
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor whiteColor];
        viewController = c;
        
        textView = [[UITextView alloc] initWithFrame:self.bounds];
        textView.editable = NO;
        
        textView.font = [UIFont fontWithName:@"Courier" size:25];
    
        [self addSubview:textView];
        
        dogImage = [[DogImage alloc] initWithView: self];
        dogImage.center = CGPointMake(self.bounds.origin.x + self.bounds.size.width - dogImage.bounds.size.width,
                                      self.bounds.origin.y + self.bounds.size.height - dogImage.bounds.size.height * 1.1);
        [self addSubview:dogImage];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    NSArray *a = [NSArray arrayWithObjects:
                  [UIImage imageNamed:@"sitting.jpg"],
                  [UIImage imageNamed:@"sitting.jpg"],
                  [UIImage imageNamed:@"on_back.jpg"],
                  [UIImage imageNamed:@"shake_left.jpg"],
                  [UIImage imageNamed:@"shake_right.jpg"],
                  nil];
    NSArray *b = [NSArray arrayWithObjects:
                  @"Unknown",
                  @"Sit!",
                  @"Roll Over!",
                  @"Shake Left!",
                  @"Shake Right!",
                  nil];
    
    textView.text = [NSString stringWithFormat:@"%@", [b objectAtIndex: viewController.interfaceOrientation]];
    
    dogImage.image = [a objectAtIndex:viewController.interfaceOrientation];
}


@end
