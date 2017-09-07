//
//  GalleryPhotoView.m
//  MogoRenter
//
//  Created by Harly on 15/10/28.
//  Copyright © 2015年 MogoRoom. All rights reserved.
//

#import "GalleryPhoto.h"
#import "SDWebImageManager.h"

@implementation GalleryPhoto

- (void)setUrlStr:(NSString *)urlStr {
    if (![urlStr isEqualToString:_urlStr]) {
        _urlStr = urlStr;
        NSURL *url = [NSURL URLWithString:urlStr];
        [[SDWebImageManager sharedManager].imageDownloader downloadImageWithURL:url options:SDWebImageDownloaderLowPriority progress:nil completed:^(UIImage * _Nullable image, NSData * _Nullable data, NSError * _Nullable error, BOOL finished) {
            if (!error && image) {
                self.image = image;
            }
        }];
    }
}

@end
