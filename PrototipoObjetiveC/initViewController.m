//
//  initViewController.m
//  PrototipoObjetiveC
//
//  Created by julio cesar on 04/04/17.
//  Copyright © 2017 julio.cesar. All rights reserved.
//

#import "initViewController.h"

@interface initViewController ()

@end

@implementation initViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //Creacion de Label
    
    UILabel *label =[[UILabel alloc]initWithFrame:CGRectMake(80, 80, 210, 80 )];//Establezca el marco de la etiqueta en su viewcontroller.
    
    [label setBackgroundColor:[UIColor whiteColor]];//Establecer el color de fondo de la etiqueta.
    
    [label setText:@"CDMX"];//Establecer texto en la etiqueta.
    
    [label setTextColor:[UIColor colorWithRed:0.97 green:0.29 blue:0.76 alpha:1.0]];//Establecer el color del texto en la etiqueta.
    
    label.font=[label.font fontWithSize:70]; //Tamaño del texto.
    
    [label setTextAlignment:NSTextAlignmentCenter];//Establecer la alineación del texto en la etiqueta.
    
    [label setBaselineAdjustment:UIBaselineAdjustmentAlignBaselines];//Ajuste el ajuste de la línea.
    
    [label setLineBreakMode:NSLineBreakByCharWrapping];//Establece el modo de separación de línea.
    
    [label setNumberOfLines:1];//Establezca el número de líneas en la etiqueta.
    
    //[label.layer setCornerRadius:25.0];//Ajuste el radio de la esquina de la etiqueta para cambiar la forma.
    
    //[label.layer setBorderWidth:2.0f];//Establece el ancho del borde de la etiqueta.
    
    //[label setClipsToBounds:YES];//Establezca su SÍ para que el radio de la esquina funcione.
    
    //[label.layer setBorderColor:[UIColor blackColor].CGColor];//Establecer Color de borde.
    
    [self.view addSubview:label];//Añadir a la vista de su elección.
    
    
    
    //Creacion de TextField
    
    UITextField *iniciarsesion = [[UITextField alloc] initWithFrame:CGRectMake(35, 230, 300, 40)];
    
    iniciarsesion.borderStyle = UITextBorderStyleRoundedRect;
    
    iniciarsesion.font = [UIFont systemFontOfSize:15];
    
    iniciarsesion.placeholder = @"Ingrese su correo electrónico";
    
    iniciarsesion.autocorrectionType = UITextAutocorrectionTypeNo;
    
    iniciarsesion.keyboardType = UIKeyboardTypeDefault;
    
    iniciarsesion.returnKeyType = UIReturnKeyDone;
    
    iniciarsesion.clearButtonMode = UITextFieldViewModeWhileEditing;
    
    iniciarsesion.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    
    //[iniciarsesion addTarget:self action:@selector(iniciarsesionShow) forControlEvents:UIControlEventEditingDidEndOnExit];
    
    [self.view addSubview:iniciarsesion];
    
    
    //Creacion de label Correo Electrónico
    
    UILabel *correo = [[UILabel alloc]initWithFrame:CGRectMake(35, 200, 220, 20)];
    
    [correo setBackgroundColor:[UIColor whiteColor]];
    
    [correo setTextColor:[UIColor blackColor]];
    
    [correo setText:@"Correo electrónico"];
    
    correo.font=[label.font fontWithSize:15];
    
    [[self view] addSubview:correo];
    
    
    
    
    //Creacion de TextField2
    
    UITextField *contra = [[UITextField alloc] initWithFrame:CGRectMake(35, 320, 300, 40)];
    
    contra.borderStyle = UITextBorderStyleRoundedRect;
    
    contra.font = [UIFont systemFontOfSize:15];
    
    contra.placeholder = @"Ingrese su contraseña";
    
    contra.autocorrectionType = UITextAutocorrectionTypeNo;
    
    contra.keyboardType = UIKeyboardTypeDefault;
    
    contra.returnKeyType = UIReturnKeyDone;
    
    contra.clearButtonMode = UITextFieldViewModeWhileEditing;
    
    contra.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    
    contra.secureTextEntry = YES;
    
    //[iniciarsesion addTarget:self action:@selector(iniciarsesionShow) forControlEvents:UIControlEventEditingDidEndOnExit];
    
    [self.view addSubview:contra];
    
    
    
    //Creacion de label Contraseña
    
    UILabel *contras = [[UILabel alloc]initWithFrame:CGRectMake(35, 290, 220, 20)];
    
    [contras setBackgroundColor:[UIColor whiteColor]];
    
    [contras setTextColor:[UIColor blackColor]];
    
    [contras setText:@"Contraseña"];
    
    contras.font=[label.font fontWithSize:15];
    
    [[self view] addSubview:contras];
    
    
    //Creacion de label no tienes cuenta
    
    UILabel *cuenta = [[UILabel alloc]initWithFrame:CGRectMake(35, 400, 200, 20)];
    
    [cuenta setBackgroundColor:[UIColor whiteColor]];
    
    [contras setTextColor:[UIColor blackColor]];
    
    [cuenta setText:@"¿Aún no tienes cuenta?"];
    
    contras.font=[label.font fontWithSize:14];
    
    [[self view] addSubview:cuenta];
    
    
    
    
    
    //Creacion de Boton Registro
    
    UIButton * registro = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    registro.frame = CGRectMake(225, 400, 100, 25);
    
    [registro setTitle:@"Registrate" forState:UIControlStateNormal];
    
    [registro setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    [registro setBackgroundColor:({
        
        UIColor* color = [UIColor colorWithRed:0.97 green:0.29 blue:0.76 alpha:1.0];;
        color;
    })];
    
    [registro addTarget:self action:@selector(registroClicked) forControlEvents:UIControlEventTouchUpInside];
    
    
    [self.view addSubview:registro];
    
    
    
    //Creacion de Boton Platadorma
    
    UIButton *plataforma = [UIButton buttonWithType:UIButtonTypeSystem];
    
    plataforma.frame = CGRectMake(35, 550, 300, 40);
    
    [plataforma setTitle:@"Plataforma CDMX" forState:UIControlStateNormal];
    
    [plataforma setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    [plataforma setBackgroundColor:({
        
        UIColor* color = [UIColor colorWithRed:0.97 green:0.29 blue:0.76 alpha:1.0];;
        color;
    })];
    
    [plataforma addTarget:self action:@selector(plataformaClicked) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:plataforma];
    
    
    //Boton de Iniciar sesion
    
    UIButton *sesion = [UIButton buttonWithType:UIButtonTypeSystem];
    
    sesion.frame = CGRectMake(35, 450, 300, 40);
    
    [sesion setTitle:@"Iniciar Sesión" forState:UIControlStateNormal];
    
    [sesion setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    [sesion setBackgroundColor:({
        
        UIColor* color = [UIColor colorWithRed:0.97 green:0.29 blue:0.76 alpha:1.0];;
        color;
    })];
    
    [sesion addTarget:self action:@selector(sesionClicked) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:sesion];
    

    
    
    
    
    
}


-(void)sesionClicked {
    
   self.topViewController =[self.storyboard instantiateViewControllerWithIdentifier:@"main"];    
    
}


-(void)plataformaClicked {
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.plataforma.cdmx.gob.mx/login"] options:@{} completionHandler:nil];
    
}


-(void)registroClicked {
    
    UIAlertController * alertController = [UIAlertController alertControllerWithTitle: @"Registro"
                                                                              message: @"Escribe tus datos correctamete"
                                                                       preferredStyle:UIAlertControllerStyleAlert];
    [alertController addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        textField.placeholder = @"Nombre";
        textField.textColor = [UIColor blackColor];
        textField.clearButtonMode = UITextFieldViewModeWhileEditing;
        //textField.borderStyle = UITextBorderStyleRoundedRect;
    }];
    
    [alertController addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        textField.placeholder = @"Apellidos";
        textField.textColor = [UIColor blackColor];
        textField.clearButtonMode = UITextFieldViewModeWhileEditing;
        //textField.borderStyle = UITextBorderStyleRoundedRect;
    }];
    
    [alertController addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        textField.placeholder = @"Masculino/Femenino";
        textField.textColor = [UIColor blackColor];
        textField.clearButtonMode = UITextFieldViewModeWhileEditing;
        //textField.borderStyle = UITextBorderStyleRoundedRect;
    }];
    
    [alertController addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        textField.placeholder = @"Edad";
        textField.textColor = [UIColor blackColor];
        textField.clearButtonMode = UITextFieldViewModeWhileEditing;
        //textField.borderStyle = UITextBorderStyleRoundedRect;
    }];
    
    [alertController addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        textField.placeholder = @"Correo electrónico";
        textField.textColor = [UIColor blackColor];
        textField.clearButtonMode = UITextFieldViewModeWhileEditing;
        //textField.borderStyle = UITextBorderStyleRoundedRect;
    }];
    
    [alertController addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        textField.placeholder = @"Contraseña";
        textField.textColor = [UIColor blackColor];
        textField.clearButtonMode = UITextFieldViewModeWhileEditing;
        //textField.borderStyle = UITextBorderStyleRoundedRect;
        textField.secureTextEntry = YES;
    }];
    
    [alertController addAction:[UIAlertAction actionWithTitle:@"Confirmar" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        NSArray * textfields = alertController.textFields;
        UITextField * nombrefield = textfields[0];
        UITextField * apellidofiled = textfields[1];
        UITextField * sexofield = textfields[2];
        UITextField * edadfiled = textfields[3];
        UITextField * correofield = textfields[4];
        UITextField * contrasenafiled = textfields[5];
        NSLog(@"%@ : %@ : %@ : %@ : %@ : %@",nombrefield.text,apellidofiled.text,sexofield.text,edadfiled.text,correofield.text,contrasenafiled.text);
        
    }]];
    
    [self presentViewController:alertController animated:YES completion:nil];
    
}


//Ocultar teclado presionando enter

- (BOOL)textFieldShouldReturn:(UITextField *)iniciarsesion {
    
    [iniciarsesion resignFirstResponder];
    return NO; //Retorna YES si se permiten saltos de linea
    
}

//Ocultar teclado

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    [self.view endEditing:YES];
    
    [super touchesBegan:touches withEvent:event];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
