//
//  GalleryPhotoView.m
//  MogoRenter
//
//  Created by Harly on 15/10/28.
//  Copyright © 2015年 MogoRoom. All rights reserved.
//

#import "GalleryPhotoView.h"
#import "SDWebImageManager.h"

@implementation GalleryPhotoView

- (void)setUrlStr:(NSString *)urlStr {
    if (![urlStr isEqualToString:_urlStr]) {
        _urlStr = urlStr;
        NSURL *url = [NSURL URLWithString:urlStr];
        [[SDWebImageManager sharedManager] downloadImageWithURL:url options:SDWebImageLowPriority progress:nil completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, BOOL finished, NSURL *imageURL) {
            if (!error && image) {
                self.image = image;
                if (_resultCallback) {

                    self.resultCallback(image);
                }
            }
        }];
    }
}

@end
