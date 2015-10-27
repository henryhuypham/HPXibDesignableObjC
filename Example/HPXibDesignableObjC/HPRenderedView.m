//
//  HPRenderedView.m
//  XibDesignable-ObjC
//
//  Created by Huy Pham on 09/14/15.
//  Copyright (c) 2015 Huy Pham. All rights reserved.
//

#import "HPRenderedView.h"

IB_DESIGNABLE
@implementation HPRenderedView

- (void)setContent:(NSString *)content {
    _content = content;
    self.contentLabel.text = content;
}

- (void)setContentVisible:(BOOL)contentVisible {
    _contentVisible = contentVisible;
    self.contentLabel.hidden = !contentVisible;
}

@end
