# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: identitystore
using AWS.Compat
using AWS.UUIDs

"""
    describe_group(group_id, identity_store_id)
    describe_group(group_id, identity_store_id, params::Dict{String,<:Any})

Retrieves the group metadata and attributes from GroupId in an identity store.

# Arguments
- `group_id`: The identifier for a group in the identity store.
- `identity_store_id`: The globally unique identifier for the identity store, such as
  d-1234567890. In this example, d- is a fixed prefix, and 1234567890 is a randomly generated
  string which contains number and lower case letters. This value is generated at the time
  that a new identity store is created.

"""
describe_group(GroupId, IdentityStoreId; aws_config::AbstractAWSConfig=global_aws_config()) = identitystore("DescribeGroup", Dict{String, Any}("GroupId"=>GroupId, "IdentityStoreId"=>IdentityStoreId); aws_config=aws_config)
describe_group(GroupId, IdentityStoreId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = identitystore("DescribeGroup", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("GroupId"=>GroupId, "IdentityStoreId"=>IdentityStoreId), params)); aws_config=aws_config)

"""
    describe_user(identity_store_id, user_id)
    describe_user(identity_store_id, user_id, params::Dict{String,<:Any})

Retrieves the user metadata and attributes from UserId in an identity store.

# Arguments
- `identity_store_id`: The globally unique identifier for the identity store, such as
  d-1234567890. In this example, d- is a fixed prefix, and 1234567890 is a randomly generated
  string which contains number and lower case letters. This value is generated at the time
  that a new identity store is created.
- `user_id`: The identifier for a user in the identity store.

"""
describe_user(IdentityStoreId, UserId; aws_config::AbstractAWSConfig=global_aws_config()) = identitystore("DescribeUser", Dict{String, Any}("IdentityStoreId"=>IdentityStoreId, "UserId"=>UserId); aws_config=aws_config)
describe_user(IdentityStoreId, UserId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = identitystore("DescribeUser", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("IdentityStoreId"=>IdentityStoreId, "UserId"=>UserId), params)); aws_config=aws_config)

"""
    list_groups(identity_store_id)
    list_groups(identity_store_id, params::Dict{String,<:Any})

Lists the attribute name and value of the group that you specified in the search. We only
support DisplayName as a valid filter attribute path currently, and filter is required.
This API returns minimum attributes, including GroupId and group DisplayName in the
response.

# Arguments
- `identity_store_id`: The globally unique identifier for the identity store, such as
  d-1234567890. In this example, d- is a fixed prefix, and 1234567890 is a randomly generated
  string which contains number and lower case letters. This value is generated at the time
  that a new identity store is created.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Filters"`: A list of Filter objects, which is used in the ListUsers and ListGroups
  request.
- `"MaxResults"`: The maximum number of results to be returned per request, which is used
  in the ListUsers and ListGroups request to specify how many results to return in one page.
  The length limit is 50 characters.
- `"NextToken"`: The pagination token used for the ListUsers and ListGroups APIs. This
  value is generated by the identity store service and is returned in the API response if the
  total results are more than the size of one page, and when this token is used in the API
  request to search for the next page.
"""
list_groups(IdentityStoreId; aws_config::AbstractAWSConfig=global_aws_config()) = identitystore("ListGroups", Dict{String, Any}("IdentityStoreId"=>IdentityStoreId); aws_config=aws_config)
list_groups(IdentityStoreId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = identitystore("ListGroups", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("IdentityStoreId"=>IdentityStoreId), params)); aws_config=aws_config)

"""
    list_users(identity_store_id)
    list_users(identity_store_id, params::Dict{String,<:Any})

Lists the attribute name and value of the user that you specified in the search. We only
support UserName as a valid filter attribute path currently, and filter is required. This
API returns minimum attributes, including UserId and UserName in the response.

# Arguments
- `identity_store_id`: The globally unique identifier for the identity store, such as
  d-1234567890. In this example, d- is a fixed prefix, and 1234567890 is a randomly generated
  string which contains number and lower case letters. This value is generated at the time
  that a new identity store is created.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Filters"`: A list of Filter objects, which is used in the ListUsers and ListGroups
  request.
- `"MaxResults"`: The maximum number of results to be returned per request, which is used
  in the ListUsers and ListGroups request to specify how many results to return in one page.
  The length limit is 50 characters.
- `"NextToken"`: The pagination token used for the ListUsers and ListGroups APIs. This
  value is generated by the identity store service and is returned in the API response if the
  total results are more than the size of one page, and when this token is used in the API
  request to search for the next page.
"""
list_users(IdentityStoreId; aws_config::AbstractAWSConfig=global_aws_config()) = identitystore("ListUsers", Dict{String, Any}("IdentityStoreId"=>IdentityStoreId); aws_config=aws_config)
list_users(IdentityStoreId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = identitystore("ListUsers", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("IdentityStoreId"=>IdentityStoreId), params)); aws_config=aws_config)
