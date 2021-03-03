# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: kendra
using AWS.Compat
using AWS.UUIDs

"""
    batch_delete_document(document_id_list, index_id)
    batch_delete_document(document_id_list, index_id, params::Dict{String,<:Any})

Removes one or more documents from an index. The documents must have been added with the
BatchPutDocument operation. The documents are deleted asynchronously. You can see the
progress of the deletion by using AWS CloudWatch. Any error messages releated to the
processing of the batch are sent to you CloudWatch log.

# Arguments
- `document_id_list`: One or more identifiers for documents to delete from the index.
- `index_id`: The identifier of the index that contains the documents to delete.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"DataSourceSyncJobMetricTarget"`:
"""
batch_delete_document(DocumentIdList, IndexId; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("BatchDeleteDocument", Dict{String, Any}("DocumentIdList"=>DocumentIdList, "IndexId"=>IndexId); aws_config=aws_config)
batch_delete_document(DocumentIdList, IndexId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("BatchDeleteDocument", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("DocumentIdList"=>DocumentIdList, "IndexId"=>IndexId), params)); aws_config=aws_config)

"""
    batch_put_document(documents, index_id)
    batch_put_document(documents, index_id, params::Dict{String,<:Any})

Adds one or more documents to an index. The BatchPutDocument operation enables you to
ingest inline documents or a set of documents stored in an Amazon S3 bucket. Use this
operation to ingest your text and unstructured text into an index, add custom attributes to
the documents, and to attach an access control list to the documents added to the index.
The documents are indexed asynchronously. You can see the progress of the batch using AWS
CloudWatch. Any error messages related to processing the batch are sent to your AWS
CloudWatch log.

# Arguments
- `documents`: One or more documents to add to the index.  Documents have the following
  file size limits.   5 MB total size for inline documents   50 MB total size for files from
  an S3 bucket   5 MB extracted text for any file   For more information about file size and
  transaction per second quotas, see Quotas.
- `index_id`: The identifier of the index to add the documents to. You need to create the
  index first using the CreateIndex operation.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"RoleArn"`: The Amazon Resource Name (ARN) of a role that is allowed to run the
  BatchPutDocument operation. For more information, see IAM Roles for Amazon Kendra.
"""
batch_put_document(Documents, IndexId; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("BatchPutDocument", Dict{String, Any}("Documents"=>Documents, "IndexId"=>IndexId); aws_config=aws_config)
batch_put_document(Documents, IndexId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("BatchPutDocument", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Documents"=>Documents, "IndexId"=>IndexId), params)); aws_config=aws_config)

"""
    create_data_source(index_id, name, type)
    create_data_source(index_id, name, type, params::Dict{String,<:Any})

Creates a data source that you use to with an Amazon Kendra index.  You specify a name,
data source connector type and description for your data source. You also specify
configuration information such as document metadata (author, source URI, and so on) and
user context information.  CreateDataSource is a synchronous operation. The operation
returns 200 if the data source was successfully created. Otherwise, an exception is raised.

# Arguments
- `index_id`: The identifier of the index that should be associated with this data source.
- `name`: A unique name for the data source. A data source name can't be changed without
  deleting and recreating the data source.
- `type`: The type of repository that contains the data source.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"ClientToken"`: A token that you provide to identify the request to create a data
  source. Multiple calls to the CreateDataSource operation with the same client token will
  create only one data source.
- `"Configuration"`: The connector configuration information that is required to access the
  repository. You can't specify the Configuration parameter when the Type parameter is set to
  CUSTOM. If you do, you receive a ValidationException exception. The Configuration parameter
  is required for all other data sources.
- `"Description"`: A description for the data source.
- `"RoleArn"`: The Amazon Resource Name (ARN) of a role with permission to access the data
  source. For more information, see IAM Roles for Amazon Kendra. You can't specify the
  RoleArn parameter when the Type parameter is set to CUSTOM. If you do, you receive a
  ValidationException exception. The RoleArn parameter is required for all other data sources.
- `"Schedule"`: Sets the frequency that Amazon Kendra will check the documents in your
  repository and update the index. If you don't set a schedule Amazon Kendra will not
  periodically update the index. You can call the StartDataSourceSyncJob operation to update
  the index. You can't specify the Schedule parameter when the Type parameter is set to
  CUSTOM. If you do, you receive a ValidationException exception.
- `"Tags"`: A list of key-value pairs that identify the data source. You can use the tags
  to identify and organize your resources and to control access to resources.
"""
create_data_source(IndexId, Name, Type; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("CreateDataSource", Dict{String, Any}("IndexId"=>IndexId, "Name"=>Name, "Type"=>Type, "ClientToken"=>string(uuid4())); aws_config=aws_config)
create_data_source(IndexId, Name, Type, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("CreateDataSource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("IndexId"=>IndexId, "Name"=>Name, "Type"=>Type, "ClientToken"=>string(uuid4())), params)); aws_config=aws_config)

"""
    create_faq(index_id, name, role_arn, s3_path)
    create_faq(index_id, name, role_arn, s3_path, params::Dict{String,<:Any})

Creates an new set of frequently asked question (FAQ) questions and answers.

# Arguments
- `index_id`: The identifier of the index that contains the FAQ.
- `name`: The name that should be associated with the FAQ.
- `role_arn`: The Amazon Resource Name (ARN) of a role with permission to access the S3
  bucket that contains the FAQs. For more information, see IAM Roles for Amazon Kendra.
- `s3_path`: The S3 location of the FAQ input data.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"ClientToken"`: A token that you provide to identify the request to create a FAQ.
  Multiple calls to the CreateFaqRequest operation with the same client token will create
  only one FAQ.
- `"Description"`: A description of the FAQ.
- `"FileFormat"`: The format of the input file. You can choose between a basic CSV format,
  a CSV format that includes customs attributes in a header, and a JSON format that includes
  custom attributes. The format must match the format of the file stored in the S3 bucket
  identified in the S3Path parameter. For more information, see Adding questions and answers.
- `"Tags"`: A list of key-value pairs that identify the FAQ. You can use the tags to
  identify and organize your resources and to control access to resources.
"""
create_faq(IndexId, Name, RoleArn, S3Path; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("CreateFaq", Dict{String, Any}("IndexId"=>IndexId, "Name"=>Name, "RoleArn"=>RoleArn, "S3Path"=>S3Path, "ClientToken"=>string(uuid4())); aws_config=aws_config)
create_faq(IndexId, Name, RoleArn, S3Path, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("CreateFaq", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("IndexId"=>IndexId, "Name"=>Name, "RoleArn"=>RoleArn, "S3Path"=>S3Path, "ClientToken"=>string(uuid4())), params)); aws_config=aws_config)

"""
    create_index(name, role_arn)
    create_index(name, role_arn, params::Dict{String,<:Any})

Creates a new Amazon Kendra index. Index creation is an asynchronous operation. To
determine if index creation has completed, check the Status field returned from a call to .
The Status field is set to ACTIVE when the index is ready to use. Once the index is active
you can index your documents using the operation or using one of the supported data
sources.

# Arguments
- `name`: The name for the new index.
- `role_arn`: An AWS Identity and Access Management (IAM) role that gives Amazon Kendra
  permissions to access your Amazon CloudWatch logs and metrics. This is also the role used
  when you use the BatchPutDocument operation to index documents from an Amazon S3 bucket.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"ClientToken"`: A token that you provide to identify the request to create an index.
  Multiple calls to the CreateIndex operation with the same client token will create only one
  index.
- `"Description"`: A description for the index.
- `"Edition"`: The Amazon Kendra edition to use for the index. Choose DEVELOPER_EDITION for
  indexes intended for development, testing, or proof of concept. Use ENTERPRISE_EDITION for
  your production databases. Once you set the edition for an index, it can't be changed.  The
  Edition parameter is optional. If you don't supply a value, the default is
  ENTERPRISE_EDITION.
- `"ServerSideEncryptionConfiguration"`: The identifier of the AWS KMS customer managed key
  (CMK) to use to encrypt data indexed by Amazon Kendra. Amazon Kendra doesn't support
  asymmetric CMKs.
- `"Tags"`: A list of key-value pairs that identify the index. You can use the tags to
  identify and organize your resources and to control access to resources.
- `"UserContextPolicy"`: The user context policy.  ATTRIBUTE_FILTER  All indexed content is
  searchable and displayable for all users. If there is an access control list, it is
  ignored. You can filter on user and group attributes.   USER_TOKEN  Enables SSO and
  token-based user access control. All documents with no access control and all documents
  accessible to the user will be searchable and displayable.
- `"UserTokenConfigurations"`: The user token configuration.
"""
create_index(Name, RoleArn; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("CreateIndex", Dict{String, Any}("Name"=>Name, "RoleArn"=>RoleArn, "ClientToken"=>string(uuid4())); aws_config=aws_config)
create_index(Name, RoleArn, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("CreateIndex", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Name"=>Name, "RoleArn"=>RoleArn, "ClientToken"=>string(uuid4())), params)); aws_config=aws_config)

"""
    create_thesaurus(index_id, name, role_arn, source_s3_path)
    create_thesaurus(index_id, name, role_arn, source_s3_path, params::Dict{String,<:Any})

Creates a thesaurus for an index. The thesaurus contains a list of synonyms in Solr format.

# Arguments
- `index_id`: The unique identifier of the index for the new thesaurus.
- `name`: The name for the new thesaurus.
- `role_arn`: An AWS Identity and Access Management (IAM) role that gives Amazon Kendra
  permissions to access thesaurus file specified in SourceS3Path.
- `source_s3_path`: The thesaurus file Amazon S3 source path.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"ClientToken"`: A token that you provide to identify the request to create a thesaurus.
  Multiple calls to the CreateThesaurus operation with the same client token will create only
  one index.
- `"Description"`: The description for the new thesaurus.
- `"Tags"`: A list of key-value pairs that identify the thesaurus. You can use the tags to
  identify and organize your resources and to control access to resources.
"""
create_thesaurus(IndexId, Name, RoleArn, SourceS3Path; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("CreateThesaurus", Dict{String, Any}("IndexId"=>IndexId, "Name"=>Name, "RoleArn"=>RoleArn, "SourceS3Path"=>SourceS3Path, "ClientToken"=>string(uuid4())); aws_config=aws_config)
create_thesaurus(IndexId, Name, RoleArn, SourceS3Path, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("CreateThesaurus", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("IndexId"=>IndexId, "Name"=>Name, "RoleArn"=>RoleArn, "SourceS3Path"=>SourceS3Path, "ClientToken"=>string(uuid4())), params)); aws_config=aws_config)

"""
    delete_data_source(id, index_id)
    delete_data_source(id, index_id, params::Dict{String,<:Any})

Deletes an Amazon Kendra data source. An exception is not thrown if the data source is
already being deleted. While the data source is being deleted, the Status field returned by
a call to the operation is set to DELETING. For more information, see Deleting Data Sources.

# Arguments
- `id`: The unique identifier of the data source to delete.
- `index_id`: The unique identifier of the index associated with the data source.

"""
delete_data_source(Id, IndexId; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("DeleteDataSource", Dict{String, Any}("Id"=>Id, "IndexId"=>IndexId); aws_config=aws_config)
delete_data_source(Id, IndexId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("DeleteDataSource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Id"=>Id, "IndexId"=>IndexId), params)); aws_config=aws_config)

"""
    delete_faq(id, index_id)
    delete_faq(id, index_id, params::Dict{String,<:Any})

Removes an FAQ from an index.

# Arguments
- `id`: The identifier of the FAQ to remove.
- `index_id`: The index to remove the FAQ from.

"""
delete_faq(Id, IndexId; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("DeleteFaq", Dict{String, Any}("Id"=>Id, "IndexId"=>IndexId); aws_config=aws_config)
delete_faq(Id, IndexId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("DeleteFaq", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Id"=>Id, "IndexId"=>IndexId), params)); aws_config=aws_config)

"""
    delete_index(id)
    delete_index(id, params::Dict{String,<:Any})

Deletes an existing Amazon Kendra index. An exception is not thrown if the index is already
being deleted. While the index is being deleted, the Status field returned by a call to the
DescribeIndex operation is set to DELETING.

# Arguments
- `id`: The identifier of the index to delete.

"""
delete_index(Id; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("DeleteIndex", Dict{String, Any}("Id"=>Id); aws_config=aws_config)
delete_index(Id, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("DeleteIndex", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Id"=>Id), params)); aws_config=aws_config)

"""
    delete_thesaurus(id, index_id)
    delete_thesaurus(id, index_id, params::Dict{String,<:Any})

Deletes an existing Amazon Kendra thesaurus.

# Arguments
- `id`: The identifier of the thesaurus to delete.
- `index_id`: The identifier of the index associated with the thesaurus to delete.

"""
delete_thesaurus(Id, IndexId; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("DeleteThesaurus", Dict{String, Any}("Id"=>Id, "IndexId"=>IndexId); aws_config=aws_config)
delete_thesaurus(Id, IndexId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("DeleteThesaurus", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Id"=>Id, "IndexId"=>IndexId), params)); aws_config=aws_config)

"""
    describe_data_source(id, index_id)
    describe_data_source(id, index_id, params::Dict{String,<:Any})

Gets information about a Amazon Kendra data source.

# Arguments
- `id`: The unique identifier of the data source to describe.
- `index_id`: The identifier of the index that contains the data source.

"""
describe_data_source(Id, IndexId; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("DescribeDataSource", Dict{String, Any}("Id"=>Id, "IndexId"=>IndexId); aws_config=aws_config)
describe_data_source(Id, IndexId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("DescribeDataSource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Id"=>Id, "IndexId"=>IndexId), params)); aws_config=aws_config)

"""
    describe_faq(id, index_id)
    describe_faq(id, index_id, params::Dict{String,<:Any})

Gets information about an FAQ list.

# Arguments
- `id`: The unique identifier of the FAQ.
- `index_id`: The identifier of the index that contains the FAQ.

"""
describe_faq(Id, IndexId; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("DescribeFaq", Dict{String, Any}("Id"=>Id, "IndexId"=>IndexId); aws_config=aws_config)
describe_faq(Id, IndexId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("DescribeFaq", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Id"=>Id, "IndexId"=>IndexId), params)); aws_config=aws_config)

"""
    describe_index(id)
    describe_index(id, params::Dict{String,<:Any})

Describes an existing Amazon Kendra index

# Arguments
- `id`: The name of the index to describe.

"""
describe_index(Id; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("DescribeIndex", Dict{String, Any}("Id"=>Id); aws_config=aws_config)
describe_index(Id, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("DescribeIndex", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Id"=>Id), params)); aws_config=aws_config)

"""
    describe_thesaurus(id, index_id)
    describe_thesaurus(id, index_id, params::Dict{String,<:Any})

Describes an existing Amazon Kendra thesaurus.

# Arguments
- `id`: The identifier of the thesaurus to describe.
- `index_id`: The identifier of the index associated with the thesaurus to describe.

"""
describe_thesaurus(Id, IndexId; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("DescribeThesaurus", Dict{String, Any}("Id"=>Id, "IndexId"=>IndexId); aws_config=aws_config)
describe_thesaurus(Id, IndexId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("DescribeThesaurus", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Id"=>Id, "IndexId"=>IndexId), params)); aws_config=aws_config)

"""
    list_data_source_sync_jobs(id, index_id)
    list_data_source_sync_jobs(id, index_id, params::Dict{String,<:Any})

Gets statistics about synchronizing Amazon Kendra with a data source.

# Arguments
- `id`: The identifier of the data source.
- `index_id`: The identifier of the index that contains the data source.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The maximum number of synchronization jobs to return in the response. If
  there are fewer results in the list, this response contains only the actual results.
- `"NextToken"`: If the result of the previous request to GetDataSourceSyncJobHistory was
  truncated, include the NextToken to fetch the next set of jobs.
- `"StartTimeFilter"`: When specified, the synchronization jobs returned in the list are
  limited to jobs between the specified dates.
- `"StatusFilter"`: When specified, only returns synchronization jobs with the Status field
  equal to the specified status.
"""
list_data_source_sync_jobs(Id, IndexId; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("ListDataSourceSyncJobs", Dict{String, Any}("Id"=>Id, "IndexId"=>IndexId); aws_config=aws_config)
list_data_source_sync_jobs(Id, IndexId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("ListDataSourceSyncJobs", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Id"=>Id, "IndexId"=>IndexId), params)); aws_config=aws_config)

"""
    list_data_sources(index_id)
    list_data_sources(index_id, params::Dict{String,<:Any})

Lists the data sources that you have created.

# Arguments
- `index_id`: The identifier of the index that contains the data source.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The maximum number of data sources to return.
- `"NextToken"`: If the previous response was incomplete (because there is more data to
  retrieve), Amazon Kendra returns a pagination token in the response. You can use this
  pagination token to retrieve the next set of data sources (DataSourceSummaryItems).
"""
list_data_sources(IndexId; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("ListDataSources", Dict{String, Any}("IndexId"=>IndexId); aws_config=aws_config)
list_data_sources(IndexId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("ListDataSources", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("IndexId"=>IndexId), params)); aws_config=aws_config)

"""
    list_faqs(index_id)
    list_faqs(index_id, params::Dict{String,<:Any})

Gets a list of FAQ lists associated with an index.

# Arguments
- `index_id`: The index that contains the FAQ lists.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The maximum number of FAQs to return in the response. If there are fewer
  results in the list, this response contains only the actual results.
- `"NextToken"`: If the result of the previous request to ListFaqs was truncated, include
  the NextToken to fetch the next set of FAQs.
"""
list_faqs(IndexId; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("ListFaqs", Dict{String, Any}("IndexId"=>IndexId); aws_config=aws_config)
list_faqs(IndexId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("ListFaqs", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("IndexId"=>IndexId), params)); aws_config=aws_config)

"""
    list_indices()
    list_indices(params::Dict{String,<:Any})

Lists the Amazon Kendra indexes that you have created.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The maximum number of data sources to return.
- `"NextToken"`: If the previous response was incomplete (because there is more data to
  retrieve), Amazon Kendra returns a pagination token in the response. You can use this
  pagination token to retrieve the next set of indexes (DataSourceSummaryItems).
"""
list_indices(; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("ListIndices"; aws_config=aws_config)
list_indices(params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("ListIndices", params; aws_config=aws_config)

"""
    list_tags_for_resource(resource_arn)
    list_tags_for_resource(resource_arn, params::Dict{String,<:Any})

Gets a list of tags associated with a specified resource. Indexes, FAQs, and data sources
can have tags associated with them.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the index, FAQ, or data source to get a
  list of tags for.

"""
list_tags_for_resource(ResourceARN; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("ListTagsForResource", Dict{String, Any}("ResourceARN"=>ResourceARN); aws_config=aws_config)
list_tags_for_resource(ResourceARN, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("ListTagsForResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceARN"=>ResourceARN), params)); aws_config=aws_config)

"""
    list_thesauri(index_id)
    list_thesauri(index_id, params::Dict{String,<:Any})

Lists the Amazon Kendra thesauri associated with an index.

# Arguments
- `index_id`: The identifier of the index associated with the thesaurus to list.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The maximum number of thesauri to return.
- `"NextToken"`: If the previous response was incomplete (because there is more data to
  retrieve), Amazon Kendra returns a pagination token in the response. You can use this
  pagination token to retrieve the next set of thesauri (ThesaurusSummaryItems).
"""
list_thesauri(IndexId; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("ListThesauri", Dict{String, Any}("IndexId"=>IndexId); aws_config=aws_config)
list_thesauri(IndexId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("ListThesauri", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("IndexId"=>IndexId), params)); aws_config=aws_config)

"""
    query(index_id, query_text)
    query(index_id, query_text, params::Dict{String,<:Any})

Searches an active index. Use this API to search your documents using query. The Query
operation enables to do faceted search and to filter results based on document attributes.
It also enables you to provide user context that Amazon Kendra uses to enforce document
access control in the search results.  Amazon Kendra searches your index for text content
and question and answer (FAQ) content. By default the response contains three types of
results.   Relevant passages   Matching FAQs   Relevant documents   You can specify that
the query return only one type of result using the QueryResultTypeConfig parameter. Each
query returns the 100 most relevant results.

# Arguments
- `index_id`: The unique identifier of the index to search. The identifier is returned in
  the response from the operation.
- `query_text`: The text to search for.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"AttributeFilter"`: Enables filtered searches based on document attributes. You can only
  provide one attribute filter; however, the AndAllFilters, NotFilter, and OrAllFilters
  parameters contain a list of other filters. The AttributeFilter parameter enables you to
  create a set of filtering rules that a document must satisfy to be included in the query
  results.
- `"Facets"`: An array of documents attributes. Amazon Kendra returns a count for each
  attribute key specified. You can use this information to help narrow the search for your
  user.
- `"PageNumber"`: Query results are returned in pages the size of the PageSize parameter.
  By default, Amazon Kendra returns the first page of results. Use this parameter to get
  result pages after the first one.
- `"PageSize"`: Sets the number of results that are returned in each page of results. The
  default page size is 10. The maximum number of results returned is 100. If you ask for more
  than 100 results, only 100 are returned.
- `"QueryResultTypeFilter"`: Sets the type of query. Only results for the specified query
  type are returned.
- `"RequestedDocumentAttributes"`: An array of document attributes to include in the
  response. No other document attributes are included in the response. By default all
  document attributes are included in the response.
- `"SortingConfiguration"`: Provides information that determines how the results of the
  query are sorted. You can set the field that Amazon Kendra should sort the results on, and
  specify whether the results should be sorted in ascending or descending order. In the case
  of ties in sorting the results, the results are sorted by relevance. If you don't provide
  sorting configuration, the results are sorted by the relevance that Amazon Kendra
  determines for the result.
- `"UserContext"`: The user context token.
- `"VisitorId"`: Provides an identifier for a specific user. The VisitorId should be a
  unique identifier, such as a GUID. Don't use personally identifiable information, such as
  the user's email address, as the VisitorId.
"""
query(IndexId, QueryText; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("Query", Dict{String, Any}("IndexId"=>IndexId, "QueryText"=>QueryText); aws_config=aws_config)
query(IndexId, QueryText, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("Query", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("IndexId"=>IndexId, "QueryText"=>QueryText), params)); aws_config=aws_config)

"""
    start_data_source_sync_job(id, index_id)
    start_data_source_sync_job(id, index_id, params::Dict{String,<:Any})

Starts a synchronization job for a data source. If a synchronization job is already in
progress, Amazon Kendra returns a ResourceInUseException exception.

# Arguments
- `id`: The identifier of the data source to synchronize.
- `index_id`: The identifier of the index that contains the data source.

"""
start_data_source_sync_job(Id, IndexId; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("StartDataSourceSyncJob", Dict{String, Any}("Id"=>Id, "IndexId"=>IndexId); aws_config=aws_config)
start_data_source_sync_job(Id, IndexId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("StartDataSourceSyncJob", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Id"=>Id, "IndexId"=>IndexId), params)); aws_config=aws_config)

"""
    stop_data_source_sync_job(id, index_id)
    stop_data_source_sync_job(id, index_id, params::Dict{String,<:Any})

Stops a running synchronization job. You can't stop a scheduled synchronization job.

# Arguments
- `id`: The identifier of the data source for which to stop the synchronization jobs.
- `index_id`: The identifier of the index that contains the data source.

"""
stop_data_source_sync_job(Id, IndexId; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("StopDataSourceSyncJob", Dict{String, Any}("Id"=>Id, "IndexId"=>IndexId); aws_config=aws_config)
stop_data_source_sync_job(Id, IndexId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("StopDataSourceSyncJob", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Id"=>Id, "IndexId"=>IndexId), params)); aws_config=aws_config)

"""
    submit_feedback(index_id, query_id)
    submit_feedback(index_id, query_id, params::Dict{String,<:Any})

Enables you to provide feedback to Amazon Kendra to improve the performance of the service.

# Arguments
- `index_id`: The identifier of the index that was queried.
- `query_id`: The identifier of the specific query for which you are submitting feedback.
  The query ID is returned in the response to the operation.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"ClickFeedbackItems"`: Tells Amazon Kendra that a particular search result link was
  chosen by the user.
- `"RelevanceFeedbackItems"`: Provides Amazon Kendra with relevant or not relevant feedback
  for whether a particular item was relevant to the search.
"""
submit_feedback(IndexId, QueryId; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("SubmitFeedback", Dict{String, Any}("IndexId"=>IndexId, "QueryId"=>QueryId); aws_config=aws_config)
submit_feedback(IndexId, QueryId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("SubmitFeedback", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("IndexId"=>IndexId, "QueryId"=>QueryId), params)); aws_config=aws_config)

"""
    tag_resource(resource_arn, tags)
    tag_resource(resource_arn, tags, params::Dict{String,<:Any})

Adds the specified tag to the specified index, FAQ, or data source resource. If the tag
already exists, the existing value is replaced with the new value.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the index, FAQ, or data source to tag.
- `tags`: A list of tag keys to add to the index, FAQ, or data source. If a tag already
  exists, the existing value is replaced with the new value.

"""
tag_resource(ResourceARN, Tags; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("TagResource", Dict{String, Any}("ResourceARN"=>ResourceARN, "Tags"=>Tags); aws_config=aws_config)
tag_resource(ResourceARN, Tags, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("TagResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceARN"=>ResourceARN, "Tags"=>Tags), params)); aws_config=aws_config)

"""
    untag_resource(resource_arn, tag_keys)
    untag_resource(resource_arn, tag_keys, params::Dict{String,<:Any})

Removes a tag from an index, FAQ, or a data source.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the index, FAQ, or data source to
  remove the tag from.
- `tag_keys`: A list of tag keys to remove from the index, FAQ, or data source. If a tag
  key does not exist on the resource, it is ignored.

"""
untag_resource(ResourceARN, TagKeys; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("UntagResource", Dict{String, Any}("ResourceARN"=>ResourceARN, "TagKeys"=>TagKeys); aws_config=aws_config)
untag_resource(ResourceARN, TagKeys, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("UntagResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceARN"=>ResourceARN, "TagKeys"=>TagKeys), params)); aws_config=aws_config)

"""
    update_data_source(id, index_id)
    update_data_source(id, index_id, params::Dict{String,<:Any})

Updates an existing Amazon Kendra data source.

# Arguments
- `id`: The unique identifier of the data source to update.
- `index_id`: The identifier of the index that contains the data source to update.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Configuration"`:
- `"Description"`: The new description for the data source.
- `"Name"`: The name of the data source to update. The name of the data source can't be
  updated. To rename a data source you must delete the data source and re-create it.
- `"RoleArn"`: The Amazon Resource Name (ARN) of the new role to use when the data source
  is accessing resources on your behalf.
- `"Schedule"`: The new update schedule for the data source.
"""
update_data_source(Id, IndexId; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("UpdateDataSource", Dict{String, Any}("Id"=>Id, "IndexId"=>IndexId); aws_config=aws_config)
update_data_source(Id, IndexId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("UpdateDataSource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Id"=>Id, "IndexId"=>IndexId), params)); aws_config=aws_config)

"""
    update_index(id)
    update_index(id, params::Dict{String,<:Any})

Updates an existing Amazon Kendra index.

# Arguments
- `id`: The identifier of the index to update.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"CapacityUnits"`: Sets the number of addtional storage and query capacity units that
  should be used by the index. You can change the capacity of the index up to 5 times per
  day. If you are using extra storage units, you can't reduce the storage capacity below that
  required to meet the storage needs for your index.
- `"Description"`: A new description for the index.
- `"DocumentMetadataConfigurationUpdates"`: The document metadata to update.
- `"Name"`: The name of the index to update.
- `"RoleArn"`: A new IAM role that gives Amazon Kendra permission to access your Amazon
  CloudWatch logs.
- `"UserContextPolicy"`: The user user token context policy.
- `"UserTokenConfigurations"`: The user token configuration.
"""
update_index(Id; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("UpdateIndex", Dict{String, Any}("Id"=>Id); aws_config=aws_config)
update_index(Id, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("UpdateIndex", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Id"=>Id), params)); aws_config=aws_config)

"""
    update_thesaurus(id, index_id)
    update_thesaurus(id, index_id, params::Dict{String,<:Any})

Updates a thesaurus file associated with an index.

# Arguments
- `id`: The identifier of the thesaurus to update.
- `index_id`: The identifier of the index associated with the thesaurus to update.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Description"`: The updated description of the thesaurus.
- `"Name"`: The updated name of the thesaurus.
- `"RoleArn"`: The updated role ARN of the thesaurus.
- `"SourceS3Path"`:
"""
update_thesaurus(Id, IndexId; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("UpdateThesaurus", Dict{String, Any}("Id"=>Id, "IndexId"=>IndexId); aws_config=aws_config)
update_thesaurus(Id, IndexId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = kendra("UpdateThesaurus", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Id"=>Id, "IndexId"=>IndexId), params)); aws_config=aws_config)
