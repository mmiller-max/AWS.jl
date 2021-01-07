# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: iotfleethub
using AWS.Compat
using AWS.UUIDs

"""
    CreateApplication()

Creates a Fleet Hub for AWS IoT Device Management web application.  Fleet Hub for AWS IoT Device Management is in public preview and is subject to change. 

# Required Parameters
- `applicationName`: The name of the web application.
- `roleArn`: The ARN of the role that the web application assumes when it interacts with AWS IoT Core.  The name of the role must be in the form AWSIotFleetHub_random_string . 

# Optional Parameters
- `applicationDescription`: An optional description of the web application.
- `clientToken`: A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.
- `tags`: A set of key/value pairs that you can use to manage the web application resource.
"""
create_application(applicationName, roleArn; aws_config::AWSConfig=global_aws_config()) = iotfleethub("POST", "/applications", Dict{String, Any}("applicationName"=>applicationName, "roleArn"=>roleArn, "clientToken"=>string(uuid4())); aws_config=aws_config)
create_application(applicationName, roleArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = iotfleethub("POST", "/applications", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("applicationName"=>applicationName, "roleArn"=>roleArn, "clientToken"=>string(uuid4())), args)); aws_config=aws_config)

"""
    DeleteApplication()

Deletes a Fleet Hub for AWS IoT Device Management web application.  Fleet Hub for AWS IoT Device Management is in public preview and is subject to change. 

# Required Parameters
- `applicationId`: The unique Id of the web application.

# Optional Parameters
- `clientToken`: A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.
"""
delete_application(applicationId; aws_config::AWSConfig=global_aws_config()) = iotfleethub("DELETE", "/applications/$(applicationId)", Dict{String, Any}("clientToken"=>string(uuid4())); aws_config=aws_config)
delete_application(applicationId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = iotfleethub("DELETE", "/applications/$(applicationId)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("clientToken"=>string(uuid4())), args)); aws_config=aws_config)

"""
    DescribeApplication()

Gets information about a Fleet Hub for AWS IoT Device Management web application.  Fleet Hub for AWS IoT Device Management is in public preview and is subject to change. 

# Required Parameters
- `applicationId`: The unique Id of the web application.

"""
describe_application(applicationId; aws_config::AWSConfig=global_aws_config()) = iotfleethub("GET", "/applications/$(applicationId)"; aws_config=aws_config)
describe_application(applicationId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = iotfleethub("GET", "/applications/$(applicationId)", args; aws_config=aws_config)

"""
    ListApplications()

Gets a list of Fleet Hub for AWS IoT Device Management web applications for the current account.  Fleet Hub for AWS IoT Device Management is in public preview and is subject to change. 

# Optional Parameters
- `nextToken`: A token used to get the next set of results.
"""
list_applications(; aws_config::AWSConfig=global_aws_config()) = iotfleethub("GET", "/applications"; aws_config=aws_config)
list_applications(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = iotfleethub("GET", "/applications", args; aws_config=aws_config)

"""
    ListTagsForResource()

Lists the tags for the specified resource.  Fleet Hub for AWS IoT Device Management is in public preview and is subject to change. 

# Required Parameters
- `resourceArn`: The ARN of the resource.

"""
list_tags_for_resource(resourceArn; aws_config::AWSConfig=global_aws_config()) = iotfleethub("GET", "/tags/$(resourceArn)"; aws_config=aws_config)
list_tags_for_resource(resourceArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = iotfleethub("GET", "/tags/$(resourceArn)", args; aws_config=aws_config)

"""
    TagResource()

Adds to or modifies the tags of the specified resource. Tags are metadata which can be used to manage a resource.  Fleet Hub for AWS IoT Device Management is in public preview and is subject to change. 

# Required Parameters
- `resourceArn`: The ARN of the resource.
- `tags`: The new or modified tags for the resource.

"""
tag_resource(resourceArn, tags; aws_config::AWSConfig=global_aws_config()) = iotfleethub("POST", "/tags/$(resourceArn)", Dict{String, Any}("tags"=>tags); aws_config=aws_config)
tag_resource(resourceArn, tags, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = iotfleethub("POST", "/tags/$(resourceArn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tags"=>tags), args)); aws_config=aws_config)

"""
    UntagResource()

Removes the specified tags (metadata) from the resource.  Fleet Hub for AWS IoT Device Management is in public preview and is subject to change. 

# Required Parameters
- `resourceArn`: The ARN of the resource.
- `tagKeys`: A list of the keys of the tags to be removed from the resource.

"""
untag_resource(resourceArn, tagKeys; aws_config::AWSConfig=global_aws_config()) = iotfleethub("DELETE", "/tags/$(resourceArn)", Dict{String, Any}("tagKeys"=>tagKeys); aws_config=aws_config)
untag_resource(resourceArn, tagKeys, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = iotfleethub("DELETE", "/tags/$(resourceArn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tagKeys"=>tagKeys), args)); aws_config=aws_config)

"""
    UpdateApplication()

Updates information about a Fleet Hub for a AWS IoT Device Management web application.  Fleet Hub for AWS IoT Device Management is in public preview and is subject to change. 

# Required Parameters
- `applicationId`: The unique Id of the web application.

# Optional Parameters
- `applicationDescription`: An optional description of the web application.
- `applicationName`: The name of the web application.
- `clientToken`: A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.
"""
update_application(applicationId; aws_config::AWSConfig=global_aws_config()) = iotfleethub("PATCH", "/applications/$(applicationId)", Dict{String, Any}("clientToken"=>string(uuid4())); aws_config=aws_config)
update_application(applicationId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = iotfleethub("PATCH", "/applications/$(applicationId)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("clientToken"=>string(uuid4())), args)); aws_config=aws_config)
