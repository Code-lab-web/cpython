import FirebaseRemoteConfig

// Get the template
let remoteConfig = RemoteConfig.remoteConfig()
remoteConfig.getTemplate { (template, error) in
  if let error = error {
    print("Error getting template: \(error)")
    return
  }

  // See the ETag of the template
  print("ETag: \(template!.eTag)")

  // Get a parameter
  let parameter = template!.parameters["header_text"]!
  print("\(parameter.defaultValue!.stringValue!)")

  // Get a condition
  let condition = template!.conditions[0]
  print("\(condition.name)")
  print("\(condition.expression)")
  print("\(condition.tagColor)")

  // Publish the template
  remoteConfig.publish(template!) { (publishedTemplate, error) in
    if let error = error {
      print("Error publishing template: \(error)")
      return
    }

    print("Template has been published")
    print("ETag: \(publishedTemplate!.eTag)")
  }
}
