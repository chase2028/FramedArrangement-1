//
//  ViewController.m
//  FramedArrangement
//
//  Created by sombra on 2015-01-27.
//  Copyright (c) 2015 sombra. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) UIView *redView;
@property (strong, nonatomic) UIView *blueView;
@property (strong, nonatomic) UIView *greenView;
@property (strong, nonatomic) UIView *yellowView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Add redView
    self.redView = [UIView new];
    self.redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.redView];
    
    // Add blueView
    self.blueView = [UIView new];
    self.blueView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:self.blueView];
    
    // Add greenView
    self.greenView = [UIView new];
    self.greenView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:self.greenView];
    
    // Add yellowView
    self.yellowView = [UIView new];
    self.yellowView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:self.yellowView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (int)layoutSquares {
    CGRect frame = [UIScreen mainScreen].bounds;
    CGRect part1;
    CGRect part2;
    CGRect frame1;
    CGRect frame2;
    CGRect frame3;
    CGRect frame4;
    CGRectDivide(frame, &part1, &part2, CGRectGetMaxX(frame), CGRectMaxYEdge);
    CGRectDivide(part1, &frame1, &frame2, CGRectGetMaxY(part1), CGRectMaxXEdge);
    CGRectDivide(part2, &frame3, &frame4, CGRectGetMaxY(part2), CGRectMaxXEdge);
    
    _redView = [[UIView alloc] initWithFrame:frame1];
    _blueView = [[UIView alloc] initWithFrame:frame2];
    _greenView = [[UIView alloc] initWithFrame:frame3];
    _yellowView = [[UIView alloc] initWithFrame:frame4];
    
    int width = frame1.size.width;
    int height = frame1.size.height;
    int x = frame2.origin.x;
    int y = frame3.origin.y;
    
    return width;
    return height;
    return x;
    return y;
}

- (int)layoutHorizontalRectangles {
    CGRect frame = [UIScreen mainScreen].bounds;
    CGRect part1;
    CGRect part2;
    CGRect frame1;
    CGRect frame2;
    CGRect frame3;
    CGRect frame4;
    CGRectDivide(frame, &part1, &part2, CGRectGetMaxX(frame), CGRectMaxYEdge);
    CGRectDivide(part1, &frame1, &frame2, CGRectGetMaxX(part1), CGRectMaxYEdge);
    CGRectDivide(part2, &frame3, &frame4, CGRectGetMaxX(part2), CGRectMaxYEdge);
    
    _redView = [[UIView alloc] initWithFrame:frame1];
    _blueView = [[UIView alloc] initWithFrame:frame2];
    _greenView = [[UIView alloc] initWithFrame:frame3];
    _yellowView = [[UIView alloc] initWithFrame:frame4];
    
    int width = frame1.size.width;
    int height = frame1.size.height;
    int y = frame2.origin.y;
    
    return width;
    return height;
    return y;
}

- (int)layoutVerticalRectangles {
    CGRect frame = [UIScreen mainScreen].bounds;
    CGRect part1;
    CGRect part2;
    CGRect frame1;
    CGRect frame2;
    CGRect frame3;
    CGRect frame4;
    CGRectDivide(frame, &part1, &part2, CGRectGetMaxY(frame), CGRectMaxXEdge);
    CGRectDivide(part1, &frame1, &frame2, CGRectGetMaxY(part1), CGRectMaxXEdge);
    CGRectDivide(part2, &frame3, &frame4, CGRectGetMaxY(part2), CGRectMaxXEdge);
    
    _redView = [[UIView alloc] initWithFrame:frame1];
    _blueView = [[UIView alloc] initWithFrame:frame2];
    _greenView = [[UIView alloc] initWithFrame:frame3];
    _yellowView = [[UIView alloc] initWithFrame:frame4];
    
    int width = frame1.size.width;
    int height = frame1.size.height;
    int x = frame1.origin.x;
    
    return width;
    return height;
    return x;
}

- (int)layoutDiagonalSquares {
    int width = [UIScreen mainScreen].bounds.size.width / 4;
    int height = [UIScreen mainScreen].bounds.size.height / 4;
    CGRect frame1 = CGRectMake(0, 0, width, height);
    CGRect frame2 = CGRectMake(width, height, width, height);
    CGRect frame3 = CGRectMake(width * 2, height * 2, width, height);
    CGRect frame4 = CGRectMake(width * 3, height * 3, width, height);
    
    _redView = [[UIView alloc] initWithFrame:frame1];
    _blueView = [[UIView alloc] initWithFrame:frame2];
    _greenView = [[UIView alloc] initWithFrame:frame3];
    _yellowView = [[UIView alloc] initWithFrame:frame4];
    
    int xOne = frame1.origin.x;
    int yOne = frame1.origin.y;
    int xTwo = frame2.origin.x;
    int yTwo = frame2.origin.y;
    int xThree = frame3.origin.x;
    int yThree = frame3.origin.y;
    int xFour = frame4.origin.x;
    int yFour = frame4.origin.y;
    
    return width;
    return height;
    return xOne;
    return yOne;
    return xTwo;
    return yTwo;
    return xThree;
    return yThree;
    return xFour;
    return yFour;
}

@end
