//
//  Created by Hello Mihai
//

#import "MyCustomSegue.h"

@implementation MyCustomSegue
- (void)perform
{
    UIView* sourceView = ((UIViewController*)self.sourceViewController).view; // from view controller
    UIView* destinationView = ((UIViewController*)self.destinationViewController).view; // to view controller
    
    UIWindow* window = [[[UIApplication sharedApplication] delegate] window];
    // set the starting center of the controller
    destinationView.center = CGPointMake(sourceView.center.x + sourceView.frame.size.width, destinationView.center.y);
    [window insertSubview:destinationView aboveSubview:sourceView];
    
    [UIView animateWithDuration:1.5
                     animations:^{
                         // custize animations
                         destinationView.center = CGPointMake(sourceView.center.x, destinationView.center.y);
                         sourceView.center = CGPointMake(0 - sourceView.center.x, destinationView.center.y);
                     }
                     completion:^(BOOL finished) {
                         // when the animation is completed
                         [[self sourceViewController] presentViewController:[self destinationViewController] animated:NO completion:nil];
                     }];
}
@end
