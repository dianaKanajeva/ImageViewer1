//
//  ViewController.m
//  PictureViewer1
//
//  Created by Diana Kanajeva on 01/05/16.
//  Copyright (c) 2016 Diana Kanajeva. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize selectedImageView;
@synthesize imageController;

//Delegate method
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    UIImage *img = [info objectForKey: UIImagePickerControllerOriginalImage];
    selectedImageView.image = img;
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    [self dismissViewControllerAnimated: YES completion: nil];
}

//Method to get a built-in view to select an image
- (IBAction)clickButton:(id)sender {
    imageController = [[UIImagePickerController alloc]init];
    imageController.delegate = self;
    [self presentViewController:imageController animated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
