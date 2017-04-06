//
//  MenuTableViewController.m
//  PrototipoObjetiveC
//
//  Created by julio cesar on 03/04/17.
//  Copyright © 2017 julio.cesar. All rights reserved.
//

#import "MenuTableViewController.h"
#import "ECSlidingViewController.h"


@interface MenuTableViewController ()

@property (nonatomic, strong) NSArray *menuItems;
@end

@implementation MenuTableViewController
@synthesize menuItems;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.navigationController.navigationBarHidden = NO;
    self.navigationController.navigationBar.translucent=YES;
    
    self.tableView.contentInset = UIEdgeInsetsMake(44,0,0,0);
    self.automaticallyAdjustsScrollViewInsets =  NO;
    
    self.edgesForExtendedLayout=UIRectEdgeNone;
    self.extendedLayoutIncludesOpaqueBars=NO;
    self.automaticallyAdjustsScrollViewInsets=NO;
    
    self.menuItems=[NSArray arrayWithObjects:@"main", @"Configuracion",@"Acerca de", @"login",nil];
   
    [self.slidingViewController setAnchorLeftRevealAmount:200.0f];
    self.slidingViewController.underLeftWidthLayout=ECFullWidth;
    
    
  
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}




#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.menuItems count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier=@"Cel";
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if(cell==nil){
        cell =[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
        
    }
     NSString * string = [NSString stringWithFormat:@"%@",[self.menuItems objectAtIndex:indexPath.row]];
    
    
     if ( [string  isEqual: @"main"] ) {
         
         cell.textLabel.text = @"Inicio";
         
     }
     else if ([string  isEqual: @"login"]){
         
     cell.textLabel.text = @"Cerrar sesion";
    
     }else{
     cell.textLabel.text=[NSString stringWithFormat:@"%@",[self.menuItems objectAtIndex:indexPath.row]];
     
     }

    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
 {
     NSString *identifier =[NSString stringWithFormat:@"%@",[self.menuItems objectAtIndex:indexPath.row]];
     UIViewController *newTopViewController= [self.storyboard instantiateViewControllerWithIdentifier:identifier];
     
     [self.slidingViewController anchorTopViewOffScreenTo:ECRight animations:nil onComplete:^{
         CGRect frame = self.slidingViewController.topViewController.view.frame;
         self.slidingViewController.topViewController = newTopViewController;
         self.slidingViewController .topViewController.view.frame = frame;
         [self.slidingViewController resetTopView];
     }];
 
 
 }




@end
