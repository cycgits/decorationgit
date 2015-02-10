//
//  ViewController.m
//  TestImages
//
//  Created by caiyc on 15/2/2.
//  Copyright (c) 2015年 mingthink. All rights reserved.
//

#import "ViewController.h"
#import "PicUpload.h"
#import "PIc.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *images = [UIImage imageNamed:@"17.jpg"];
    UIImage *images1 = [UIImage imageNamed:@"back.png"];
    NSMutableArray *arr = [NSMutableArray array];
    NSMutableArray *arr1 = [NSMutableArray array];
    [arr addObject:images];
    [arr addObject:images1];
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    [dic setObject:@"110100" forKey:@"city"];
    [dic setObject:@"task" forKey:@"mod"];
    [PIc postRequestWithURL:@"http://app.wait-u.com/set_api.php" postParems:nil picFilePath:arr picFileName:arr1];
    
    NSData *datas = UIImageJPEGRepresentation(images, 0.01);
    UIImageView *image = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImage *imageee = [UIImage imageWithData:datas];
    image.image = imageee;
    [self.view addSubview:image];
//    PIc postRequestWithURL:<#(NSString *)#> postParems:<#(NSMutableDictionary *)#> picFilePath:<#(NSMutableArray *)#> picFileName:<#(NSMutableArray *)#>
    // Do any additional setup after loading the view, typically from a nib.
}
//-(void)loadimage
//{
//    NSData              *imageData;
//    NSMutableData       *postBody;
//    NSString            *stringBoundary, *contentType;
//    NSString *aurl = @"http://172.16.1.110:8888/httpUpload/Default.aspx";
//    NSURL *url = [NSURL URLWithString:aurl];  //将字符串转换为NSURL格式
//    
//    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
// //   NSString *documentsDirectory = [paths objectAtIndex:0];
//  //  NSString *path = [documentsDirectory stringByAppendingPathComponent:@"1.jpg"];
//    
//    imageData = [[NSData alloc] initWithContentsOfFile:path];
//    
//    ASIFormDataRequest *aRequest = [[ASIFormDataRequest alloc] initWithURL:url];
//    
//    stringBoundary = [NSString stringWithString:@"0xKhTmLbOuNdArY"];
//    
//    contentType    = [NSString stringWithFormat:@"multipart/form-data; boundary=%@", stringBoundary];
//    
//    [aRequest addRequestHeader:@"Content-Type" value:contentType];
//    
//    postBody = [[NSMutableData alloc] init];
//    
//    [postBody appendData:[[NSString stringWithFormat:@"\r\n\r\n--%@\r\n", stringBoundary] dataUsingEncoding:NSUTF8StringEncoding]];
//    
//    [postBody appendData:[[NSString stringWithString:@"Content-Disposition: form-data; name=\"title\"\r\n\r\n"] dataUsingEncoding:NSUTF8StringEncoding]];
//    
//    [postBody appendData:[[NSString stringWithString:@"lighttable"] dataUsingEncoding:NSUTF8StringEncoding]];  // So Light Table show up as source in Twitter post
//    
//    NSString *imageFileName = [NSString stringWithFormat:@"photo.jpeg"];
//    
//    [postBody appendData:[[NSString stringWithFormat:@"\r\n--%@\r\n", stringBoundary] dataUsingEncoding:NSUTF8StringEncoding]];
//    
//    [postBody appendData:[[NSString stringWithFormat:@"Content-Disposition: form-data; name=\"upload\"; filename=\"%@\"\r\n",imageFileName] dataUsingEncoding:NSUTF8StringEncoding]];
//    
//    [postBody appendData:[@"Content-Type: image/jpeg\r\n\r\n" dataUsingEncoding:NSUTF8StringEncoding]];
//    
//    [postBody appendData:imageData];
//    
//    [postBody appendData:[[NSString stringWithFormat:@"\r\n--%@\r\n", stringBoundary] dataUsingEncoding:NSUTF8StringEncoding]];
//    
//    [postBody appendData:[[NSString stringWithString:@"Content-Disposition: form-data; name=\"password\"\r\n\r\n"] dataUsingEncoding:NSUTF8StringEncoding]];
//    
//    [postBody appendData:[[NSString stringWithString:@"lighttablexxxxxxxx"] dataUsingEncoding:NSUTF8StringEncoding]];
//    
//    [postBody appendData:[[NSString stringWithFormat:@"\r\n--%@\r\n", stringBoundary] dataUsingEncoding:NSUTF8StringEncoding]];
//    
//    [aRequest setDelegate:self];
//    
//    [aRequest appendPostData:postBody];
//    
//    [aRequest setRequestMethod:@"POST"];
//    
//    [aRequest startAsynchronous];
//}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
