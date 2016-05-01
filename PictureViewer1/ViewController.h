//
//  ViewController.h
//  PictureViewer1
//
//  Created by Diana Kanajeva on 01/05/16.
//  Copyright (c) 2016 Diana Kanajeva. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UINavigationControllerDelegate, UIImagePickerControllerDelegate>
@property (nonatomic,retain) UIImagePickerController *imageController;
@property (strong, nonatomic) IBOutlet UIButton *chooseImgBtn;
@property (strong, nonatomic) IBOutlet UITextField *nameTextField;
@property (strong, nonatomic) IBOutlet UIImageView *selectedImageView;

- (IBAction)clickButton:(id)sender;


@end

