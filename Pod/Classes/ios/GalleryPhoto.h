//
//  GalleryPhotoView.h
//  MogoRenter
//
//  Created by Harly on 15/10/28.
//  Copyright © 2015年 MogoRoom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NYTPhoto.h"

@interface GalleryPhoto : NSObject<NYTPhoto>

// Redeclare all the properties as readwrite for sample/testing purposes.
@property (nonatomic,strong) UIImage *image;
@property (nonatomic,strong) UIImage *placeholderImage;
@property (nonatomic,strong) NSAttributedString *attributedCaptionTitle;
@property (nonatomic,strong) NSAttributedString *attributedCaptionSummary;
@property (nonatomic,strong) NSAttributedString *attributedCaptionCredit;
//@property (nonatomic,assign) NSInteger  index;

@property (nonatomic, copy) NSString *urlStr;

@end
