-module(maislurp-client-erlang_attachment_controller_api).

-export([delete_all_attachments/1, delete_all_attachments/2,
         delete_attachment/2, delete_attachment/3,
         download_attachment_as_base64_encoded/2, download_attachment_as_base64_encoded/3,
         download_attachment_as_bytes/2, download_attachment_as_bytes/3,
         get_attachment/2, get_attachment/3,
         get_attachment_info/2, get_attachment_info/3,
         get_attachments/1, get_attachments/2,
         upload_attachment/2, upload_attachment/3,
         upload_attachment_bytes/2, upload_attachment_bytes/3,
         upload_multipart_form/2, upload_multipart_form/3]).

-define(BASE_URL, "").

%% @doc Delete all attachments
%% 
-spec delete_all_attachments(ctx:ctx()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_all_attachments(Ctx) ->
    delete_all_attachments(Ctx, #{}).

-spec delete_all_attachments(ctx:ctx(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_all_attachments(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/attachments"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete an attachment
%% Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with `SendEmailOptions` when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.
-spec delete_attachment(ctx:ctx(), binary()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_attachment(Ctx, AttachmentId) ->
    delete_attachment(Ctx, AttachmentId, #{}).

-spec delete_attachment(ctx:ctx(), binary(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_attachment(Ctx, AttachmentId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/attachments/", AttachmentId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get email attachment as base64 encoded string as alternative to binary responses. To read the content decode the Base64 encoded contents.
%% Returns the specified attachment for a given email as a base 64 encoded string. The response type is application/json. This method is similar to the `downloadAttachment` method but allows some clients to get around issues with binary responses.
-spec download_attachment_as_base64_encoded(ctx:ctx(), binary()) -> {ok, maislurp-client-erlang_download_attachment_dto:maislurp-client-erlang_download_attachment_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
download_attachment_as_base64_encoded(Ctx, AttachmentId) ->
    download_attachment_as_base64_encoded(Ctx, AttachmentId, #{}).

-spec download_attachment_as_base64_encoded(ctx:ctx(), binary(), maps:map()) -> {ok, maislurp-client-erlang_download_attachment_dto:maislurp-client-erlang_download_attachment_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
download_attachment_as_base64_encoded(Ctx, AttachmentId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/attachments/", AttachmentId, "/base64"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Download attachments. Get email attachment bytes. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints.
%% Returns the specified attachment for a given email as a stream / array of bytes. You can find attachment ids in email responses endpoint responses. The response type is application/octet-stream.
-spec download_attachment_as_bytes(ctx:ctx(), binary()) -> {ok, maislurp-client-erlang_byte_array:maislurp-client-erlang_byte_array(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
download_attachment_as_bytes(Ctx, AttachmentId) ->
    download_attachment_as_bytes(Ctx, AttachmentId, #{}).

-spec download_attachment_as_bytes(ctx:ctx(), binary(), maps:map()) -> {ok, maislurp-client-erlang_byte_array:maislurp-client-erlang_byte_array(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
download_attachment_as_bytes(Ctx, AttachmentId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/attachments/", AttachmentId, "/bytes"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get an attachment entity
%% Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with `SendEmailOptions` when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.
-spec get_attachment(ctx:ctx(), binary()) -> {ok, maislurp-client-erlang_attachment_entity:maislurp-client-erlang_attachment_entity(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_attachment(Ctx, AttachmentId) ->
    get_attachment(Ctx, AttachmentId, #{}).

-spec get_attachment(ctx:ctx(), binary(), maps:map()) -> {ok, maislurp-client-erlang_attachment_entity:maislurp-client-erlang_attachment_entity(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_attachment(Ctx, AttachmentId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/attachments/", AttachmentId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get email attachment metadata information
%% Returns the metadata for an attachment. It is saved separately to the content of the attachment. Contains properties `name` and `content-type` and `content-length` in bytes for a given attachment.
-spec get_attachment_info(ctx:ctx(), binary()) -> {ok, maislurp-client-erlang_attachment_meta_data:maislurp-client-erlang_attachment_meta_data(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_attachment_info(Ctx, AttachmentId) ->
    get_attachment_info(Ctx, AttachmentId, #{}).

-spec get_attachment_info(ctx:ctx(), binary(), maps:map()) -> {ok, maislurp-client-erlang_attachment_meta_data:maislurp-client-erlang_attachment_meta_data(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_attachment_info(Ctx, AttachmentId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/attachments/", AttachmentId, "/metadata"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get email attachments
%% Get all attachments in paginated response. Each entity contains meta data for the attachment such as `name` and `content-type`. Use the `attachmentId` and the download endpoints to get the file contents.
-spec get_attachments(ctx:ctx()) -> {ok, maislurp-client-erlang_page_attachment_entity:maislurp-client-erlang_page_attachment_entity(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_attachments(Ctx) ->
    get_attachments(Ctx, #{}).

-spec get_attachments(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_attachment_entity:maislurp-client-erlang_page_attachment_entity(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_attachments(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/attachments"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['before', 'fileNameFilter', 'page', 'since', 'size', 'sort'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.
%% Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with `SendEmailOptions` when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.
-spec upload_attachment(ctx:ctx(), maislurp-client-erlang_upload_attachment_options:maislurp-client-erlang_upload_attachment_options()) -> {ok, [binary()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
upload_attachment(Ctx, UploadOptions) ->
    upload_attachment(Ctx, UploadOptions, #{}).

-spec upload_attachment(ctx:ctx(), maislurp-client-erlang_upload_attachment_options:maislurp-client-erlang_upload_attachment_options(), maps:map()) -> {ok, [binary()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
upload_attachment(Ctx, UploadOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/attachments"],
    QS = [],
    Headers = [],
    Body1 = UploadOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.
%% Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with `SendEmailOptions` when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.
-spec upload_attachment_bytes(ctx:ctx()) -> {ok, [binary()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
upload_attachment_bytes(Ctx) ->
    upload_attachment_bytes(Ctx, #{}).

-spec upload_attachment_bytes(ctx:ctx(), maps:map()) -> {ok, [binary()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
upload_attachment_bytes(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/attachments/bytes"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['contentType', 'filename'], _OptionalParams),
    Headers = [],
    Body1 = ByteArray,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/octet-stream">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.
%% Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with `SendEmailOptions` when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.
-spec upload_multipart_form(ctx:ctx(), binary()) -> {ok, [binary()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
upload_multipart_form(Ctx, File) ->
    upload_multipart_form(Ctx, File, #{}).

-spec upload_multipart_form(ctx:ctx(), binary(), maps:map()) -> {ok, [binary()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
upload_multipart_form(Ctx, File, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/attachments/multipart"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['contentType', 'filename', 'x-filename'], _OptionalParams),
    Headers = [],
    Body1 = {form, [{<<"file">>, File}]++maislurp-client-erlang_utils:optional_params([], _OptionalParams)},
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"multipart/form-data">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


