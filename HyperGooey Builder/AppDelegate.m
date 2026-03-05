//
//  AppDelegate.m
//  HyperGooey Builder
//
//  Created by Ben Szymanski on 3/5/26.
//

#import "AppDelegate.h"
#import <HyperGooey/HyperGooey.h>

@interface AppDelegate ()

@property (strong) IBOutlet NSWindow *window;

@property (weak) IBOutlet NSView *sidebarView;
@property (weak) IBOutlet NSView *galleryView;

@property (strong) HyperGooeyViewController *sidebarViewController;
@property (strong) HyperGooeyViewController *galleryViewController;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Step 1: Load the sidebar
//    self.sidebarViewController = [[HyperGooeyViewController alloc] initWithUrl:@"https://workspaces.fastgooey.com/hypermedia/fymxP-Ad8UqAx6OpuEIL7w"];
//    [self.sidebarViewController mountInContainer:self.sidebarView
//                                          parent:self.window.contentViewController];
    
    // Step 3: Listen to interactive events from the sidebar
//    [[NSNotificationCenter defaultCenter] addObserver:self
//                                             selector:@selector(userSelectedMacCategory:)
//                                                 name:@"sourceListItemChangedSelection"
//                                               object:self.sidebarViewController.activeHypermediaViewController];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
    return YES;
}

// Step 2: Create a notification method
- (void)userSelectedMacCategory:(NSNotification *) notification
{
    // Step 4: Examine data sent from the sidebar
    // `navigateToUrl` will contain url such as: https://workspaces.fastgooey.com/hypermedia/KOX7EPdq0ky5Qkp5wPg42A
    
//    NSDictionary *selectedItem = notification.userInfo;
//    NSString *navigateToUrl = [selectedItem objectForKey:@"selectionUrl"];
//    
//    NSLog(@"User selected: %@, navigating to... %@",
//          [selectedItem objectForKey:@"selectionTitle"],
//          [selectedItem objectForKey:@"selectionUrl"]
//          );
    
    // Step 5: Use the data from the sidebar to display a gallery of images in the galleryView
    // `navigateToUrl` is passed into the subsequent HyperGooeyViewController/renderer, and can be
    // controlled via the CMS in your browser.
    
//    self.galleryViewController = [[HyperGooeyViewController alloc] initWithUrl:navigateToUrl];
//    [self.galleryViewController mountInContainer:self.galleryView
//                                          parent:self.window.contentViewController];
}


@end
