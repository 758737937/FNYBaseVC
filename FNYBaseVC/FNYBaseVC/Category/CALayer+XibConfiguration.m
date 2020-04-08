//
//  CALayer+XibConfiguration.m
//  Fny
//
//  Created by fny on 2019/10/31.
//  Copyright © 2019 FNYBaseVC Co. Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CALayer+XibConfiguration.h"

@implementation CALayer (XibConfiguration)

-(void)setBorderUIColor:(UIColor*)color{
    self.borderColor = color.CGColor;
    
}
-(UIColor*)borderUIColor{
    return [UIColor colorWithCGColor:self.borderColor];
    
}


@end
