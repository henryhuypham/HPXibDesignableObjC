//
//  HPRenderedView.h
//  XibDesignable-ObjC
//
//  Created by Huy Pham on 09/14/15.
//  Copyright (c) 2015 Huy Pham. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HPXibDesignableObjC.h"

@interface HPRenderedView : HPXibDesignableObjC

@property (weak, nonatomic) IBOutlet UILabel            *contentLabel;

@property (nonatomic, assign) IBInspectable NSString    *content;
@property (nonatomic, assign) IBInspectable BOOL        contentVisible;

@end
