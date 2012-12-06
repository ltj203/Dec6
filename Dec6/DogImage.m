//
//  DogImage.m
//  Dec6
//
//  Created by Lisa Jenkins on 12/6/12.
//  Copyright (c) 2012 Lisa Jenkins. All rights reserved.
//

#import "DogImage.h"

@implementation DogImage

- (id)initWithView: (View *) v
{
    UIImage *image = [UIImage imageNamed:@"sitting.jpg"];
    if (image == nil) {
        NSLog(@"could not find the image file");
    }
    
    self = [super initWithImage:image];
    if (self) {
        // Initialization code
        self.userInteractionEnabled = YES;
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
