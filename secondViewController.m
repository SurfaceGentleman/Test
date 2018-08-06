//
//  secondViewController.m
//  UINavgation+UItabBarController
//
//  Created by 开朗的男子 on 2018/8/6.
//  Copyright © 2018年 开朗的男子. All rights reserved.
//

#import "secondViewController.h"

@interface secondViewController ()

@end

@implementation secondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStyleGrouped];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.backgroundColor = [UIColor colorWithRed:0.97 green:0.97 blue:0.97 alpha:1.00];
    [self.view addSubview:_tableView];
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 11;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        return 285;
    }
    else {
        if (indexPath.section % 2 == 1) {
            return 500;
        }
        else {
            return 100;
        }
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell1 = [tableView dequeueReusableCellWithIdentifier:@"ID1"];
    UITableViewCell * cell2 = [tableView dequeueReusableCellWithIdentifier:@"ID2"];
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"ID"];
    //头
    if (indexPath.section == 0) {
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ID"];
            //背景图
            UIImageView * imageViewBack = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"b1.jpg"]];
            imageViewBack.frame = CGRectMake(0, 0, self.view.frame.size.width, 250);
            [cell.contentView addSubview:imageViewBack];
            //头像
            UIImageView * headImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"7.JPG"]];
            headImageView.frame = CGRectMake(self.view.frame.size.width - 80, 250 - 40, 60, 60);
            [imageViewBack addSubview:headImageView];
            UILabel * lbname = [[UILabel alloc] initWithFrame:CGRectMake(self.view.frame.size.width - 185, 215, 100, 20)];
            lbname.text = @"开朗的男子";
            lbname.textColor = [UIColor whiteColor];
            [imageViewBack addSubview:lbname];
        }
        return cell;
    }
    else if (indexPath.section % 2 == 1) {
        if (cell1 == nil) {
            cell1 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ID1"];
            //头像
            UIImageView * headImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"7.JPG"]];
            headImageView.frame = CGRectMake(10, 15, 55, 55);
            headImageView.image = [UIImage imageNamed:@"7.JPG"];
            [cell1.contentView addSubview:headImageView];
            //昵称
            UILabel * name = [[UILabel alloc] initWithFrame:CGRectMake(85, 20, 60, 20)];
            name.text = @"马哥";
            name.textColor = [UIColor colorWithRed:0.38 green:0.36 blue:0.60 alpha:1.00];
            [cell1.contentView addSubview:name];
            //内容
            UILabel * word1 = [[UILabel alloc] initWithFrame:CGRectMake(85, 40, 280, 30)];
            word1.text = @"\"好漂亮的房子\"";
            UILabel * word2 = [[UILabel alloc] initWithFrame:CGRectMake(85, 65, 280, 30)];
            word2.text = @"\"是啊！\"";
            [cell1.contentView addSubview:word1];
            [cell1.contentView addSubview:word2];
            //图片
            UIImageView * imageView = [[UIImageView alloc] initWithFrame:CGRectMake(85, 95, 280, 180)];
            imageView.image = [UIImage imageNamed:@"c1.jpg"];
            [cell1.contentView addSubview:imageView];
            //地点
            UILabel * place = [[UILabel alloc] initWithFrame:CGRectMake(85, 290, 180, 20)];
            place.text = @"西安邮电大学长安校区";
            place.textColor = [UIColor colorWithRed:0.38 green:0.36 blue:0.60 alpha:1.00];
            place.font = [UIFont systemFontOfSize:15];
            [cell1.contentView addSubview:place];
            //日期
            UILabel * time = [[UILabel alloc] initWithFrame:CGRectMake(85, 310, 40, 20)];
            time.font = [UIFont systemFontOfSize:15];
            time.textColor = [UIColor colorWithRed:0.59 green:0.59 blue:0.60 alpha:1.00];
            time.text = @"昨天";
            [cell1.contentView addSubview:time];
            //点赞
            UIView * viewPraise = [[UIView alloc] initWithFrame:CGRectMake(85, 340, self.view.frame.size.width - 100, 35)];
            viewPraise.backgroundColor = [UIColor colorWithRed:0.93 green:0.93 blue:0.93 alpha:1.00];
            [cell1.contentView addSubview:viewPraise];
            //点赞的人
            //UITextView * textViewPraiseFriend = [UITextView alloc] initWithFrame:<#(CGRect)#> textContainer:<#(nullable NSTextContainer *)#>
        }
        return cell1;
    }
    else{
        //if (indexPath.section != 0 && indexPath.row == 0) {
        if (cell2 == nil) {
            cell2 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ID2"];
            //头像
            UIImageView * headImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"7.JPG"]];
            headImageView.frame = CGRectMake(15, 15, 60, 60);
            headImageView.image = [UIImage imageNamed:@" "];
            [cell2.contentView addSubview:headImageView];
            //昵称
            UILabel * name = [[UILabel alloc] initWithFrame:CGRectMake(95, 20, 60, 20)];
            name.text = @"马哥";
            name.textColor = [UIColor colorWithRed:0.38 green:0.36 blue:0.60 alpha:1.00];
            [cell2.contentView addSubview:name];
            //内容
            UILabel * word1 = [[UILabel alloc] initWithFrame:CGRectMake(95, 35, 280, 30)];
            word1.text = @"那个人样子好怪";
            UILabel * word2 = [[UILabel alloc] initWithFrame:CGRectMake(95, 55, 280, 30)];
            word2.text = @"我也看到了，他好像一条狗啊！";
            [cell2.contentView addSubview:word1];
            [cell2.contentView addSubview:word2];
        }
        return cell2;
    }
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 0.1;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 10;
}

@end
