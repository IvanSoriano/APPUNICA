//
//  ConfiguracionViewController.m
//  PrototipoObjetiveC
//
//  Created by julio cesar on 05/04/17.
//  Copyright © 2017 julio.cesar. All rights reserved.
//

#import "ConfiguracionViewController.h"
#import "ECSlidingViewController.h"
#import "MenuTableViewController.h"

@interface ConfiguracionViewController ()

@end

@implementation ConfiguracionViewController

@synthesize menuBtn2;

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.view.layer.shadowOpacity=0.75f;
    self.view.layer.shadowRadius=10.0f;
    self.view.layer.shadowColor=[UIColor blackColor].CGColor;

    
    if (![self.slidingViewController.underLeftViewController isKindOfClass:[MenuTableViewController class]]) {
        self.slidingViewController.underLeftViewController  = [self.storyboard instantiateViewControllerWithIdentifier:@"menu"];
    }

    
    //BOTÓN DEL MENÚ
    self.menuBtn2 =[UIButton buttonWithType:UIButtonTypeCustom];
    menuBtn2.frame =CGRectMake(10, 30, 44, 34);
    [menuBtn2 setBackgroundImage:[UIImage imageNamed:@"menuButton.png"] forState:UIControlStateNormal];
    [menuBtn2 addTarget:self action:@selector(revealMenu) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.menuBtn2];
    
    
    UILabel *label =[[UILabel alloc]initWithFrame:CGRectMake(80, 80, 210, 80 )];//Establezca el marco de la etiqueta en su viewcontroller.

    //Creacion de label nombre app
    
    UILabel *encabezado = [[UILabel alloc]initWithFrame:CGRectMake(15, 75, 320, 20)];
    
    [encabezado setBackgroundColor:[UIColor whiteColor]];
    
    [encabezado setTextColor:[UIColor blackColor]];
    
    [encabezado setText:@"Activa los servicios que deseas obtener o conocer"];
    //encabezado.adjustsFontSizeToFitWidth = true;
    
    encabezado.font=[label.font fontWithSize:13];
    
    [[self view] addSubview:encabezado];
    
    
    
    //Creacion de label nombre app (aire)
    
    UILabel *nombre = [[UILabel alloc]initWithFrame:CGRectMake(15, 120, 220, 20)];
    
    [nombre setBackgroundColor:[UIColor whiteColor]];
    
    [nombre setTextColor:[UIColor blackColor]];
    
    [nombre setText:@"APP CLIMA (AIRE CDMX)"];
    
    nombre.font=[label.font fontWithSize:15];
    
    [[self view] addSubview:nombre];
    
    
    //switch aire
    UISwitch *mySwitch = [[UISwitch alloc] initWithFrame:CGRectMake(250, 120, 0, 0)];
    [mySwitch addTarget:self action:@selector(changeSwitch:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:mySwitch];
    
    
    //Creacion de label nombre app (ecobici)
    
    UILabel *nombre2 = [[UILabel alloc]initWithFrame:CGRectMake(15, 170, 220, 20)];
    
    [nombre2 setBackgroundColor:[UIColor whiteColor]];
    
    [nombre2 setTextColor:[UIColor blackColor]];
    
    [nombre2 setText:@"ESTACIONES (ECOBICI CDMX)"];
    
    nombre2.font=[label.font fontWithSize:15];
    
    [[self view] addSubview:nombre2];
    
    
    //switch aire
    UISwitch *mySwitch2 = [[UISwitch alloc] initWithFrame:CGRectMake(250, 170, 0, 0)];
    [mySwitch2 addTarget:self action:@selector(changeSwitch2:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:mySwitch2];
    
    
    //Creacion de label nombre BACHE 24
    
    UILabel *nombre3 = [[UILabel alloc]initWithFrame:CGRectMake(15, 220, 220, 20)];
    
    [nombre3 setBackgroundColor:[UIColor whiteColor]];
    
    [nombre3 setTextColor:[UIColor blackColor]];
    
    [nombre3 setText:@"APP BACHE (BACHE 24)"];
    
    nombre3.font=[label.font fontWithSize:15];
    
    [[self view] addSubview:nombre3];
    
    
    //switch BACHE 24
    
    UISwitch *mySwitch3 = [[UISwitch alloc] initWithFrame:CGRectMake(250, 220, 0, 0)];
    
    [mySwitch3 addTarget:self action:@selector(changeSwitch3:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:mySwitch3];
    
    
    
    //Creacion de label nombre MI POLICIA
    
    UILabel *nombre4 = [[UILabel alloc]initWithFrame:CGRectMake(15, 270, 220, 20)];
    
    [nombre4 setBackgroundColor:[UIColor whiteColor]];
    
    [nombre4 setTextColor:[UIColor blackColor]];
    
    [nombre4 setText:@"APP POLICIA (MI POLICIA)"];
    
    nombre4.font=[label.font fontWithSize:15];
    
    [[self view] addSubview:nombre4];
    
    
    //switchMI POLICIA
    
    UISwitch *mySwitch4 = [[UISwitch alloc] initWithFrame:CGRectMake(250, 270, 0, 0)];
    
    [mySwitch4 addTarget:self action:@selector(changeSwitch4:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:mySwitch4];
    
    
    
    //Creacion de label nombre VIVE SEGURA
    
    UILabel *nombre5 = [[UILabel alloc]initWithFrame:CGRectMake(15, 320, 220, 20)];
    
    [nombre5 setBackgroundColor:[UIColor whiteColor]];
    
    [nombre5 setTextColor:[UIColor blackColor]];
    
    [nombre5 setText:@"APP MUJERES (VIVE SEGURA)"];
    
    nombre5.font=[label.font fontWithSize:15];
    
    [[self view] addSubview:nombre5];
    
    //switchMI VIVE SEGURA
    
    UISwitch *mySwitch5 = [[UISwitch alloc] initWithFrame:CGRectMake(250, 320, 0, 0)];
    
    [mySwitch5 addTarget:self action:@selector(changeSwitch5:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:mySwitch5];
    
    
    //Creacion de label nombre VIVE SEGURA
    
    UILabel *nombre6 = [[UILabel alloc]initWithFrame:CGRectMake(15, 320, 220, 20)];
    
    [nombre6 setBackgroundColor:[UIColor whiteColor]];
    
    [nombre6 setTextColor:[UIColor blackColor]];
    
    [nombre6 setText:@"APP SEGURIDAD (911)"];
    
    nombre6.font=[label.font fontWithSize:15];
    
    [[self view] addSubview:nombre6];
    
    //switchMI VIVE SEGURA
    
    UISwitch *mySwitch6 = [[UISwitch alloc] initWithFrame:CGRectMake(250, 320, 0, 0)];
    
    [mySwitch6 addTarget:self action:@selector(changeSwitch6:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:mySwitch6];
    
    
    
    
    
}


- (void)changeSwitch:(id)sender{
    
    if([sender isOn]){
        NSLog(@"Switch AIRE is ON");
    } else{
        NSLog(@"Switch AIRE is OFF");
    }
    
}



- (void)changeSwitch2:(id)sender{
    
    if([sender isOn]){
        NSLog(@"Switch ECOBICI is ON");
    } else{
        NSLog(@"Switch ECOBICI is OFF");
    }
    
}


- (void)changeSwitch3:(id)sender{
    
    if([sender isOn]){
        NSLog(@"Switch BACHE 24 is ON");
    } else{
        NSLog(@"Switch BACHE 24 is OFF");
    }
    
}



- (void)changeSwitch4:(id)sender{
    
    if([sender isOn]){
        NSLog(@"Switch MI POLICIA is ON");
    } else{
        NSLog(@"Switch MI POLICIA is OFF");
    }
    
}


- (void)changeSwitch5:(id)sender{
    
    if([sender isOn]){
        NSLog(@"Switch VIVE SEGURA is ON");
    } else{
        NSLog(@"Switch VIVE SEGURA is OFF");
    }
    
}


- (void)changeSwitch6:(id)sender{
    
    if([sender isOn]){
        NSLog(@"Switch 911 is ON");
    } else{
        NSLog(@"Switch 911 is OFF");
    }
    
}


//ACCIÓN DEL BOTÓN DEL MENÚ
-(void)revealMenu {
    
    //[self.slidingViewController setAnchorRightRevealAmount:320.0f];
    [self.slidingViewController setAnchorRightRevealAmount:225.0f];
    self.slidingViewController.underLeftWidthLayout = ECFullWidth;
    [self.slidingViewController anchorTopViewTo:ECRight];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
