//
//  Created by Hello Mihai
//

#import "ViewController.h"
#import "CustomUnwindSegue.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)unwindFromCustomSegue:(UIStoryboardSegue*)sender
{
    NSLog(@"unwound from custom segue controller");
}

- (UIStoryboardSegue *)segueForUnwindingToViewController:(UIViewController *)toViewController
                                      fromViewController:(UIViewController *)fromViewController
                                              identifier:(NSString *)identifier {
    
    if ([identifier isEqualToString:@"CustomSegueUnwindIdentifier"]) {
        CustomUnwindSegue *segue = [[CustomUnwindSegue alloc]
                                    initWithIdentifier:identifier
                                    source:fromViewController
                                    destination:toViewController];
        return segue;
    }
    
    return [super segueForUnwindingToViewController:toViewController
                                 fromViewController:fromViewController
                                         identifier:identifier];
}

@end
