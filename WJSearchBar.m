//
//  WJSearchBar.m
//  weibo
//
//  Created by apple on 2017/6/24.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "WJSearchBar.h"
#import "UIImage+WJExtension.h"
#import "UIView+Extension.h"

@implementation WJSearchBar


-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        //设置背景
        self.background = [UIImage resizedImage:@"searchbar_textfield_background"];
        
        //设置内容-垂直居中
        self.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
        
        //设置左边放一个放大镜
        UIImageView *leftView = [[UIImageView alloc] init];
        leftView.image = [UIImage imageWithName:@"searchbar_textfield_search_icon"];
        leftView.width = leftView.image.size.width + 10;
//        leftView.height = leftView.image.size.height;
        leftView.height = leftView.image.size.height;
        //设置左边的view的内容居中
        leftView.contentMode = UIViewContentModeCenter;
        
        self.leftView = leftView;
        
        //设置左边的view永远显示
        self.leftViewMode = UITextFieldViewModeAlways;
        
        //设置右边永远显示清除按钮
        self.clearButtonMode = UITextFieldViewModeAlways;
        
 
    }
    return self;

}
+(instancetype)searchBar
{
    return [[self alloc] init];

}

@end
