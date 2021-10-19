//
//  CalculatorView.m
//  calculator
//
//  Created by Yep on 2021/10/4.
//

#import "CalculatorView.h"
#import "Masonry.h"
@implementation CalculatorView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    _zeroButton = [[UIButton alloc] init];
    [self addSubview:_zeroButton];
    
    _oneButton = [[UIButton alloc] init];
    [self addSubview:_oneButton];
    
    _twoButton = [[UIButton alloc] init];
    [self addSubview:_twoButton];
    
    _threeButton = [[UIButton alloc] init];
    [self addSubview:_threeButton];
    
    _fourButton = [[UIButton alloc] init];
    [self addSubview:_fourButton];
    
    _fiveButton = [[UIButton alloc] init];
    [self addSubview:_fiveButton];
    
    _sixButton = [[UIButton alloc] init];
    [self addSubview:_sixButton];
    
    _sevenButton = [[UIButton alloc] init];
    [self addSubview:_sevenButton];
    
    _eightButton = [[UIButton alloc] init];
    [self addSubview:_eightButton];
    
    _nineButton = [[UIButton alloc] init];
    [self addSubview:_nineButton];
    
    _addButton = [[UIButton alloc] init];
    [self addSubview:_addButton];
    
    _subtractButton = [[UIButton alloc] init];
    [self addSubview:_subtractButton];
    
    _multiplyButton = [[UIButton alloc] init];
    [self addSubview:_multiplyButton];
    
    _divisionButton = [[UIButton alloc] init];
    [self addSubview:_divisionButton];
    
    _summationButton = [[UIButton alloc] init];
    [self addSubview:_summationButton];
    
    _pointButton = [[UIButton alloc] init];
    [self addSubview:_pointButton];
    
    _strView = [[UITextView alloc] init];
    [self addSubview:_strView];
    
    _acButton = [[UIButton alloc] init];
    [self addSubview:_acButton];
    
    _leftButton = [[UIButton alloc] init];
    [self addSubview:_leftButton];
    
    _rightButton = [[UIButton alloc] init];
    [self addSubview:_rightButton];
    
    _allString = @"";
    _numbleString = @"";
    return self;
}


- (void)layoutSubviews {
    _zeroButton.tag = 0;
    _zeroButton.titleLabel.textAlignment = NSTextAlignmentLeft;
    [_zeroButton setTitle:@"0" forState:UIControlStateNormal];
    [_zeroButton setTintColor:[UIColor whiteColor]];
    _zeroButton.backgroundColor = [UIColor colorWithRed:0.20f green:0.20f blue:0.20f alpha:1.00f];
    _zeroButton.layer.cornerRadius = 35;
    _zeroButton.titleLabel.font = [UIFont systemFontOfSize:40];
    
    _oneButton.tag = 1;
    [_oneButton setTitle:@"1" forState:UIControlStateNormal];
    [_oneButton setTintColor:[UIColor whiteColor]];
    _oneButton.backgroundColor = [UIColor colorWithRed:0.20f green:0.20f blue:0.20f alpha:1.00f];
    _oneButton.layer.cornerRadius = 35;
    _oneButton.titleLabel.font = [UIFont systemFontOfSize:40];
    
    _twoButton.tag = 2;
    [_twoButton setTitle:@"2" forState:UIControlStateNormal];
    [_twoButton setTintColor:[UIColor whiteColor]];
    _twoButton.backgroundColor = [UIColor colorWithRed:0.20f green:0.20f blue:0.20f alpha:1.00f];
    _twoButton.layer.cornerRadius = 35;
    _twoButton.titleLabel.font = [UIFont systemFontOfSize:40];
    
    _threeButton.tag = 3;
    [_threeButton setTitle:@"3" forState:UIControlStateNormal];
    [_threeButton setTintColor:[UIColor whiteColor]];
    _threeButton.backgroundColor = [UIColor colorWithRed:0.20f green:0.20f blue:0.20f alpha:1.00f];
    _threeButton.layer.cornerRadius = 35;
    _threeButton.titleLabel.font = [UIFont systemFontOfSize:40];
    
    _fourButton.tag = 4;
    [_fourButton setTitle:@"4" forState:UIControlStateNormal];
    [_fourButton setTintColor:[UIColor whiteColor]];
    _fourButton.backgroundColor = [UIColor colorWithRed:0.20f green:0.20f blue:0.20f alpha:1.00f];
    _fourButton.layer.cornerRadius = 35;
    _fourButton.titleLabel.font = [UIFont systemFontOfSize:40];
    
    _fiveButton.tag = 5;
    [_fiveButton setTitle:@"5" forState:UIControlStateNormal];
    [_fiveButton setTintColor:[UIColor whiteColor]];
    _fiveButton.backgroundColor = [UIColor colorWithRed:0.20f green:0.20f blue:0.20f alpha:1.00f];
    _fiveButton.layer.cornerRadius = 35;
    _fiveButton.titleLabel.font = [UIFont systemFontOfSize:40];
    
    _sixButton.tag = 6;
    [_sixButton setTitle:@"6" forState:UIControlStateNormal];
    [_sixButton setTintColor:[UIColor whiteColor]];
    _sixButton.backgroundColor = [UIColor colorWithRed:0.20f green:0.20f blue:0.20f alpha:1.00f];
    _sixButton.layer.cornerRadius = 35;
    _sixButton.titleLabel.font = [UIFont systemFontOfSize:40];
    
    _sevenButton.tag = 7;
    [_sevenButton setTitle:@"7" forState:UIControlStateNormal];
    [_sevenButton setTintColor:[UIColor whiteColor]];
    _sevenButton.backgroundColor = [UIColor colorWithRed:0.20f green:0.20f blue:0.20f alpha:1.00f];
    _sevenButton.layer.cornerRadius = 35;
    _sevenButton.titleLabel.font = [UIFont systemFontOfSize:40];
    
    _eightButton.tag = 8;
    [_eightButton setTitle:@"8" forState:UIControlStateNormal];
    [_eightButton setTintColor:[UIColor whiteColor]];
    _eightButton.backgroundColor = [UIColor colorWithRed:0.20f green:0.20f blue:0.20f alpha:1.00f];
    _eightButton.layer.cornerRadius = 35;
    _eightButton.titleLabel.font = [UIFont systemFontOfSize:40];
    
    _nineButton.tag = 9;
    [_nineButton setTitle:@"9" forState:UIControlStateNormal];
    [_nineButton setTintColor:[UIColor whiteColor]];
    _nineButton.backgroundColor = [UIColor colorWithRed:0.20f green:0.20f blue:0.20f alpha:1.00f];
    _nineButton.layer.cornerRadius = 35;
    _nineButton.titleLabel.font = [UIFont systemFontOfSize:40];
    
    
    _pointButton.tag = 10;
    [_pointButton setTitle:@"." forState:UIControlStateNormal];
    [_pointButton setTintColor:[UIColor whiteColor]];
    _pointButton.backgroundColor = [UIColor colorWithRed:0.20f green:0.20f blue:0.20f alpha:1.00f];
    _pointButton.layer.cornerRadius = 45;
    _pointButton.titleLabel.font = [UIFont systemFontOfSize:40];
    
    _addButton.tag = 11;
    [_addButton setTitle:@"+" forState:UIControlStateNormal];
    [_addButton setTintColor:[UIColor whiteColor]];
    _addButton.backgroundColor = [UIColor colorWithRed:0.96f green:0.53f blue:0.00f alpha:1.00f];
    _addButton.layer.cornerRadius = 45;
    _addButton.titleLabel.font = [UIFont systemFontOfSize:40];
    
    _subtractButton.tag = 12;
    [_subtractButton setTitle:@"-" forState:UIControlStateNormal];
    [_subtractButton setTintColor:[UIColor whiteColor]];
    _subtractButton.backgroundColor = [UIColor colorWithRed:0.96f green:0.53f blue:0.00f alpha:1.00f];
    _subtractButton.layer.cornerRadius = 45;
    _subtractButton.titleLabel.font = [UIFont systemFontOfSize:40];
    
    _multiplyButton.tag = 13;
    [_multiplyButton setTitle:@"*" forState:UIControlStateNormal];
    [_multiplyButton setTintColor:[UIColor whiteColor]];
    _multiplyButton.backgroundColor = [UIColor colorWithRed:0.96f green:0.53f blue:0.00f alpha:1.00f];
    _multiplyButton.layer.cornerRadius = 45;
    _multiplyButton.titleLabel.font = [UIFont systemFontOfSize:40];
    
    _divisionButton.tag = 14;
    [_divisionButton setTitle:@"/" forState:UIControlStateNormal];
    [_divisionButton setTintColor:[UIColor whiteColor]];
    _divisionButton.backgroundColor = [UIColor colorWithRed:0.96f green:0.53f blue:0.00f alpha:1.00f];
    _divisionButton.layer.cornerRadius = 45;
    _divisionButton.titleLabel.font = [UIFont systemFontOfSize:40];
    
    _acButton.tag = 15;
    [_acButton setTitle:@"AC" forState:UIControlStateNormal];
    _acButton.tintColor = [UIColor blackColor];
    _acButton.backgroundColor = [UIColor colorWithRed:0.65f green:0.65f blue:0.65f alpha:1.00f];
    _acButton.layer.cornerRadius = 45;
    _acButton.titleLabel.font = [UIFont systemFontOfSize:40];
       
    _leftButton.tag = 16;
    [_leftButton setTitle:@"(" forState:UIControlStateNormal];
    _leftButton.tintColor = [UIColor blackColor];
    _leftButton.backgroundColor = [UIColor colorWithRed:0.65f green:0.65f blue:0.65f alpha:1.00f];
    _leftButton.layer.cornerRadius = 45;
    _leftButton.titleLabel.font = [UIFont systemFontOfSize:40];
       
    _rightButton.tag = 17;
    [_rightButton setTitle:@")" forState:UIControlStateNormal];
    _rightButton.tintColor = [UIColor blackColor];
    _rightButton.backgroundColor = [UIColor colorWithRed:0.65f green:0.65f blue:0.65f alpha:1.00f];
    _rightButton.layer.cornerRadius = 45;
    _rightButton.titleLabel.font = [UIFont systemFontOfSize:40];

       
    _summationButton.tag = 100;
    [_summationButton setTitle:@"=" forState:UIControlStateNormal];
    [_summationButton setTintColor:[UIColor whiteColor]];
    _summationButton.backgroundColor = [UIColor colorWithRed:0.96f green:0.53f blue:0.00f alpha:1.00f];
    _summationButton.layer.cornerRadius = 45;
    _summationButton.titleLabel.font = [UIFont systemFontOfSize:40];
    
    _strView.backgroundColor = [UIColor clearColor];
    _strView.textColor = [UIColor whiteColor];
    _strView.font = [UIFont systemFontOfSize:45];
    _strView.textAlignment = NSTextAlignmentRight;
    
    
    [_zeroButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.oneButton);
        make.top.equalTo(self.oneButton.mas_bottom).offset(10);
        make.right.equalTo(self.twoButton);
        make.bottom.equalTo(self.pointButton);
    }];
    
    [_acButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self).offset(self.bounds.size.height / 3);
        make.left.equalTo(self).offset(10);
        make.width.equalTo(@(self.bounds.size.width / 4 - 10));
        make.height.equalTo(@(self.bounds.size.width / 4  - 10));
    }];
    
    [_leftButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self).offset(self.bounds.size.height / 3);
        make.left.equalTo(self->_acButton.mas_right).offset(10);
        make.size.equalTo(self->_acButton);
    }];
        
    [_rightButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self).offset(self.bounds.size.height / 3);
        make.left.equalTo(self.leftButton.mas_right).offset(10);
        make.size.equalTo(self->_acButton);
    }];
    
    [_divisionButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self).offset(self.bounds.size.height / 3);
        make.left.equalTo(self.rightButton.mas_right).offset(10);
        make.size.equalTo(self->_acButton);
    }];
        
    [_sevenButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self->_acButton);
        make.top.equalTo(self->_acButton.mas_bottom).offset(10);
        make.size.equalTo(self->_acButton);
    }];
        
    [_eightButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.leftButton);
        make.top.equalTo(self.leftButton.mas_bottom).offset(10);
        make.size.equalTo(self->_acButton);
    }];
        
    [_nineButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.rightButton);
        make.top.equalTo(self.rightButton.mas_bottom).offset(10);
        make.size.equalTo(self->_acButton);
    }];
        
    [_multiplyButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.divisionButton);
        make.top.equalTo(self.divisionButton.mas_bottom).offset(10);
        make.size.equalTo(self->_acButton);
    }];
        
    [_fourButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.sevenButton);
        make.top.equalTo(self.sevenButton.mas_bottom).offset(10);
        make.size.equalTo(self->_acButton);
    }];
        
    [_fiveButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.eightButton);
        make.top.equalTo(self.eightButton.mas_bottom).offset(10);
        make.size.equalTo(self->_acButton);
    }];
        
    [_sixButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.nineButton);
        make.top.equalTo(self.nineButton.mas_bottom).offset(10);
        make.size.equalTo(self->_acButton);
    }];
        
    [_subtractButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.multiplyButton);
        make.top.equalTo(self.multiplyButton.mas_bottom).offset(10);
        make.size.equalTo(self->_acButton);
    }];
        
    [_oneButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.fourButton);
        make.top.equalTo(self.fourButton.mas_bottom).offset(10);
        make.size.equalTo(self->_acButton);
    }];
        
    [_twoButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.fiveButton);
        make.top.equalTo(self.fiveButton.mas_bottom).offset(10);
        make.size.equalTo(self->_acButton);
    }];
        
    [_threeButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.sixButton);
        make.top.equalTo(self.sixButton.mas_bottom).offset(10);
        make.size.equalTo(self->_acButton);
    }];
        
    [_addButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.subtractButton);
        make.top.equalTo(self.subtractButton.mas_bottom).offset(10);
        make.size.equalTo(self->_acButton);
    }];
        
    
    [_pointButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.threeButton);
        make.top.equalTo(self.threeButton.mas_bottom).offset(10);
        make.size.equalTo(self->_acButton);
    }];
        
    [_summationButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.addButton);
        make.top.equalTo(self.addButton.mas_bottom).offset(10);
        make.size.equalTo(self->_acButton);
    }];
        
    [_strView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self).offset(30);
        make.left.equalTo(self);
        make.width.equalTo(self);
        make.height.equalTo(@(self.bounds.size.height / 3));
    }];
       
}
@end
