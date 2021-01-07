# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: service_catalog_appregistry
using AWS.Compat
using AWS.UUIDs

"""
    AssociateAttributeGroup()

Associates an attribute group with an application to augment the application's metadata with the group's attributes. This feature enables applications to be described with user-defined details that are machine-readable, such as third-party integrations.

# Required Parameters
- `application`: The name or ID of the application.
- `attributeGroup`: The name or ID of the attribute group that holds the attributes to describe the application.

"""
associate_attribute_group(application, attributeGroup; aws_config::AWSConfig=global_aws_config()) = service_catalog_appregistry("PUT", "/applications/$(application)/attribute-groups/$(attributeGroup)"; aws_config=aws_config)
associate_attribute_group(application, attributeGroup, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = service_catalog_appregistry("PUT", "/applications/$(application)/attribute-groups/$(attributeGroup)", args; aws_config=aws_config)

"""
    AssociateResource()

Associates a resource with an application. Both the resource and the application can be specified either by ID or name.

# Required Parameters
- `application`: The name or ID of the application.
- `resource`: The name or ID of the resource of which the application will be associated.
- `resourceType`: The type of resource of which the application will be associated.

"""
associate_resource(application, resource, resourceType; aws_config::AWSConfig=global_aws_config()) = service_catalog_appregistry("PUT", "/applications/$(application)/resources/$(resourceType)/$(resource)"; aws_config=aws_config)
associate_resource(application, resource, resourceType, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = service_catalog_appregistry("PUT", "/applications/$(application)/resources/$(resourceType)/$(resource)", args; aws_config=aws_config)

"""
    CreateApplication()

Creates a new application that is the top-level node in a hierarchy of related cloud resource abstractions.

# Required Parameters
- `clientToken`: A unique identifier that you provide to ensure idempotency. If you retry a request that completed successfully using the same client token and the same parameters, the retry succeeds without performing any further actions. If you retry a successful request using the same client token, but one or more of the parameters are different, the retry fails.
- `name`: The name of the application. The name must be unique in the region in which you are creating the application.

# Optional Parameters
- `description`: The description of the application.
- `tags`: Key-value pairs you can use to associate with the application.
"""
create_application(clientToken, name; aws_config::AWSConfig=global_aws_config()) = service_catalog_appregistry("POST", "/applications", Dict{String, Any}("clientToken"=>clientToken, "name"=>name); aws_config=aws_config)
create_application(clientToken, name, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = service_catalog_appregistry("POST", "/applications", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("clientToken"=>clientToken, "name"=>name), args)); aws_config=aws_config)

"""
    CreateAttributeGroup()

Creates a new attribute group as a container for user-defined attributes. This feature enables users to have full control over their cloud application's metadata in a rich machine-readable format to facilitate integration with automated workflows and third-party tools.

# Required Parameters
- `attributes`: A JSON string in the form of nested key-value pairs that represent the attributes in the group and describes an application and its components.
- `clientToken`: A unique identifier that you provide to ensure idempotency. If you retry a request that completed successfully using the same client token and the same parameters, the retry succeeds without performing any further actions. If you retry a successful request using the same client token, but one or more of the parameters are different, the retry fails.
- `name`: The name of the attribute group.

# Optional Parameters
- `description`: The description of the attribute group that the user provides.
- `tags`: Key-value pairs you can use to associate with the attribute group.
"""
create_attribute_group(attributes, clientToken, name; aws_config::AWSConfig=global_aws_config()) = service_catalog_appregistry("POST", "/attribute-groups", Dict{String, Any}("attributes"=>attributes, "clientToken"=>clientToken, "name"=>name); aws_config=aws_config)
create_attribute_group(attributes, clientToken, name, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = service_catalog_appregistry("POST", "/attribute-groups", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("attributes"=>attributes, "clientToken"=>clientToken, "name"=>name), args)); aws_config=aws_config)

"""
    DeleteApplication()

Deletes an application that is specified either by its application ID or name. All associated attribute groups and resources must be disassociated from it before deleting an application.

# Required Parameters
- `application`: The name or ID of the application.

"""
delete_application(application; aws_config::AWSConfig=global_aws_config()) = service_catalog_appregistry("DELETE", "/applications/$(application)"; aws_config=aws_config)
delete_application(application, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = service_catalog_appregistry("DELETE", "/applications/$(application)", args; aws_config=aws_config)

"""
    DeleteAttributeGroup()

Deletes an attribute group, specified either by its attribute group ID or name.

# Required Parameters
- `attributeGroup`: The name or ID of the attribute group that holds the attributes to describe the application.

"""
delete_attribute_group(attributeGroup; aws_config::AWSConfig=global_aws_config()) = service_catalog_appregistry("DELETE", "/attribute-groups/$(attributeGroup)"; aws_config=aws_config)
delete_attribute_group(attributeGroup, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = service_catalog_appregistry("DELETE", "/attribute-groups/$(attributeGroup)", args; aws_config=aws_config)

"""
    DisassociateAttributeGroup()

Disassociates an attribute group from an application to remove the extra attributes contained in the attribute group from the application's metadata. This operation reverts AssociateAttributeGroup.

# Required Parameters
- `application`: The name or ID of the application.
- `attributeGroup`: The name or ID of the attribute group that holds the attributes to describe the application.

"""
disassociate_attribute_group(application, attributeGroup; aws_config::AWSConfig=global_aws_config()) = service_catalog_appregistry("DELETE", "/applications/$(application)/attribute-groups/$(attributeGroup)"; aws_config=aws_config)
disassociate_attribute_group(application, attributeGroup, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = service_catalog_appregistry("DELETE", "/applications/$(application)/attribute-groups/$(attributeGroup)", args; aws_config=aws_config)

"""
    DisassociateResource()

Disassociates a resource from application. Both the resource and the application can be specified either by ID or name.

# Required Parameters
- `application`: The name or ID of the application.
- `resource`: The name or ID of the resource.
- `resourceType`: The type of the resource that is being disassociated.

"""
disassociate_resource(application, resource, resourceType; aws_config::AWSConfig=global_aws_config()) = service_catalog_appregistry("DELETE", "/applications/$(application)/resources/$(resourceType)/$(resource)"; aws_config=aws_config)
disassociate_resource(application, resource, resourceType, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = service_catalog_appregistry("DELETE", "/applications/$(application)/resources/$(resourceType)/$(resource)", args; aws_config=aws_config)

"""
    GetApplication()

Retrieves metadata information about one of your applications. The application can be specified either by its unique ID or by its name (which is unique within one account in one region at a given point in time). Specify by ID in automated workflows if you want to make sure that the exact same application is returned or a ResourceNotFoundException is thrown, avoiding the ABA addressing problem.

# Required Parameters
- `application`: The name or ID of the application.

"""
get_application(application; aws_config::AWSConfig=global_aws_config()) = service_catalog_appregistry("GET", "/applications/$(application)"; aws_config=aws_config)
get_application(application, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = service_catalog_appregistry("GET", "/applications/$(application)", args; aws_config=aws_config)

"""
    GetAttributeGroup()

Retrieves an attribute group, either by its name or its ID. The attribute group can be specified either by its unique ID or by its name.

# Required Parameters
- `attributeGroup`: The name or ID of the attribute group that holds the attributes to describe the application.

"""
get_attribute_group(attributeGroup; aws_config::AWSConfig=global_aws_config()) = service_catalog_appregistry("GET", "/attribute-groups/$(attributeGroup)"; aws_config=aws_config)
get_attribute_group(attributeGroup, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = service_catalog_appregistry("GET", "/attribute-groups/$(attributeGroup)", args; aws_config=aws_config)

"""
    ListApplications()

Retrieves a list of all of your applications. Results are paginated.

# Optional Parameters
- `maxResults`: The upper bound of the number of results to return (cannot exceed 25). If this parameter is omitted, it defaults to 25. This value is optional.
- `nextToken`: The token to use to get the next page of results after a previous API call. 
"""
list_applications(; aws_config::AWSConfig=global_aws_config()) = service_catalog_appregistry("GET", "/applications"; aws_config=aws_config)
list_applications(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = service_catalog_appregistry("GET", "/applications", args; aws_config=aws_config)

"""
    ListAssociatedAttributeGroups()

Lists all attribute groups that are associated with specified application. Results are paginated.

# Required Parameters
- `application`: The name or ID of the application.

# Optional Parameters
- `maxResults`: The upper bound of the number of results to return (cannot exceed 25). If this parameter is omitted, it defaults to 25. This value is optional.
- `nextToken`: The token to use to get the next page of results after a previous API call. 
"""
list_associated_attribute_groups(application; aws_config::AWSConfig=global_aws_config()) = service_catalog_appregistry("GET", "/applications/$(application)/attribute-groups"; aws_config=aws_config)
list_associated_attribute_groups(application, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = service_catalog_appregistry("GET", "/applications/$(application)/attribute-groups", args; aws_config=aws_config)

"""
    ListAssociatedResources()

Lists all resources that are associated with specified application. Results are paginated.

# Required Parameters
- `application`: The name or ID of the application.

# Optional Parameters
- `maxResults`: The upper bound of the number of results to return (cannot exceed 25). If this parameter is omitted, it defaults to 25. This value is optional.
- `nextToken`: The token to use to get the next page of results after a previous API call. 
"""
list_associated_resources(application; aws_config::AWSConfig=global_aws_config()) = service_catalog_appregistry("GET", "/applications/$(application)/resources"; aws_config=aws_config)
list_associated_resources(application, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = service_catalog_appregistry("GET", "/applications/$(application)/resources", args; aws_config=aws_config)

"""
    ListAttributeGroups()

Lists all attribute groups which you have access to. Results are paginated.

# Optional Parameters
- `maxResults`: The upper bound of the number of results to return (cannot exceed 25). If this parameter is omitted, it defaults to 25. This value is optional.
- `nextToken`: The token to use to get the next page of results after a previous API call. 
"""
list_attribute_groups(; aws_config::AWSConfig=global_aws_config()) = service_catalog_appregistry("GET", "/attribute-groups"; aws_config=aws_config)
list_attribute_groups(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = service_catalog_appregistry("GET", "/attribute-groups", args; aws_config=aws_config)

"""
    ListTagsForResource()

Lists all of the tags on the resource.

# Required Parameters
- `resourceArn`: The Amazon resource name (ARN) that specifies the resource.

"""
list_tags_for_resource(resourceArn; aws_config::AWSConfig=global_aws_config()) = service_catalog_appregistry("GET", "/tags/$(resourceArn)"; aws_config=aws_config)
list_tags_for_resource(resourceArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = service_catalog_appregistry("GET", "/tags/$(resourceArn)", args; aws_config=aws_config)

"""
    SyncResource()

Syncs the resource with what is currently recorded in App registry. Specifically, the resource’s App registry system tags are synced with its associated application. The resource is removed if it is not associated with the application. The caller must have permissions to read and update the resource.

# Required Parameters
- `resource`: An entity you can work with and specify with a name or ID. Examples include an Amazon EC2 instance, an AWS CloudFormation stack, or an Amazon S3 bucket.
- `resourceType`: The type of resource of which the application will be associated.

"""
sync_resource(resource, resourceType; aws_config::AWSConfig=global_aws_config()) = service_catalog_appregistry("POST", "/sync/$(resourceType)/$(resource)"; aws_config=aws_config)
sync_resource(resource, resourceType, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = service_catalog_appregistry("POST", "/sync/$(resourceType)/$(resource)", args; aws_config=aws_config)

"""
    TagResource()

Assigns one or more tags (key-value pairs) to the specified resource. Each tag consists of a key and an optional value. If a tag with the same key is already associated with the resource, this action updates its value. This operation returns an empty response if the call was successful.

# Required Parameters
- `resourceArn`: The Amazon resource name (ARN) that specifies the resource.
- `tags`: The new or modified tags for the resource.

"""
tag_resource(resourceArn, tags; aws_config::AWSConfig=global_aws_config()) = service_catalog_appregistry("POST", "/tags/$(resourceArn)", Dict{String, Any}("tags"=>tags); aws_config=aws_config)
tag_resource(resourceArn, tags, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = service_catalog_appregistry("POST", "/tags/$(resourceArn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tags"=>tags), args)); aws_config=aws_config)

"""
    UntagResource()

Removes tags from a resource. This operation returns an empty response if the call was successful.

# Required Parameters
- `resourceArn`: The Amazon resource name (ARN) that specifies the resource.
- `tagKeys`: A list of the tag keys to remove from the specified resource.

"""
untag_resource(resourceArn, tagKeys; aws_config::AWSConfig=global_aws_config()) = service_catalog_appregistry("DELETE", "/tags/$(resourceArn)", Dict{String, Any}("tagKeys"=>tagKeys); aws_config=aws_config)
untag_resource(resourceArn, tagKeys, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = service_catalog_appregistry("DELETE", "/tags/$(resourceArn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tagKeys"=>tagKeys), args)); aws_config=aws_config)

"""
    UpdateApplication()

Updates an existing application with new attributes.

# Required Parameters
- `application`: The name or ID of the application that will be updated.

# Optional Parameters
- `description`: The new description of the application.
- `name`: The new name of the application. The name must be unique in the region in which you are updating the application.
"""
update_application(application; aws_config::AWSConfig=global_aws_config()) = service_catalog_appregistry("PATCH", "/applications/$(application)"; aws_config=aws_config)
update_application(application, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = service_catalog_appregistry("PATCH", "/applications/$(application)", args; aws_config=aws_config)

"""
    UpdateAttributeGroup()

Updates an existing attribute group with new details. 

# Required Parameters
- `attributeGroup`: The name or ID of the attribute group that holds the attributes to describe the application.

# Optional Parameters
- `attributes`: A JSON string in the form of nested key-value pairs that represent the attributes in the group and describes an application and its components.
- `description`: The description of the attribute group that the user provides.
- `name`: The new name of the attribute group. The name must be unique in the region in which you are updating the attribute group.
"""
update_attribute_group(attributeGroup; aws_config::AWSConfig=global_aws_config()) = service_catalog_appregistry("PATCH", "/attribute-groups/$(attributeGroup)"; aws_config=aws_config)
update_attribute_group(attributeGroup, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = service_catalog_appregistry("PATCH", "/attribute-groups/$(attributeGroup)", args; aws_config=aws_config)
