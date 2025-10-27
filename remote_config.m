#import "FirebaseRemoteConfig/FirebaseRemoteConfig.h"

// Get the template
FIRRemoteConfig *remoteConfig = [FIRRemoteConfig remoteConfig];
[remoteConfig getTemplateWithCompletion:^(FIRRemoteConfigTemplate *template, NSError *error) {
  if (error) {
    NSLog(@"Error getting template: %@", error);
    return;
  }

  // See the ETag of the template
  NSLog(@"ETag: %@", template.ETag);

  // Get a parameter
  FIRRemoteConfigParameter *parameter = template.parameters[@"header_text"];
  NSLog(@"%@", parameter.defaultValue.stringValue);

  // Get a condition
  FIRRemoteConfigCondition *condition = template.conditions[0];
  NSLog(@"%@", condition.name);
  NSLog(@"%@", condition.expression);
  NSLog(@"%@", @(condition.tagColor));

  // Publish the template
  [remoteConfig publishTemplate:template completion:^(FIRRemoteConfigTemplate *publishedTemplate, NSError *error) {
    if (error) {
      NSLog(@"Error publishing template: %@", error);
      return;
    }

    NSLog(@"Template has been published");
    NSLog(@"ETag: %@", publishedTemplate.ETag);
  }];
}];
