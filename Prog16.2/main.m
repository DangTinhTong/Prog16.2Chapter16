//
//  main.m
//  Prog16.2
//
//  Created by admin on 12/11/17.
//  Copyright © 2017 admin. All rights reserved.
//Make a copy of file

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World!");
        
        NSFileManager *fm;
        NSData *fileDate;
        
        fm =[NSFileManager defaultManager];
        
        // Read the file newfile2
        fileDate = [fm contentsAtPath:@"newfile2"];
        if(fileDate == nil)
        {
            NSLog(@"File read failed!");
            return  1;
        }
        
        // Write the data to newfile3
        
        if([fm createFileAtPath:@"newfile3" contents:fileDate attributes:nil]==NO)
        {
            NSLog(@"Coun't creat the copy");
            
        }
        else
        {
            NSLog(@" File copy was successful.");
        }
    }
    return 0;
}
