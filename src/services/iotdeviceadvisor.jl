# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: iotdeviceadvisor
using AWS.Compat
using AWS.UUIDs

"""
    CreateSuiteDefinition()

Creates a Device Advisor test suite.

# Optional Parameters
- `suiteDefinitionConfiguration`: Creates a Device Advisor test suite with suite definition configuration.
- `tags`: The tags to be attached to the suite definition.
"""
create_suite_definition(; aws_config::AWSConfig=global_aws_config()) = iotdeviceadvisor("POST", "/suiteDefinitions"; aws_config=aws_config)
create_suite_definition(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = iotdeviceadvisor("POST", "/suiteDefinitions", args; aws_config=aws_config)

"""
    DeleteSuiteDefinition()

Deletes a Device Advisor test suite.

# Required Parameters
- `suiteDefinitionId`: Deletes a Device Advisor test suite with defined suite Id.

"""
delete_suite_definition(suiteDefinitionId; aws_config::AWSConfig=global_aws_config()) = iotdeviceadvisor("DELETE", "/suiteDefinitions/$(suiteDefinitionId)"; aws_config=aws_config)
delete_suite_definition(suiteDefinitionId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = iotdeviceadvisor("DELETE", "/suiteDefinitions/$(suiteDefinitionId)", args; aws_config=aws_config)

"""
    GetSuiteDefinition()

Gets information about a Device Advisor test suite.

# Required Parameters
- `suiteDefinitionId`: Requests suite definition Id with GetSuiteDefinition API call.

# Optional Parameters
- `suiteDefinitionVersion`: Requests the suite definition version of a test suite.
"""
get_suite_definition(suiteDefinitionId; aws_config::AWSConfig=global_aws_config()) = iotdeviceadvisor("GET", "/suiteDefinitions/$(suiteDefinitionId)"; aws_config=aws_config)
get_suite_definition(suiteDefinitionId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = iotdeviceadvisor("GET", "/suiteDefinitions/$(suiteDefinitionId)", args; aws_config=aws_config)

"""
    GetSuiteRun()

Gets information about a Device Advisor test suite run.

# Required Parameters
- `suiteDefinitionId`: Requests the information about Device Advisor test suite run based on suite definition Id.
- `suiteRunId`: Requests the information about Device Advisor test suite run based on suite run Id.

"""
get_suite_run(suiteDefinitionId, suiteRunId; aws_config::AWSConfig=global_aws_config()) = iotdeviceadvisor("GET", "/suiteDefinitions/$(suiteDefinitionId)/suiteRuns/$(suiteRunId)"; aws_config=aws_config)
get_suite_run(suiteDefinitionId, suiteRunId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = iotdeviceadvisor("GET", "/suiteDefinitions/$(suiteDefinitionId)/suiteRuns/$(suiteRunId)", args; aws_config=aws_config)

"""
    GetSuiteRunReport()

Gets a report download link for a successful Device Advisor qualifying test suite run.

# Required Parameters
- `suiteDefinitionId`: Device Advisor suite definition Id.
- `suiteRunId`: Device Advisor suite run Id.

"""
get_suite_run_report(suiteDefinitionId, suiteRunId; aws_config::AWSConfig=global_aws_config()) = iotdeviceadvisor("GET", "/suiteDefinitions/$(suiteDefinitionId)/suiteRuns/$(suiteRunId)/report"; aws_config=aws_config)
get_suite_run_report(suiteDefinitionId, suiteRunId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = iotdeviceadvisor("GET", "/suiteDefinitions/$(suiteDefinitionId)/suiteRuns/$(suiteRunId)/report", args; aws_config=aws_config)

"""
    ListSuiteDefinitions()

Lists the Device Advisor test suites you have created.

# Optional Parameters
- `maxResults`: Request the list of all the Device Advisor test suites.
- `nextToken`: Requests the Device Advisor test suites next token.
"""
list_suite_definitions(; aws_config::AWSConfig=global_aws_config()) = iotdeviceadvisor("GET", "/suiteDefinitions"; aws_config=aws_config)
list_suite_definitions(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = iotdeviceadvisor("GET", "/suiteDefinitions", args; aws_config=aws_config)

"""
    ListSuiteRuns()

Lists the runs of the specified Device Advisor test suite. You can list all runs of the test suite, or the runs of a specific version of the test suite.

# Optional Parameters
- `maxResults`: MaxResults for list suite run API request.
- `nextToken`: Next pagination token for list suite run request.
- `suiteDefinitionId`: Lists the runs of the specified Device Advisor test suite based on suite definition Id.
- `suiteDefinitionVersion`: Lists the runs of the specified Device Advisor test suite based on suite definition version.
"""
list_suite_runs(; aws_config::AWSConfig=global_aws_config()) = iotdeviceadvisor("GET", "/suiteRuns"; aws_config=aws_config)
list_suite_runs(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = iotdeviceadvisor("GET", "/suiteRuns", args; aws_config=aws_config)

"""
    ListTagsForResource()

Lists the tags attached to an IoT Device Advisor resource.

# Required Parameters
- `resourceArn`: The ARN of the IoT Device Advisor resource.

"""
list_tags_for_resource(resourceArn; aws_config::AWSConfig=global_aws_config()) = iotdeviceadvisor("GET", "/tags/$(resourceArn)"; aws_config=aws_config)
list_tags_for_resource(resourceArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = iotdeviceadvisor("GET", "/tags/$(resourceArn)", args; aws_config=aws_config)

"""
    ListTestCases()

Lists all the test cases in the test suite.

# Optional Parameters
- `intendedForQualification`: Lists all the qualification test cases in the test suite.
- `maxResults`: Requests the test cases max results.
- `nextToken`: Requests the test cases next token.
"""
list_test_cases(; aws_config::AWSConfig=global_aws_config()) = iotdeviceadvisor("GET", "/testCases"; aws_config=aws_config)
list_test_cases(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = iotdeviceadvisor("GET", "/testCases", args; aws_config=aws_config)

"""
    StartSuiteRun()

Starts a Device Advisor test suite run.

# Required Parameters
- `suiteDefinitionId`: Request to start suite run based on suite definition Id.

# Optional Parameters
- `suiteDefinitionVersion`: Request to start suite run based on suite definition version.
- `suiteRunConfiguration`: Request to start suite run based on suite configuration.
- `tags`: The tags to be attached to the suite run.
"""
start_suite_run(suiteDefinitionId; aws_config::AWSConfig=global_aws_config()) = iotdeviceadvisor("POST", "/suiteDefinitions/$(suiteDefinitionId)/suiteRuns"; aws_config=aws_config)
start_suite_run(suiteDefinitionId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = iotdeviceadvisor("POST", "/suiteDefinitions/$(suiteDefinitionId)/suiteRuns", args; aws_config=aws_config)

"""
    TagResource()

Adds to and modifies existing tags of an IoT Device Advisor resource.

# Required Parameters
- `resourceArn`: The resource ARN of an IoT Device Advisor resource.
- `tags`: The tags to be attached to the IoT Device Advisor resource.

"""
tag_resource(resourceArn, tags; aws_config::AWSConfig=global_aws_config()) = iotdeviceadvisor("POST", "/tags/$(resourceArn)", Dict{String, Any}("tags"=>tags); aws_config=aws_config)
tag_resource(resourceArn, tags, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = iotdeviceadvisor("POST", "/tags/$(resourceArn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tags"=>tags), args)); aws_config=aws_config)

"""
    UntagResource()

Removes tags from an IoT Device Advisor resource.

# Required Parameters
- `resourceArn`: The resource ARN of an IoT Device Advisor resource.
- `tagKeys`: List of tag keys to remove from the IoT Device Advisor resource.

"""
untag_resource(resourceArn, tagKeys; aws_config::AWSConfig=global_aws_config()) = iotdeviceadvisor("DELETE", "/tags/$(resourceArn)", Dict{String, Any}("tagKeys"=>tagKeys); aws_config=aws_config)
untag_resource(resourceArn, tagKeys, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = iotdeviceadvisor("DELETE", "/tags/$(resourceArn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tagKeys"=>tagKeys), args)); aws_config=aws_config)

"""
    UpdateSuiteDefinition()

Updates a Device Advisor test suite.

# Required Parameters
- `suiteDefinitionId`: Updates a Device Advisor test suite with suite definition id.

# Optional Parameters
- `suiteDefinitionConfiguration`: Updates a Device Advisor test suite with suite definition configuration.
"""
update_suite_definition(suiteDefinitionId; aws_config::AWSConfig=global_aws_config()) = iotdeviceadvisor("PATCH", "/suiteDefinitions/$(suiteDefinitionId)"; aws_config=aws_config)
update_suite_definition(suiteDefinitionId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = iotdeviceadvisor("PATCH", "/suiteDefinitions/$(suiteDefinitionId)", args; aws_config=aws_config)
