//
//  FNYBaseWebViewController.h
//  Fny
//
//  Created by fny on 2019/10/31.
//  Copyright © 2019 FNYBaseVC Co. Ltd. All rights reserved.
//

#import "FNYBaseViewController.h"
#import <WebKit/WebKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FNYBaseWebViewController : FNYBaseViewController<WKUIDelegate,WKNavigationDelegate>

@property (nonatomic,strong)WKWebView *webView;
@property (weak, nonatomic) CALayer *progresslayer;
@end

NS_ASSUME_NONNULL_END
