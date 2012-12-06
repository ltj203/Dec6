//
//  View.h
//  Dec6
//
//  Created by Lisa Jenkins on 12/6/12.
//  Copyright (c) 2012 Lisa Jenkins. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Dec6ViewController;
@class DogImage;

@interface View : UIView {
    Dec6ViewController *viewController;
    UITextView *textView;
    DogImage *dogImage;
}

-(id) initWithFrame:(CGRect)frame controller: (Dec6ViewController *) c;

@end
