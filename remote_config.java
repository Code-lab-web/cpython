import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigException;
import com.google.firebase.remoteconfig.Parameter;
import com.google.firebase.remoteconfig.ParameterValue;
import com.google.firebase.remoteconfig.RemoteConfigCondition;
import com.google.firebase.remoteconfig.Template;

// Get the template
Template template = FirebaseRemoteConfig.getInstance().getTemplateAsync().get();

// See the ETag of the template
System.out.println("ETag: " + template.getEtag());

// Get a parameter
Parameter parameter = template.getParameters().get("header_text");
System.out.println(parameter.getDefaultValue().asString());

// Get a condition
RemoteConfigCondition condition = template.getConditions().get(0);
System.out.println(condition.getName());
System.out.println(condition.getExpression());
System.out.println(condition.getTagColor());

// Publish the template
Template publishedTemplate = FirebaseRemoteConfig.getInstance().publishTemplateAsync(template).get();
System.out.println("Template has been published");
System.out.println("ETag: " + publishedTemplate.getEtag());
