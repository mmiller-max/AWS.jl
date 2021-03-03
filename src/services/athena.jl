# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: athena
using AWS.Compat
using AWS.UUIDs

"""
    batch_get_named_query(named_query_ids)
    batch_get_named_query(named_query_ids, params::Dict{String,<:Any})

Returns the details of a single named query or a list of up to 50 queries, which you
provide as an array of query ID strings. Requires you to have access to the workgroup in
which the queries were saved. Use ListNamedQueriesInput to get the list of named query IDs
in the specified workgroup. If information could not be retrieved for a submitted query ID,
information about the query ID submitted is listed under UnprocessedNamedQueryId. Named
queries differ from executed queries. Use BatchGetQueryExecutionInput to get details about
each unique query execution, and ListQueryExecutionsInput to get a list of query execution
IDs.

# Arguments
- `named_query_ids`: An array of query IDs.

"""
batch_get_named_query(NamedQueryIds; aws_config::AbstractAWSConfig=global_aws_config()) = athena("BatchGetNamedQuery", Dict{String, Any}("NamedQueryIds"=>NamedQueryIds); aws_config=aws_config)
batch_get_named_query(NamedQueryIds, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = athena("BatchGetNamedQuery", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("NamedQueryIds"=>NamedQueryIds), params)); aws_config=aws_config)

"""
    batch_get_query_execution(query_execution_ids)
    batch_get_query_execution(query_execution_ids, params::Dict{String,<:Any})

Returns the details of a single query execution or a list of up to 50 query executions,
which you provide as an array of query execution ID strings. Requires you to have access to
the workgroup in which the queries ran. To get a list of query execution IDs, use
ListQueryExecutionsInputWorkGroup. Query executions differ from named (saved) queries. Use
BatchGetNamedQueryInput to get details about named queries.

# Arguments
- `query_execution_ids`: An array of query execution IDs.

"""
batch_get_query_execution(QueryExecutionIds; aws_config::AbstractAWSConfig=global_aws_config()) = athena("BatchGetQueryExecution", Dict{String, Any}("QueryExecutionIds"=>QueryExecutionIds); aws_config=aws_config)
batch_get_query_execution(QueryExecutionIds, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = athena("BatchGetQueryExecution", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("QueryExecutionIds"=>QueryExecutionIds), params)); aws_config=aws_config)

"""
    create_data_catalog(name, type)
    create_data_catalog(name, type, params::Dict{String,<:Any})

Creates (registers) a data catalog with the specified name and properties. Catalogs created
are visible to all users of the same AWS account.

# Arguments
- `name`: The name of the data catalog to create. The catalog name must be unique for the
  AWS account and can use a maximum of 128 alphanumeric, underscore, at sign, or hyphen
  characters.
- `type`: The type of data catalog to create: LAMBDA for a federated catalog or HIVE for an
  external hive metastore.  Do not use the GLUE type. This refers to the AwsDataCatalog that
  already exists in your account, of which you can have only one. Specifying the GLUE type
  will result in an INVALID_INPUT error.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Description"`: A description of the data catalog to be created.
- `"Parameters"`: Specifies the Lambda function or functions to use for creating the data
  catalog. This is a mapping whose values depend on the catalog type.    For the HIVE data
  catalog type, use the following syntax. The metadata-function parameter is required. The
  sdk-version parameter is optional and defaults to the currently supported version.
  metadata-function=lambda_arn, sdk-version=version_number     For the LAMBDA data catalog
  type, use one of the following sets of required parameters, but not both.   If you have one
  Lambda function that processes metadata and another for reading the actual data, use the
  following syntax. Both parameters are required.  metadata-function=lambda_arn,
  record-function=lambda_arn      If you have a composite Lambda function that processes both
  metadata and data, use the following syntax to specify your Lambda function.
  function=lambda_arn
- `"Tags"`: A list of comma separated tags to add to the data catalog that is created.
"""
create_data_catalog(Name, Type; aws_config::AbstractAWSConfig=global_aws_config()) = athena("CreateDataCatalog", Dict{String, Any}("Name"=>Name, "Type"=>Type); aws_config=aws_config)
create_data_catalog(Name, Type, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = athena("CreateDataCatalog", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Name"=>Name, "Type"=>Type), params)); aws_config=aws_config)

"""
    create_named_query(database, name, query_string)
    create_named_query(database, name, query_string, params::Dict{String,<:Any})

Creates a named query in the specified workgroup. Requires that you have access to the
workgroup. For code samples using the AWS SDK for Java, see Examples and Code Samples in
the Amazon Athena User Guide.

# Arguments
- `database`: The database to which the query belongs.
- `name`: The query name.
- `query_string`: The contents of the query with all query statements.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"ClientRequestToken"`: A unique case-sensitive string used to ensure the request to
  create the query is idempotent (executes only once). If another CreateNamedQuery request is
  received, the same response is returned and another query is not created. If a parameter
  has changed, for example, the QueryString, an error is returned.  This token is listed as
  not required because AWS SDKs (for example the AWS SDK for Java) auto-generate the token
  for users. If you are not using the AWS SDK or the AWS CLI, you must provide this token or
  the action will fail.
- `"Description"`: The query description.
- `"WorkGroup"`: The name of the workgroup in which the named query is being created.
"""
create_named_query(Database, Name, QueryString; aws_config::AbstractAWSConfig=global_aws_config()) = athena("CreateNamedQuery", Dict{String, Any}("Database"=>Database, "Name"=>Name, "QueryString"=>QueryString, "ClientRequestToken"=>string(uuid4())); aws_config=aws_config)
create_named_query(Database, Name, QueryString, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = athena("CreateNamedQuery", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Database"=>Database, "Name"=>Name, "QueryString"=>QueryString, "ClientRequestToken"=>string(uuid4())), params)); aws_config=aws_config)

"""
    create_work_group(name)
    create_work_group(name, params::Dict{String,<:Any})

Creates a workgroup with the specified name.

# Arguments
- `name`: The workgroup name.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Configuration"`: The configuration for the workgroup, which includes the location in
  Amazon S3 where query results are stored, the encryption configuration, if any, used for
  encrypting query results, whether the Amazon CloudWatch Metrics are enabled for the
  workgroup, the limit for the amount of bytes scanned (cutoff) per query, if it is
  specified, and whether workgroup's settings (specified with EnforceWorkGroupConfiguration)
  in the WorkGroupConfiguration override client-side settings. See
  WorkGroupConfigurationEnforceWorkGroupConfiguration.
- `"Description"`: The workgroup description.
- `"Tags"`: A list of comma separated tags to add to the workgroup that is created.
"""
create_work_group(Name; aws_config::AbstractAWSConfig=global_aws_config()) = athena("CreateWorkGroup", Dict{String, Any}("Name"=>Name); aws_config=aws_config)
create_work_group(Name, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = athena("CreateWorkGroup", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Name"=>Name), params)); aws_config=aws_config)

"""
    delete_data_catalog(name)
    delete_data_catalog(name, params::Dict{String,<:Any})

Deletes a data catalog.

# Arguments
- `name`: The name of the data catalog to delete.

"""
delete_data_catalog(Name; aws_config::AbstractAWSConfig=global_aws_config()) = athena("DeleteDataCatalog", Dict{String, Any}("Name"=>Name); aws_config=aws_config)
delete_data_catalog(Name, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = athena("DeleteDataCatalog", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Name"=>Name), params)); aws_config=aws_config)

"""
    delete_named_query(named_query_id)
    delete_named_query(named_query_id, params::Dict{String,<:Any})

Deletes the named query if you have access to the workgroup in which the query was saved.
For code samples using the AWS SDK for Java, see Examples and Code Samples in the Amazon
Athena User Guide.

# Arguments
- `named_query_id`: The unique ID of the query to delete.

"""
delete_named_query(NamedQueryId; aws_config::AbstractAWSConfig=global_aws_config()) = athena("DeleteNamedQuery", Dict{String, Any}("NamedQueryId"=>NamedQueryId); aws_config=aws_config)
delete_named_query(NamedQueryId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = athena("DeleteNamedQuery", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("NamedQueryId"=>NamedQueryId), params)); aws_config=aws_config)

"""
    delete_work_group(work_group)
    delete_work_group(work_group, params::Dict{String,<:Any})

Deletes the workgroup with the specified name. The primary workgroup cannot be deleted.

# Arguments
- `work_group`: The unique name of the workgroup to delete.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"RecursiveDeleteOption"`: The option to delete the workgroup and its contents even if
  the workgroup contains any named queries or query executions.
"""
delete_work_group(WorkGroup; aws_config::AbstractAWSConfig=global_aws_config()) = athena("DeleteWorkGroup", Dict{String, Any}("WorkGroup"=>WorkGroup); aws_config=aws_config)
delete_work_group(WorkGroup, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = athena("DeleteWorkGroup", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("WorkGroup"=>WorkGroup), params)); aws_config=aws_config)

"""
    get_data_catalog(name)
    get_data_catalog(name, params::Dict{String,<:Any})

Returns the specified data catalog.

# Arguments
- `name`: The name of the data catalog to return.

"""
get_data_catalog(Name; aws_config::AbstractAWSConfig=global_aws_config()) = athena("GetDataCatalog", Dict{String, Any}("Name"=>Name); aws_config=aws_config)
get_data_catalog(Name, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = athena("GetDataCatalog", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Name"=>Name), params)); aws_config=aws_config)

"""
    get_database(catalog_name, database_name)
    get_database(catalog_name, database_name, params::Dict{String,<:Any})

Returns a database object for the specified database and data catalog.

# Arguments
- `catalog_name`: The name of the data catalog that contains the database to return.
- `database_name`: The name of the database to return.

"""
get_database(CatalogName, DatabaseName; aws_config::AbstractAWSConfig=global_aws_config()) = athena("GetDatabase", Dict{String, Any}("CatalogName"=>CatalogName, "DatabaseName"=>DatabaseName); aws_config=aws_config)
get_database(CatalogName, DatabaseName, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = athena("GetDatabase", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("CatalogName"=>CatalogName, "DatabaseName"=>DatabaseName), params)); aws_config=aws_config)

"""
    get_named_query(named_query_id)
    get_named_query(named_query_id, params::Dict{String,<:Any})

Returns information about a single query. Requires that you have access to the workgroup in
which the query was saved.

# Arguments
- `named_query_id`: The unique ID of the query. Use ListNamedQueries to get query IDs.

"""
get_named_query(NamedQueryId; aws_config::AbstractAWSConfig=global_aws_config()) = athena("GetNamedQuery", Dict{String, Any}("NamedQueryId"=>NamedQueryId); aws_config=aws_config)
get_named_query(NamedQueryId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = athena("GetNamedQuery", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("NamedQueryId"=>NamedQueryId), params)); aws_config=aws_config)

"""
    get_query_execution(query_execution_id)
    get_query_execution(query_execution_id, params::Dict{String,<:Any})

Returns information about a single execution of a query if you have access to the workgroup
in which the query ran. Each time a query executes, information about the query execution
is saved with a unique ID.

# Arguments
- `query_execution_id`: The unique ID of the query execution.

"""
get_query_execution(QueryExecutionId; aws_config::AbstractAWSConfig=global_aws_config()) = athena("GetQueryExecution", Dict{String, Any}("QueryExecutionId"=>QueryExecutionId); aws_config=aws_config)
get_query_execution(QueryExecutionId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = athena("GetQueryExecution", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("QueryExecutionId"=>QueryExecutionId), params)); aws_config=aws_config)

"""
    get_query_results(query_execution_id)
    get_query_results(query_execution_id, params::Dict{String,<:Any})

Streams the results of a single query execution specified by QueryExecutionId from the
Athena query results location in Amazon S3. For more information, see Query Results in the
Amazon Athena User Guide. This request does not execute the query but returns results. Use
StartQueryExecution to run a query. To stream query results successfully, the IAM principal
with permission to call GetQueryResults also must have permissions to the Amazon S3
GetObject action for the Athena query results location.  IAM principals with permission to
the Amazon S3 GetObject action for the query results location are able to retrieve query
results from Amazon S3 even if permission to the GetQueryResults action is denied. To
restrict user or role access, ensure that Amazon S3 permissions to the Athena query
location are denied.

# Arguments
- `query_execution_id`: The unique ID of the query execution.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The maximum number of results (rows) to return in this request.
- `"NextToken"`: A token generated by the Athena service that specifies where to continue
  pagination if a previous request was truncated. To obtain the next set of pages, pass in
  the NextToken from the response object of the previous page call.
"""
get_query_results(QueryExecutionId; aws_config::AbstractAWSConfig=global_aws_config()) = athena("GetQueryResults", Dict{String, Any}("QueryExecutionId"=>QueryExecutionId); aws_config=aws_config)
get_query_results(QueryExecutionId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = athena("GetQueryResults", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("QueryExecutionId"=>QueryExecutionId), params)); aws_config=aws_config)

"""
    get_table_metadata(catalog_name, database_name, table_name)
    get_table_metadata(catalog_name, database_name, table_name, params::Dict{String,<:Any})

Returns table metadata for the specified catalog, database, and table.

# Arguments
- `catalog_name`: The name of the data catalog that contains the database and table
  metadata to return.
- `database_name`: The name of the database that contains the table metadata to return.
- `table_name`: The name of the table for which metadata is returned.

"""
get_table_metadata(CatalogName, DatabaseName, TableName; aws_config::AbstractAWSConfig=global_aws_config()) = athena("GetTableMetadata", Dict{String, Any}("CatalogName"=>CatalogName, "DatabaseName"=>DatabaseName, "TableName"=>TableName); aws_config=aws_config)
get_table_metadata(CatalogName, DatabaseName, TableName, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = athena("GetTableMetadata", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("CatalogName"=>CatalogName, "DatabaseName"=>DatabaseName, "TableName"=>TableName), params)); aws_config=aws_config)

"""
    get_work_group(work_group)
    get_work_group(work_group, params::Dict{String,<:Any})

Returns information about the workgroup with the specified name.

# Arguments
- `work_group`: The name of the workgroup.

"""
get_work_group(WorkGroup; aws_config::AbstractAWSConfig=global_aws_config()) = athena("GetWorkGroup", Dict{String, Any}("WorkGroup"=>WorkGroup); aws_config=aws_config)
get_work_group(WorkGroup, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = athena("GetWorkGroup", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("WorkGroup"=>WorkGroup), params)); aws_config=aws_config)

"""
    list_data_catalogs()
    list_data_catalogs(params::Dict{String,<:Any})

Lists the data catalogs in the current AWS account.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: Specifies the maximum number of data catalogs to return.
- `"NextToken"`: A token generated by the Athena service that specifies where to continue
  pagination if a previous request was truncated. To obtain the next set of pages, pass in
  the NextToken from the response object of the previous page call.
"""
list_data_catalogs(; aws_config::AbstractAWSConfig=global_aws_config()) = athena("ListDataCatalogs"; aws_config=aws_config)
list_data_catalogs(params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = athena("ListDataCatalogs", params; aws_config=aws_config)

"""
    list_databases(catalog_name)
    list_databases(catalog_name, params::Dict{String,<:Any})

Lists the databases in the specified data catalog.

# Arguments
- `catalog_name`: The name of the data catalog that contains the databases to return.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: Specifies the maximum number of results to return.
- `"NextToken"`: A token generated by the Athena service that specifies where to continue
  pagination if a previous request was truncated. To obtain the next set of pages, pass in
  the NextToken from the response object of the previous page call.
"""
list_databases(CatalogName; aws_config::AbstractAWSConfig=global_aws_config()) = athena("ListDatabases", Dict{String, Any}("CatalogName"=>CatalogName); aws_config=aws_config)
list_databases(CatalogName, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = athena("ListDatabases", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("CatalogName"=>CatalogName), params)); aws_config=aws_config)

"""
    list_engine_versions()
    list_engine_versions(params::Dict{String,<:Any})

Returns a list of engine versions that are available to choose from, including the Auto
option.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The maximum number of engine versions to return in this request.
- `"NextToken"`: A token generated by the Athena service that specifies where to continue
  pagination if a previous request was truncated. To obtain the next set of pages, pass in
  the NextToken from the response object of the previous page call.
"""
list_engine_versions(; aws_config::AbstractAWSConfig=global_aws_config()) = athena("ListEngineVersions"; aws_config=aws_config)
list_engine_versions(params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = athena("ListEngineVersions", params; aws_config=aws_config)

"""
    list_named_queries()
    list_named_queries(params::Dict{String,<:Any})

Provides a list of available query IDs only for queries saved in the specified workgroup.
Requires that you have access to the specified workgroup. If a workgroup is not specified,
lists the saved queries for the primary workgroup. For code samples using the AWS SDK for
Java, see Examples and Code Samples in the Amazon Athena User Guide.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The maximum number of queries to return in this request.
- `"NextToken"`: A token generated by the Athena service that specifies where to continue
  pagination if a previous request was truncated. To obtain the next set of pages, pass in
  the NextToken from the response object of the previous page call.
- `"WorkGroup"`: The name of the workgroup from which the named queries are being returned.
  If a workgroup is not specified, the saved queries for the primary workgroup are returned.
"""
list_named_queries(; aws_config::AbstractAWSConfig=global_aws_config()) = athena("ListNamedQueries"; aws_config=aws_config)
list_named_queries(params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = athena("ListNamedQueries", params; aws_config=aws_config)

"""
    list_query_executions()
    list_query_executions(params::Dict{String,<:Any})

Provides a list of available query execution IDs for the queries in the specified
workgroup. If a workgroup is not specified, returns a list of query execution IDs for the
primary workgroup. Requires you to have access to the workgroup in which the queries ran.
For code samples using the AWS SDK for Java, see Examples and Code Samples in the Amazon
Athena User Guide.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The maximum number of query executions to return in this request.
- `"NextToken"`: A token generated by the Athena service that specifies where to continue
  pagination if a previous request was truncated. To obtain the next set of pages, pass in
  the NextToken from the response object of the previous page call.
- `"WorkGroup"`: The name of the workgroup from which queries are being returned. If a
  workgroup is not specified, a list of available query execution IDs for the queries in the
  primary workgroup is returned.
"""
list_query_executions(; aws_config::AbstractAWSConfig=global_aws_config()) = athena("ListQueryExecutions"; aws_config=aws_config)
list_query_executions(params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = athena("ListQueryExecutions", params; aws_config=aws_config)

"""
    list_table_metadata(catalog_name, database_name)
    list_table_metadata(catalog_name, database_name, params::Dict{String,<:Any})

Lists the metadata for the tables in the specified data catalog database.

# Arguments
- `catalog_name`: The name of the data catalog for which table metadata should be returned.
- `database_name`: The name of the database for which table metadata should be returned.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Expression"`: A regex filter that pattern-matches table names. If no expression is
  supplied, metadata for all tables are listed.
- `"MaxResults"`: Specifies the maximum number of results to return.
- `"NextToken"`: A token generated by the Athena service that specifies where to continue
  pagination if a previous request was truncated. To obtain the next set of pages, pass in
  the NextToken from the response object of the previous page call.
"""
list_table_metadata(CatalogName, DatabaseName; aws_config::AbstractAWSConfig=global_aws_config()) = athena("ListTableMetadata", Dict{String, Any}("CatalogName"=>CatalogName, "DatabaseName"=>DatabaseName); aws_config=aws_config)
list_table_metadata(CatalogName, DatabaseName, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = athena("ListTableMetadata", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("CatalogName"=>CatalogName, "DatabaseName"=>DatabaseName), params)); aws_config=aws_config)

"""
    list_tags_for_resource(resource_arn)
    list_tags_for_resource(resource_arn, params::Dict{String,<:Any})

Lists the tags associated with an Athena workgroup or data catalog resource.

# Arguments
- `resource_arn`: Lists the tags for the resource with the specified ARN.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The maximum number of results to be returned per request that lists the
  tags for the resource.
- `"NextToken"`: The token for the next set of results, or null if there are no additional
  results for this request, where the request lists the tags for the resource with the
  specified ARN.
"""
list_tags_for_resource(ResourceARN; aws_config::AbstractAWSConfig=global_aws_config()) = athena("ListTagsForResource", Dict{String, Any}("ResourceARN"=>ResourceARN); aws_config=aws_config)
list_tags_for_resource(ResourceARN, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = athena("ListTagsForResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceARN"=>ResourceARN), params)); aws_config=aws_config)

"""
    list_work_groups()
    list_work_groups(params::Dict{String,<:Any})

Lists available workgroups for the account.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The maximum number of workgroups to return in this request.
- `"NextToken"`: A token generated by the Athena service that specifies where to continue
  pagination if a previous request was truncated. To obtain the next set of pages, pass in
  the NextToken from the response object of the previous page call.
"""
list_work_groups(; aws_config::AbstractAWSConfig=global_aws_config()) = athena("ListWorkGroups"; aws_config=aws_config)
list_work_groups(params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = athena("ListWorkGroups", params; aws_config=aws_config)

"""
    start_query_execution(query_string)
    start_query_execution(query_string, params::Dict{String,<:Any})

Runs the SQL query statements contained in the Query. Requires you to have access to the
workgroup in which the query ran. Running queries against an external catalog requires
GetDataCatalog permission to the catalog. For code samples using the AWS SDK for Java, see
Examples and Code Samples in the Amazon Athena User Guide.

# Arguments
- `query_string`: The SQL query statements to be executed.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"ClientRequestToken"`: A unique case-sensitive string used to ensure the request to
  create the query is idempotent (executes only once). If another StartQueryExecution request
  is received, the same response is returned and another query is not created. If a parameter
  has changed, for example, the QueryString, an error is returned.  This token is listed as
  not required because AWS SDKs (for example the AWS SDK for Java) auto-generate the token
  for users. If you are not using the AWS SDK or the AWS CLI, you must provide this token or
  the action will fail.
- `"QueryExecutionContext"`: The database within which the query executes.
- `"ResultConfiguration"`: Specifies information about where and how to save the results of
  the query execution. If the query runs in a workgroup, then workgroup's settings may
  override query settings. This affects the query results location. The workgroup settings
  override is specified in EnforceWorkGroupConfiguration (true/false) in the
  WorkGroupConfiguration. See WorkGroupConfigurationEnforceWorkGroupConfiguration.
- `"WorkGroup"`: The name of the workgroup in which the query is being started.
"""
start_query_execution(QueryString; aws_config::AbstractAWSConfig=global_aws_config()) = athena("StartQueryExecution", Dict{String, Any}("QueryString"=>QueryString, "ClientRequestToken"=>string(uuid4())); aws_config=aws_config)
start_query_execution(QueryString, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = athena("StartQueryExecution", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("QueryString"=>QueryString, "ClientRequestToken"=>string(uuid4())), params)); aws_config=aws_config)

"""
    stop_query_execution(query_execution_id)
    stop_query_execution(query_execution_id, params::Dict{String,<:Any})

Stops a query execution. Requires you to have access to the workgroup in which the query
ran. For code samples using the AWS SDK for Java, see Examples and Code Samples in the
Amazon Athena User Guide.

# Arguments
- `query_execution_id`: The unique ID of the query execution to stop.

"""
stop_query_execution(QueryExecutionId; aws_config::AbstractAWSConfig=global_aws_config()) = athena("StopQueryExecution", Dict{String, Any}("QueryExecutionId"=>QueryExecutionId); aws_config=aws_config)
stop_query_execution(QueryExecutionId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = athena("StopQueryExecution", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("QueryExecutionId"=>QueryExecutionId), params)); aws_config=aws_config)

"""
    tag_resource(resource_arn, tags)
    tag_resource(resource_arn, tags, params::Dict{String,<:Any})

Adds one or more tags to an Athena resource. A tag is a label that you assign to a
resource. In Athena, a resource can be a workgroup or data catalog. Each tag consists of a
key and an optional value, both of which you define. For example, you can use tags to
categorize Athena workgroups or data catalogs by purpose, owner, or environment. Use a
consistent set of tag keys to make it easier to search and filter workgroups or data
catalogs in your account. For best practices, see Tagging Best Practices. Tag keys can be
from 1 to 128 UTF-8 Unicode characters, and tag values can be from 0 to 256 UTF-8 Unicode
characters. Tags can use letters and numbers representable in UTF-8, and the following
characters: + - = . _ : / @. Tag keys and values are case-sensitive. Tag keys must be
unique per resource. If you specify more than one tag, separate them by commas.

# Arguments
- `resource_arn`: Specifies the ARN of the Athena resource (workgroup or data catalog) to
  which tags are to be added.
- `tags`: A collection of one or more tags, separated by commas, to be added to an Athena
  workgroup or data catalog resource.

"""
tag_resource(ResourceARN, Tags; aws_config::AbstractAWSConfig=global_aws_config()) = athena("TagResource", Dict{String, Any}("ResourceARN"=>ResourceARN, "Tags"=>Tags); aws_config=aws_config)
tag_resource(ResourceARN, Tags, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = athena("TagResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceARN"=>ResourceARN, "Tags"=>Tags), params)); aws_config=aws_config)

"""
    untag_resource(resource_arn, tag_keys)
    untag_resource(resource_arn, tag_keys, params::Dict{String,<:Any})

Removes one or more tags from a data catalog or workgroup resource.

# Arguments
- `resource_arn`: Specifies the ARN of the resource from which tags are to be removed.
- `tag_keys`: A comma-separated list of one or more tag keys whose tags are to be removed
  from the specified resource.

"""
untag_resource(ResourceARN, TagKeys; aws_config::AbstractAWSConfig=global_aws_config()) = athena("UntagResource", Dict{String, Any}("ResourceARN"=>ResourceARN, "TagKeys"=>TagKeys); aws_config=aws_config)
untag_resource(ResourceARN, TagKeys, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = athena("UntagResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceARN"=>ResourceARN, "TagKeys"=>TagKeys), params)); aws_config=aws_config)

"""
    update_data_catalog(name, type)
    update_data_catalog(name, type, params::Dict{String,<:Any})

Updates the data catalog that has the specified name.

# Arguments
- `name`: The name of the data catalog to update. The catalog name must be unique for the
  AWS account and can use a maximum of 128 alphanumeric, underscore, at sign, or hyphen
  characters.
- `type`: Specifies the type of data catalog to update. Specify LAMBDA for a federated
  catalog or HIVE for an external hive metastore.  Do not use the GLUE type. This refers to
  the AwsDataCatalog that already exists in your account, of which you can have only one.
  Specifying the GLUE type will result in an INVALID_INPUT error.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Description"`: New or modified text that describes the data catalog.
- `"Parameters"`: Specifies the Lambda function or functions to use for updating the data
  catalog. This is a mapping whose values depend on the catalog type.    For the HIVE data
  catalog type, use the following syntax. The metadata-function parameter is required. The
  sdk-version parameter is optional and defaults to the currently supported version.
  metadata-function=lambda_arn, sdk-version=version_number     For the LAMBDA data catalog
  type, use one of the following sets of required parameters, but not both.   If you have one
  Lambda function that processes metadata and another for reading the actual data, use the
  following syntax. Both parameters are required.  metadata-function=lambda_arn,
  record-function=lambda_arn      If you have a composite Lambda function that processes both
  metadata and data, use the following syntax to specify your Lambda function.
  function=lambda_arn
"""
update_data_catalog(Name, Type; aws_config::AbstractAWSConfig=global_aws_config()) = athena("UpdateDataCatalog", Dict{String, Any}("Name"=>Name, "Type"=>Type); aws_config=aws_config)
update_data_catalog(Name, Type, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = athena("UpdateDataCatalog", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Name"=>Name, "Type"=>Type), params)); aws_config=aws_config)

"""
    update_work_group(work_group)
    update_work_group(work_group, params::Dict{String,<:Any})

Updates the workgroup with the specified name. The workgroup's name cannot be changed.

# Arguments
- `work_group`: The specified workgroup that will be updated.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"ConfigurationUpdates"`: The workgroup configuration that will be updated for the given
  workgroup.
- `"Description"`: The workgroup description.
- `"State"`: The workgroup state that will be updated for the given workgroup.
"""
update_work_group(WorkGroup; aws_config::AbstractAWSConfig=global_aws_config()) = athena("UpdateWorkGroup", Dict{String, Any}("WorkGroup"=>WorkGroup); aws_config=aws_config)
update_work_group(WorkGroup, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = athena("UpdateWorkGroup", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("WorkGroup"=>WorkGroup), params)); aws_config=aws_config)
