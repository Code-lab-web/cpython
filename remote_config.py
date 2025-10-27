import firebase_admin
from firebase_admin import credentials
from firebase_admin import remoteconfig

# Initialize the app
c_cred = credentials.Certificate("service-account.json")
firebase_admin.initialize_app(c_cred)

# Get the template
template = remoteconfig.get_template()

# See the ETag of the template
print('ETag:', template.etag)

# Get a parameter
print(template.parameters["header_text"].default_value.value)

# Get a condition
print(template.conditions[0].name)
print(template.conditions[0].expression)
print(template.conditions[0].tag_color)

# Publish the template
remoteconfig.publish_template(template)
