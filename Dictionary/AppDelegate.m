//
//  AppDelegate.m
//  Dictionary
//
//  Created by EnzoF on 26.07.16.
//  Copyright © 2016 EnzoF. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "Student.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor grayColor];
    [self.window makeKeyAndVisible];
    ViewController *viewController = [[ViewController alloc] init];
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:viewController];
    self.window.rootViewController = navController;
    
    
    Student *student1 = [[Student alloc] init];
    student1.firstName = @"Александр";
    student1.lastName = @"Петров";
    
    Student *student2 = [[Student alloc] init];
    student2.firstName = @"Петр";
    student2.lastName = @"Иванов";
    
    Student *student3 = [[Student alloc] init];
    student3.firstName = @"Федор";
    student3.lastName = @"Петров";
    
    Student *student4 = [[Student alloc] init];
    student4.firstName = @"Ашот";
    student4.lastName = @"Алиев";
    
    Student *student5 = [[Student alloc] init];
    student5.firstName = @"Эрнесто";
    student5.lastName = @"Бенетти";
    
    Student *student6 = [[Student alloc] init];
    student6.firstName = @"Тимур";
    student6.lastName = @"Сокин";
    
    Student *student7 = [[Student alloc] init];
    student7.firstName = @"Екатерина";
    student7.lastName = @"Петрова";
    
    Student *student8 = [[Student alloc] init];
    student8.firstName = @"Дмитрий";
    student8.lastName = @"Хвалов";
    
    Student *student9 = [[Student alloc] init];
    student9.firstName = @"Василий";
    student9.lastName = @"Бердынин";
    
    Student *student10 = [[Student alloc] init];
    student10.firstName = @"Елена";
    student10.lastName = @"Петрова";
    
    Student *student11 = [[Student alloc] init];
    student11.firstName = @"Диана";
    student11.lastName = @"Смирнова";
    
    Student *student12 = [[Student alloc] init];
    student12.firstName = @"Иван";
    student12.lastName = @"Соколов";
    
    Student *student13 = [[Student alloc] init];
    student13.firstName = @"Светлана";
    student13.lastName = @"Кузнецова";
    
    Student *student14 = [[Student alloc] init];
    student14.firstName = @"Ксения";
    student14.lastName = @"Козлова";
    
    Student *student15 = [[Student alloc] init];
    student15.firstName = @"Лада";
    student15.lastName = @"Беляева";
    
    
    NSDictionary *dictionaryStudents = [[NSDictionary alloc]
                                        initWithObjectsAndKeys:student1,[self getStudentID:student1],
                                        
                                        student2,[self getStudentID:student2],
                                        
                                        student3,[self getStudentID:student3],
                                        
                                        student4,[self getStudentID:student4],
                                        
                                        student5,[self getStudentID:student5],
                                        
                                        student6,[self getStudentID:student6],
                                        
                                        student7,[self getStudentID:student7],
                                        
                                        student8,[self getStudentID:student8],
                                        
                                        student9,[self getStudentID:student9],
                                        
                                        student10,[self getStudentID:student10],
                                        
                                        student11,[self getStudentID:student11],
                                        
                                        student12,[self getStudentID:student12],
                                        
                                        student13,[self getStudentID:student13],
                                        
                                        student14,[self getStudentID:student14],
                                        
                                        student15,[self getStudentID:student15]
                                        ,nil];
  //Уровень студент
    for (NSString *key in [dictionaryStudents allKeys]) {
        Student *currentObj = [dictionaryStudents objectForKey:key];
        NSLog(@"%@ %@\n%@",currentObj.lastName,currentObj.firstName,[currentObj hello]);
    }
    
  //Уровень Мастер
    NSArray *arrayKeys = [[NSArray alloc] initWithArray:[dictionaryStudents allKeys]];
    NSArray * arraysortKeys;
    arraysortKeys =
    [arrayKeys sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    
    BOOL reverseSort = NO;
    arraysortKeys =
    [arrayKeys sortedArrayUsingFunction:alphabeticSort context:&reverseSort];
    
    for (NSString *key in arraysortKeys) {
        Student *currentObj = [dictionaryStudents objectForKey:key];
        NSLog(@"%@ %@\n%@",currentObj.lastName,currentObj.firstName,[currentObj hello]);
    }



    
//    NSSortDescriptor *firsDescriptor =
//    [[NSSortDescriptor alloc] initWithKey:firstKey
//                                ascending:YES
//                                 selector:@selector(localizedCaseInsensitiveCompare:)];
//
//    
//    NSArray *descriptors = [NSArray arrayWithObjects:secondDescriptor,
//                            firsDescriptor, nil];
//    totalSortedArray = [arrayAllDict sortedArrayUsingDescriptors:descriptors];

    
    
    // Override point for customization after application launch.
    return YES;
}



- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

#pragma mark -metods-

-(NSString*)getStudentID:(Student*)obj{
    
   return [obj.lastName stringByAppendingFormat:@" %@",obj.firstName];
    
}

#pragma mark -metods C-
NSInteger alphabeticSort(id string1, id string2, void *reverse)
{
    if (*(BOOL *)reverse == YES) {
        return [string2 localizedCaseInsensitiveCompare:string1];
    }
    return [string1 localizedCaseInsensitiveCompare:string2];
}

@end
