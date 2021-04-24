-module(maislurp-client-erlang_attachment_controller_api).

-export([upload_attachment/2, upload_attachment/3,
         upload_attachment_bytes/2, upload_attachment_bytes/3,
         upload_multipart_form/2, upload_multipart_form/3]).

-define(BASE_URL, "").

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
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['String', 'filename'], _OptionalParams),
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


