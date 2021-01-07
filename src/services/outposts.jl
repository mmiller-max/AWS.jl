# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: outposts
using AWS.Compat
using AWS.UUIDs

"""
    CreateOutpost()

Creates an Outpost.

# Required Parameters
- `Name`: 
- `SiteId`: 

# Optional Parameters
- `AvailabilityZone`: 
- `AvailabilityZoneId`: 
- `Description`: 
- `Tags`: The tags to apply to the Outpost.
"""
create_outpost(Name, SiteId; aws_config::AWSConfig=global_aws_config()) = outposts("POST", "/outposts", Dict{String, Any}("Name"=>Name, "SiteId"=>SiteId); aws_config=aws_config)
create_outpost(Name, SiteId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = outposts("POST", "/outposts", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Name"=>Name, "SiteId"=>SiteId), args)); aws_config=aws_config)

"""
    DeleteOutpost()

Deletes the Outpost.

# Required Parameters
- `OutpostId`: 

"""
delete_outpost(OutpostId; aws_config::AWSConfig=global_aws_config()) = outposts("DELETE", "/outposts/$(OutpostId)"; aws_config=aws_config)
delete_outpost(OutpostId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = outposts("DELETE", "/outposts/$(OutpostId)", args; aws_config=aws_config)

"""
    DeleteSite()

Deletes the site.

# Required Parameters
- `SiteId`: 

"""
delete_site(SiteId; aws_config::AWSConfig=global_aws_config()) = outposts("DELETE", "/sites/$(SiteId)"; aws_config=aws_config)
delete_site(SiteId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = outposts("DELETE", "/sites/$(SiteId)", args; aws_config=aws_config)

"""
    GetOutpost()

Gets information about the specified Outpost.

# Required Parameters
- `OutpostId`: 

"""
get_outpost(OutpostId; aws_config::AWSConfig=global_aws_config()) = outposts("GET", "/outposts/$(OutpostId)"; aws_config=aws_config)
get_outpost(OutpostId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = outposts("GET", "/outposts/$(OutpostId)", args; aws_config=aws_config)

"""
    GetOutpostInstanceTypes()

Lists the instance types for the specified Outpost.

# Required Parameters
- `OutpostId`: 

# Optional Parameters
- `MaxResults`: 
- `NextToken`: 
"""
get_outpost_instance_types(OutpostId; aws_config::AWSConfig=global_aws_config()) = outposts("GET", "/outposts/$(OutpostId)/instanceTypes"; aws_config=aws_config)
get_outpost_instance_types(OutpostId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = outposts("GET", "/outposts/$(OutpostId)/instanceTypes", args; aws_config=aws_config)

"""
    ListOutposts()

List the Outposts for your AWS account.

# Optional Parameters
- `MaxResults`: 
- `NextToken`: 
"""
list_outposts(; aws_config::AWSConfig=global_aws_config()) = outposts("GET", "/outposts"; aws_config=aws_config)
list_outposts(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = outposts("GET", "/outposts", args; aws_config=aws_config)

"""
    ListSites()

Lists the sites for the specified AWS account.

# Optional Parameters
- `MaxResults`: 
- `NextToken`: 
"""
list_sites(; aws_config::AWSConfig=global_aws_config()) = outposts("GET", "/sites"; aws_config=aws_config)
list_sites(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = outposts("GET", "/sites", args; aws_config=aws_config)

"""
    ListTagsForResource()

Lists the tags for the specified resource.

# Required Parameters
- `ResourceArn`: The Amazon Resource Name (ARN) of the resource.

"""
list_tags_for_resource(ResourceArn; aws_config::AWSConfig=global_aws_config()) = outposts("GET", "/tags/$(ResourceArn)"; aws_config=aws_config)
list_tags_for_resource(ResourceArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = outposts("GET", "/tags/$(ResourceArn)", args; aws_config=aws_config)

"""
    TagResource()

Adds tags to the specified resource.

# Required Parameters
- `ResourceArn`: The Amazon Resource Name (ARN) of the resource.
- `Tags`: The tags to add to the resource.

"""
tag_resource(ResourceArn, Tags; aws_config::AWSConfig=global_aws_config()) = outposts("POST", "/tags/$(ResourceArn)", Dict{String, Any}("Tags"=>Tags); aws_config=aws_config)
tag_resource(ResourceArn, Tags, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = outposts("POST", "/tags/$(ResourceArn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Tags"=>Tags), args)); aws_config=aws_config)

"""
    UntagResource()

Removes tags from the specified resource.

# Required Parameters
- `ResourceArn`: The Amazon Resource Name (ARN) of the resource.
- `tagKeys`: The tag keys.

"""
untag_resource(ResourceArn, tagKeys; aws_config::AWSConfig=global_aws_config()) = outposts("DELETE", "/tags/$(ResourceArn)", Dict{String, Any}("tagKeys"=>tagKeys); aws_config=aws_config)
untag_resource(ResourceArn, tagKeys, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = outposts("DELETE", "/tags/$(ResourceArn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tagKeys"=>tagKeys), args)); aws_config=aws_config)
