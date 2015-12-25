//
//  HPControlXibDesignableObjC.m
//  Pods
//
//  Created by Huy Pham on 12/25/15.
//
//

#import "HPControlXibDesignableObjC.h"

IB_DESIGNABLE
@implementation HPControlXibDesignableObjC

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setupXib];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        [self setupXib];
    }
    return self;
}

- (void)setupXib {
    UIView *view = [self loadXib];
    [self addSubview:view];
    [view setTranslatesAutoresizingMaskIntoConstraints:false];
    
    NSDictionary *bindings = [[NSDictionary alloc] initWithObjectsAndKeys:view, @"view", nil];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[view]|" options:NSLayoutFormatDirectionLeadingToTrailing metrics:nil views:bindings]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[view]|" options:NSLayoutFormatDirectionLeadingToTrailing metrics:nil views:bindings]];
}

- (UIView *)loadXib {
    NSBundle *bundle = [NSBundle bundleForClass:self.class];
    UINib *xib = [UINib nibWithNibName:[self xibName] bundle:bundle];
    return [xib instantiateWithOwner:self options:nil][0];
}

- (NSString *)xibName {
    NSArray *components = [NSStringFromClass(self.class) componentsSeparatedByString:@"."];
    return components[components.count - 1];
}

@end
