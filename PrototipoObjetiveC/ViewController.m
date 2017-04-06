//
//  ViewController.m
//  PrototipoObjetiveC
//
//  Created by julio cesar on 29/03/17.
//  Copyright © 2017 julio.cesar. All rights reserved.
//


#import "ViewController.h"
//LIBRERIAS PARA VERIFICAR CONEXIÓN A INTERNET
#import "Reachability.h"
//LIBRERIAS PARA VERIFICAR CONEXIÓN A INTERNET
#import "ECSlidingViewController.h"
#import "MenuTableViewController.h"


@interface ViewController ()

@end

@implementation ViewController

@synthesize menuBtn;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.layer.shadowOpacity=0.75f;
    self.view.layer.shadowRadius=10.0f;
    self.view.layer.shadowColor=[UIColor blackColor].CGColor;
    
    
    /*self.navigationController.view.layer.shadowOpacity = 0.75f;
    self.navigationController.view.layer.shadowRadius = 10.0f;
    self.navigationController.view.layer.shadowColor = [UIColor blackColor].CGColor;*/
    
    
    /*if(![self.slidingViewController.underLeftViewController isKindOfClass:[MenuTableViewController class]]){
        self.slidingViewController.underLeftViewController=[self.storyboard instantiateViewControllerWithIdentifier:@"menu"];
    }
    
    [self.view addGestureRecognizer:self.slidingViewController.panGesture];*/
    
   /*
    if (![self.slidingViewController.underLeftViewController isKindOfClass:[MenuTableViewController class]]) {
        
    }
    
    self.slidingViewController.underLeftViewController  = [self.storyboard instantiateViewControllerWithIdentifier:@"menu"];UIViewController *sideRight = [self.storyboard instantiateViewControllerWithIdentifier:@"menu"];
    self.slidingViewController.underRightViewController = sideRight;
    
    [self.view addGestureRecognizer:self.slidingViewController.panGesture];

    
    */
    
    if (![self.slidingViewController.underLeftViewController isKindOfClass:[MenuTableViewController class]]) {
        self.slidingViewController.underLeftViewController  = [self.storyboard instantiateViewControllerWithIdentifier:@"menu"];
    }
    
    //BOTÓN DEL MENÚ
    self.menuBtn =[UIButton buttonWithType:UIButtonTypeCustom];
    menuBtn.frame =CGRectMake(10, 30, 44, 34);
    [menuBtn setBackgroundImage:[UIImage imageNamed:@"menuButton.png"] forState:UIControlStateNormal];
    [menuBtn addTarget:self action:@selector(revealMenu) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.menuBtn];
    
    //CREACIÓN Y CONFIGURACIÓN DEL BOTÓN
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(0, 300, 380, 50);
    [btn setTitle:@"Consultar Clima" forState:UIControlStateNormal];
    [btn setBackgroundColor:({
        UIColor* color = [UIColor colorWithRed:0.97 green:0.29 blue:0.76 alpha:1.0];;
        color;
    })];
    //ACCIÓN DEL BOTÓN
    [btn addTarget:self action:@selector(btnClicked) forControlEvents:UIControlEventTouchUpInside];
    //PINTAR/MOSTRAR BOTÓN
    [self.view addSubview:btn];
    
    
    //CREACIÓN Y CONFIGURACIÓN DEL BOTÓN
    UIButton * btn2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn2.frame = CGRectMake(0, 400, 380, 50);
    [btn2 setTitle:@"Crear vista" forState:UIControlStateNormal];
    [btn2 setBackgroundColor:({
        UIColor* color = [UIColor colorWithRed:0.97 green:0.29 blue:0.76 alpha:1.0];;
        color;
    })];
    //ACCIÓN DEL BOTÓN
    [btn2 addTarget:self action:@selector(btnClicked2) forControlEvents:UIControlEventTouchUpInside];
    //PINTAR/MOSTRAR BOTÓN
    [self.view addSubview:btn2];
}



//FUNCIÓN PARA VERIFICAR CONEXIÓN A INTERNET CON UNA URL
- (BOOL)networkConnection {
    return [[Reachability reachabilityWithHostName:@"www.google.com"] currentReachabilityStatus];
}


//FUNCIÓN PARA VERIFICAR CONEXIÓN A INTERNET
- (BOOL)canAccessInternet
{
    Reachability *IsReachable = [Reachability reachabilityForInternetConnection];
    NetworkStatus internetStats = [IsReachable currentReachabilityStatus];
    
    if (internetStats == NotReachable)
    {
        return NO;
    }
    else
    {
        return YES;
    }
}

-(void)btnClicked2 {
    
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *vc = [sb instantiateViewControllerWithIdentifier:@"vistaDinamica"];
    //vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    //vc.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    //vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    vc.modalTransitionStyle = UIModalTransitionStylePartialCurl;
    [self presentViewController:vc animated:YES completion:NULL];
    
}

-(void)revealMenu {
    
    
    
   // [self.slidingViewController setAnchorRightRevealAmount:320.0f];
    [self.slidingViewController setAnchorRightRevealAmount:225.0f];
    self.slidingViewController.underLeftWidthLayout = ECFullWidth;
    [self.slidingViewController anchorTopViewTo:ECRight];
    

   // NSLog(@"menu");
   /* UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *vc = [sb instantiateViewControllerWithIdentifier:@"menu"];
    [self presentViewController:vc animated:YES completion:NULL];*/
    
    

    
}




-(void)btnClicked {
    /*
    //pinta todo el JSON EN CRUDO
    NSError *error;
    NSString *url_string = [NSString stringWithFormat: @"http://10.250.102.66:10006/apps/SEDEMA/aire"];
    NSData *data = [NSData dataWithContentsOfURL: [NSURL URLWithString:url_string]];
    NSMutableArray *json = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
    NSLog(@"json: %@", json);*/
    
    if ([self canAccessInternet] == NO) {
        
        //NSLog(@"Sin conexión");
        UIAlertController * alert = [UIAlertController
                                     alertControllerWithTitle:@"Alerta"
                                     message:@"Sin conexión, revise su configuración"
                                     preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* yesButton = [UIAlertAction
                                    actionWithTitle:@"OK"
                                    style:UIAlertActionStyleDefault
                                    handler:^(UIAlertAction * action) {
                                        //Handle your yes please button action here
                                    }];
        
        
        [alert addAction:yesButton];
        
        [self presentViewController:alert animated:YES completion:nil];
        
    } else {
        
        NSLog(@"Con conexion");
        
        NSString *str=[NSString stringWithFormat:@"http://10.250.102.66:10006/apps/SEDEMA/aire"];
        NSURL *url=[NSURL URLWithString:str];
        NSData *data=[NSData dataWithContentsOfURL:url];
        NSError *error=nil;
        
        NSDictionary* dictionary = [NSJSONSerialization JSONObjectWithData:data
                                                                   options:kNilOptions
                                                                     error:&error];
        

        
        //PINTA TODOS LOS OBJETOS DEL JSON
        //NSLog(@"Your JSON Object: %@ Or Error is: %@", dictionary, error);
        //PINTA UN OBJETO DEL JSON
        //NSLog(@"Value : %@",[dictionary objectForKey:@"error"]);
        //PINTA UN ELEMENTO DENTRO DE UN OBJETO
        //NSLog(@"%@",[[dictionary objectForKey:@"error"] objectForKey:@"code"]);
 

        
        NSString * string = [NSString stringWithFormat:@"%@", [[dictionary objectForKey:@"error"] objectForKey:@"code"] ];;
        
         NSLog(@"%@", string);
        
        
        if ( [string  isEqual: @"0"] ) {
            
            NSLog(@"éxito");
            
            NSString * DATOS = [NSString stringWithFormat:@"%@", [dictionary objectForKey:@"data"] ];;
            
            UIAlertController * alert = [UIAlertController
                                         alertControllerWithTitle:@"Alerta"
                                         message:DATOS
                                         preferredStyle:UIAlertControllerStyleAlert];
            
            UIAlertAction* yesButton = [UIAlertAction
                                        actionWithTitle:@"OK"
                                        style:UIAlertActionStyleDefault
                                        handler:^(UIAlertAction * action) {
                                            //Handle your yes please button action here
                                        }];
            
            UIAlertAction* noButton = [UIAlertAction
                                       actionWithTitle:@"CANCELAR"
                                       style:UIAlertActionStyleDefault
                                       handler:^(UIAlertAction * action) {
                                           //Handle no, thanks button
                                       }];
            
            [alert addAction:yesButton];
            [alert addAction:noButton];
            
            [self presentViewController:alert animated:YES completion:nil];
            
            
            
        }else{
            NSLog(@"error del Web Service");
            
            UIAlertController * alert = [UIAlertController
                                         alertControllerWithTitle:@"Alerta"
                                         message:@"error del Web Service"
                                         preferredStyle:UIAlertControllerStyleAlert];
            
            UIAlertAction* yesButton = [UIAlertAction
                                        actionWithTitle:@"OK"
                                        style:UIAlertActionStyleDefault
                                        handler:^(UIAlertAction * action) {
                                            //Handle your yes please button action here
                                        }];
           
            
            [alert addAction:yesButton];
            
            [self presentViewController:alert animated:YES completion:nil];
        }
        
        

        
        
        
        
        
        
        
        
        
        
        
        
    }
    
    

    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
