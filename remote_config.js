const admin = require("firebase-admin");

admin.initializeApp();

// Get the template
admin.remoteConfig().getTemplate()
  .then(template => {
    console.log("ETag:", template.etag);

    // Get a parameter
    console.log(template.parameters.header_text.defaultValue.value);

    // Get a condition
    console.log(template.conditions[0].name);
    console.log(template.conditions[0].expression);
    console.log(template.conditions[0].tagColor);

    // Publish the template
    admin.remoteConfig().publishTemplate(template)
      .then(updatedTemplate => {
        console.log("Template has been published");
        console.log("ETag:", updatedTemplate.etag);
      });
  });
