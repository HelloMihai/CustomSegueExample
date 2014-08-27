//
//  Created by Hello Mihai
//

#import "CustomUnwindSegue.h"

@implementation CustomUnwindSegue
- (void)perform
{
    UIViewController *sourceViewController = (UIViewController *)self.sourceViewController;
    UIViewController *destinationViewController = (UIViewController *)self.destinationViewController;
    
    [UIView transitionWithView:sourceViewController.view
                      duration:1.5
                       options:UIViewAnimationOptionTransitionFlipFromTop
                    animations:^{
                        [sourceViewController.view addSubview:destinationViewController.view];
                    }
                    completion:^(BOOL finished){
                        [sourceViewController dismissViewControllerAnimated:NO completion:nil];
                    }];
}
@end
