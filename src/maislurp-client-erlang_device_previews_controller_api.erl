-module(maislurp-client-erlang_device_previews_controller_api).

-export([cancel_device_preview_run/3, cancel_device_preview_run/4,
         create_device_preview_feedback/2, create_device_preview_feedback/3,
         create_device_preview_folder/2, create_device_preview_folder/3,
         create_device_preview_import_address/2, create_device_preview_import_address/3,
         create_device_preview_profile/2, create_device_preview_profile/3,
         create_device_preview_run/3, create_device_preview_run/4,
         create_device_preview_run_from_file/2, create_device_preview_run_from_file/3,
         create_device_preview_run_from_html_import/2, create_device_preview_run_from_html_import/3,
         create_device_preview_run_from_import/2, create_device_preview_run_from_import/3,
         create_device_preview_run_from_multipart_import/2, create_device_preview_run_from_multipart_import/3,
         create_device_preview_run_from_raw_import/1, create_device_preview_run_from_raw_import/2,
         create_device_preview_share_link/3, create_device_preview_share_link/4,
         delete_device_preview_folder/2, delete_device_preview_folder/3,
         delete_device_preview_profile/2, delete_device_preview_profile/3,
         delete_device_preview_run/2, delete_device_preview_run/3,
         delete_device_preview_share_link/2, delete_device_preview_share_link/3,
         download_device_preview_email_submission_source_email/2, download_device_preview_email_submission_source_email/3,
         download_device_preview_run_source_email/2, download_device_preview_run_source_email/3,
         ensure_device_preview_run/3, ensure_device_preview_run/4,
         get_device_preview_email_domain_or_create/1, get_device_preview_email_domain_or_create/2,
         get_device_preview_email_runs/2, get_device_preview_email_runs/3,
         get_device_preview_email_submission_source_email/2, get_device_preview_email_submission_source_email/3,
         get_device_preview_email_submissions/2, get_device_preview_email_submissions/3,
         get_device_preview_feedback/2, get_device_preview_feedback/3,
         get_device_preview_feedback_items/1, get_device_preview_feedback_items/2,
         get_device_preview_folder/2, get_device_preview_folder/3,
         get_device_preview_folders/1, get_device_preview_folders/2,
         get_device_preview_import_address/2, get_device_preview_import_address/3,
         get_device_preview_native_target_availability/1, get_device_preview_native_target_availability/2,
         get_device_preview_profile/2, get_device_preview_profile/3,
         get_device_preview_profiles/1, get_device_preview_profiles/2,
         get_device_preview_run/2, get_device_preview_run/3,
         get_device_preview_run_provider_progress/3, get_device_preview_run_provider_progress/4,
         get_device_preview_run_results/2, get_device_preview_run_results/3,
         get_device_preview_run_screenshot/3, get_device_preview_run_screenshot/4,
         get_device_preview_run_source_email/2, get_device_preview_run_source_email/3,
         get_device_preview_runs/2, get_device_preview_runs/3,
         get_device_preview_runs_for_account/1, get_device_preview_runs_for_account/2,
         get_device_preview_runs_for_account_offset_paginated/1, get_device_preview_runs_for_account_offset_paginated/2,
         get_device_preview_runs_offset_paginated/2, get_device_preview_runs_offset_paginated/3,
         get_device_preview_share_links/2, get_device_preview_share_links/3,
         get_device_preview_shared_result/2, get_device_preview_shared_result/3,
         get_device_preview_shared_result_screenshot/3, get_device_preview_shared_result_screenshot/4,
         get_device_preview_targets/1, get_device_preview_targets/2,
         move_device_preview_runs/2, move_device_preview_runs/3,
         rerun_device_preview_targets/3, rerun_device_preview_targets/4,
         update_device_preview_email_domain_subdomain/2, update_device_preview_email_domain_subdomain/3,
         update_device_preview_feedback/3, update_device_preview_feedback/4,
         update_device_preview_folder/3, update_device_preview_folder/4,
         update_device_preview_profile/3, update_device_preview_profile/4,
         wait_for_device_preview_email_runs/2, wait_for_device_preview_email_runs/3,
         wait_for_device_preview_email_submissions/2, wait_for_device_preview_email_submissions/3,
         wait_for_device_preview_run/2, wait_for_device_preview_run/3]).

-define(BASE_URL, "").

%% @doc Cancel a running device preview run
%% 
-spec cancel_device_preview_run(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_cancel_device_preview_run_result:maislurp-client-erlang_cancel_device_preview_run_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
cancel_device_preview_run(Ctx, RunId) ->
    cancel_device_preview_run(Ctx, RunId, #{}).

-spec cancel_device_preview_run(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_cancel_device_preview_run_result:maislurp-client-erlang_cancel_device_preview_run_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
cancel_device_preview_run(Ctx, RunId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/emails/device-previews/", RunId, "/cancel"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCancelDevicePreviewRunOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create device preview feedback
%% 
-spec create_device_preview_feedback(ctx:ctx(), maislurp-client-erlang_create_device_preview_feedback_options:maislurp-client-erlang_create_device_preview_feedback_options()) -> {ok, maislurp-client-erlang_device_preview_feedback_dto:maislurp-client-erlang_device_preview_feedback_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_device_preview_feedback(Ctx, MaislurpClientErlangCreateDevicePreviewFeedbackOptions) ->
    create_device_preview_feedback(Ctx, MaislurpClientErlangCreateDevicePreviewFeedbackOptions, #{}).

-spec create_device_preview_feedback(ctx:ctx(), maislurp-client-erlang_create_device_preview_feedback_options:maislurp-client-erlang_create_device_preview_feedback_options(), maps:map()) -> {ok, maislurp-client-erlang_device_preview_feedback_dto:maislurp-client-erlang_device_preview_feedback_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_device_preview_feedback(Ctx, MaislurpClientErlangCreateDevicePreviewFeedbackOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/emails/device-previews/feedback"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateDevicePreviewFeedbackOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create a device preview folder
%% 
-spec create_device_preview_folder(ctx:ctx(), maislurp-client-erlang_create_device_preview_folder_options:maislurp-client-erlang_create_device_preview_folder_options()) -> {ok, maislurp-client-erlang_device_preview_folder_dto:maislurp-client-erlang_device_preview_folder_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_device_preview_folder(Ctx, MaislurpClientErlangCreateDevicePreviewFolderOptions) ->
    create_device_preview_folder(Ctx, MaislurpClientErlangCreateDevicePreviewFolderOptions, #{}).

-spec create_device_preview_folder(ctx:ctx(), maislurp-client-erlang_create_device_preview_folder_options:maislurp-client-erlang_create_device_preview_folder_options(), maps:map()) -> {ok, maislurp-client-erlang_device_preview_folder_dto:maislurp-client-erlang_device_preview_folder_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_device_preview_folder(Ctx, MaislurpClientErlangCreateDevicePreviewFolderOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/emails/device-previews/folders"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateDevicePreviewFolderOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create a temporary email address for device preview import
%% 
-spec create_device_preview_import_address(ctx:ctx()) -> {ok, maislurp-client-erlang_device_preview_ingest_address_dto:maislurp-client-erlang_device_preview_ingest_address_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_device_preview_import_address(Ctx) ->
    create_device_preview_import_address(Ctx, #{}).

-spec create_device_preview_import_address(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_device_preview_ingest_address_dto:maislurp-client-erlang_device_preview_ingest_address_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_device_preview_import_address(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/emails/device-previews/import-addresses"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateDevicePreviewIngestAddressOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create a device preview profile
%% 
-spec create_device_preview_profile(ctx:ctx(), maislurp-client-erlang_create_device_preview_profile_options:maislurp-client-erlang_create_device_preview_profile_options()) -> {ok, maislurp-client-erlang_device_preview_profile_dto:maislurp-client-erlang_device_preview_profile_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_device_preview_profile(Ctx, MaislurpClientErlangCreateDevicePreviewProfileOptions) ->
    create_device_preview_profile(Ctx, MaislurpClientErlangCreateDevicePreviewProfileOptions, #{}).

-spec create_device_preview_profile(ctx:ctx(), maislurp-client-erlang_create_device_preview_profile_options:maislurp-client-erlang_create_device_preview_profile_options(), maps:map()) -> {ok, maislurp-client-erlang_device_preview_profile_dto:maislurp-client-erlang_device_preview_profile_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_device_preview_profile(Ctx, MaislurpClientErlangCreateDevicePreviewProfileOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/emails/device-previews/profiles"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateDevicePreviewProfileOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create a new device preview run for an email
%% 
-spec create_device_preview_run(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_create_device_preview_run_result:maislurp-client-erlang_create_device_preview_run_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_device_preview_run(Ctx, EmailId) ->
    create_device_preview_run(Ctx, EmailId, #{}).

-spec create_device_preview_run(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_create_device_preview_run_result:maislurp-client-erlang_create_device_preview_run_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_device_preview_run(Ctx, EmailId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/emails/", EmailId, "/device-previews"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateDevicePreviewOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create a device preview run from an HTML, EML, or ZIP file
%% Uploads an HTML or RFC822 EML file, or a ZIP archive containing exactly one HTML or EML file. ZIP uploads are bounded by entry count, expanded size, and compression ratio.
-spec create_device_preview_run_from_file(ctx:ctx(), binary()) -> {ok, maislurp-client-erlang_create_device_preview_run_result:maislurp-client-erlang_create_device_preview_run_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_device_preview_run_from_file(Ctx, File) ->
    create_device_preview_run_from_file(Ctx, File, #{}).

-spec create_device_preview_run_from_file(ctx:ctx(), binary(), maps:map()) -> {ok, maislurp-client-erlang_create_device_preview_run_result:maislurp-client-erlang_create_device_preview_run_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_device_preview_run_from_file(Ctx, File, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/emails/device-previews/import/file"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['subject', 'from', 'to', 'sourceAlias', 'externalId', 'providers', 'allTargets', 'targets', 'emailAudit', 'domainMonitor', 'senderDomain', 'folderId'], _OptionalParams),
    Headers = [],
    Body1 = {form, [{<<"file">>, File}]++maislurp-client-erlang_utils:optional_params([], _OptionalParams)},
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"multipart/form-data">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create a device preview run from HTML
%% 
-spec create_device_preview_run_from_html_import(ctx:ctx(), maislurp-client-erlang_create_device_preview_html_import_options:maislurp-client-erlang_create_device_preview_html_import_options()) -> {ok, maislurp-client-erlang_create_device_preview_run_result:maislurp-client-erlang_create_device_preview_run_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_device_preview_run_from_html_import(Ctx, MaislurpClientErlangCreateDevicePreviewHtmlImportOptions) ->
    create_device_preview_run_from_html_import(Ctx, MaislurpClientErlangCreateDevicePreviewHtmlImportOptions, #{}).

-spec create_device_preview_run_from_html_import(ctx:ctx(), maislurp-client-erlang_create_device_preview_html_import_options:maislurp-client-erlang_create_device_preview_html_import_options(), maps:map()) -> {ok, maislurp-client-erlang_create_device_preview_run_result:maislurp-client-erlang_create_device_preview_run_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_device_preview_run_from_html_import(Ctx, MaislurpClientErlangCreateDevicePreviewHtmlImportOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/emails/device-previews/import/html"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateDevicePreviewHtmlImportOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create a device preview run from imported raw MIME
%% 
-spec create_device_preview_run_from_import(ctx:ctx(), maislurp-client-erlang_create_device_preview_import_options:maislurp-client-erlang_create_device_preview_import_options()) -> {ok, maislurp-client-erlang_create_device_preview_run_result:maislurp-client-erlang_create_device_preview_run_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_device_preview_run_from_import(Ctx, MaislurpClientErlangCreateDevicePreviewImportOptions) ->
    create_device_preview_run_from_import(Ctx, MaislurpClientErlangCreateDevicePreviewImportOptions, #{}).

-spec create_device_preview_run_from_import(ctx:ctx(), maislurp-client-erlang_create_device_preview_import_options:maislurp-client-erlang_create_device_preview_import_options(), maps:map()) -> {ok, maislurp-client-erlang_create_device_preview_run_result:maislurp-client-erlang_create_device_preview_run_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_device_preview_run_from_import(Ctx, MaislurpClientErlangCreateDevicePreviewImportOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/emails/device-previews/import"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateDevicePreviewImportOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create a device preview run from multipart EML upload
%% 
-spec create_device_preview_run_from_multipart_import(ctx:ctx(), binary()) -> {ok, maislurp-client-erlang_create_device_preview_run_result:maislurp-client-erlang_create_device_preview_run_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_device_preview_run_from_multipart_import(Ctx, File) ->
    create_device_preview_run_from_multipart_import(Ctx, File, #{}).

-spec create_device_preview_run_from_multipart_import(ctx:ctx(), binary(), maps:map()) -> {ok, maislurp-client-erlang_create_device_preview_run_result:maislurp-client-erlang_create_device_preview_run_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_device_preview_run_from_multipart_import(Ctx, File, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/emails/device-previews/import/multipart"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['sourceAlias', 'externalId', 'allTargets', 'targets', 'folderId'], _OptionalParams),
    Headers = [],
    Body1 = {form, [{<<"file">>, File}]++maislurp-client-erlang_utils:optional_params([], _OptionalParams)},
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"multipart/form-data">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create a device preview run from raw MIME bytes
%% 
-spec create_device_preview_run_from_raw_import(ctx:ctx()) -> {ok, maislurp-client-erlang_create_device_preview_run_result:maislurp-client-erlang_create_device_preview_run_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_device_preview_run_from_raw_import(Ctx) ->
    create_device_preview_run_from_raw_import(Ctx, #{}).

-spec create_device_preview_run_from_raw_import(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_create_device_preview_run_result:maislurp-client-erlang_create_device_preview_run_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_device_preview_run_from_raw_import(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/emails/device-previews/import/raw"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['sourceAlias', 'externalId', 'allTargets', 'targets', 'folderId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create a share link for a device preview run
%% 
-spec create_device_preview_share_link(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_device_preview_share_link_dto:maislurp-client-erlang_device_preview_share_link_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_device_preview_share_link(Ctx, RunId) ->
    create_device_preview_share_link(Ctx, RunId, #{}).

-spec create_device_preview_share_link(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_device_preview_share_link_dto:maislurp-client-erlang_device_preview_share_link_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_device_preview_share_link(Ctx, RunId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/emails/device-previews/", RunId, "/share-links"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateDevicePreviewShareLinkOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete a folder, preserving renders and child folders
%% 
-spec delete_device_preview_folder(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_delete_device_preview_folder_result:maislurp-client-erlang_delete_device_preview_folder_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_device_preview_folder(Ctx, FolderId) ->
    delete_device_preview_folder(Ctx, FolderId, #{}).

-spec delete_device_preview_folder(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_delete_device_preview_folder_result:maislurp-client-erlang_delete_device_preview_folder_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_device_preview_folder(Ctx, FolderId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/emails/device-previews/folders/", FolderId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete a device preview profile
%% 
-spec delete_device_preview_profile(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_delete_device_preview_profile_result:maislurp-client-erlang_delete_device_preview_profile_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_device_preview_profile(Ctx, ProfileId) ->
    delete_device_preview_profile(Ctx, ProfileId, #{}).

-spec delete_device_preview_profile(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_delete_device_preview_profile_result:maislurp-client-erlang_delete_device_preview_profile_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_device_preview_profile(Ctx, ProfileId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/emails/device-previews/profiles/", ProfileId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete local device preview run data
%% 
-spec delete_device_preview_run(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_delete_device_preview_run_result:maislurp-client-erlang_delete_device_preview_run_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_device_preview_run(Ctx, RunId) ->
    delete_device_preview_run(Ctx, RunId, #{}).

-spec delete_device_preview_run(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_delete_device_preview_run_result:maislurp-client-erlang_delete_device_preview_run_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_device_preview_run(Ctx, RunId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/emails/device-previews/", RunId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Revoke a device preview share link
%% 
-spec delete_device_preview_share_link(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_delete_device_preview_share_link_result:maislurp-client-erlang_delete_device_preview_share_link_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_device_preview_share_link(Ctx, ShareLinkId) ->
    delete_device_preview_share_link(Ctx, ShareLinkId, #{}).

-spec delete_device_preview_share_link(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_delete_device_preview_share_link_result:maislurp-client-erlang_delete_device_preview_share_link_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_device_preview_share_link(Ctx, ShareLinkId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/emails/device-previews/share-links/", ShareLinkId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Download the original RFC822 email for a device preview submission
%% 
-spec download_device_preview_email_submission_source_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, binary(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
download_device_preview_email_submission_source_email(Ctx, SubmissionId) ->
    download_device_preview_email_submission_source_email(Ctx, SubmissionId, #{}).

-spec download_device_preview_email_submission_source_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, binary(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
download_device_preview_email_submission_source_email(Ctx, SubmissionId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/device-previews/email-submissions/", SubmissionId, "/source-email/raw"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Download the original RFC822 email for a device preview run
%% 
-spec download_device_preview_run_source_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, binary(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
download_device_preview_run_source_email(Ctx, RunId) ->
    download_device_preview_run_source_email(Ctx, RunId, #{}).

-spec download_device_preview_run_source_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, binary(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
download_device_preview_run_source_email(Ctx, RunId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/device-previews/", RunId, "/source-email/raw"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Return active run for email or create one when none exists
%% 
-spec ensure_device_preview_run(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_create_device_preview_run_result:maislurp-client-erlang_create_device_preview_run_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
ensure_device_preview_run(Ctx, EmailId) ->
    ensure_device_preview_run(Ctx, EmailId, #{}).

-spec ensure_device_preview_run(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_create_device_preview_run_result:maislurp-client-erlang_create_device_preview_run_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
ensure_device_preview_run(Ctx, EmailId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/emails/", EmailId, "/device-previews/latest"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateDevicePreviewOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Return account device preview email domain setup or create one
%% 
-spec get_device_preview_email_domain_or_create(ctx:ctx()) -> {ok, maislurp-client-erlang_device_preview_account_settings_dto:maislurp-client-erlang_device_preview_account_settings_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_email_domain_or_create(Ctx) ->
    get_device_preview_email_domain_or_create(Ctx, #{}).

-spec get_device_preview_email_domain_or_create(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_device_preview_account_settings_dto:maislurp-client-erlang_device_preview_account_settings_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_email_domain_or_create(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/emails/device-previews/email-domain"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List device preview runs created from account email domains
%% 
-spec get_device_preview_email_runs(ctx:ctx(), maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()) -> {ok, [maislurp-client-erlang_device_preview_run_dto:maislurp-client-erlang_device_preview_run_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_email_runs(Ctx, Since) ->
    get_device_preview_email_runs(Ctx, Since, #{}).

-spec get_device_preview_email_runs(ctx:ctx(), maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(), maps:map()) -> {ok, [maislurp-client-erlang_device_preview_run_dto:maislurp-client-erlang_device_preview_run_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_email_runs(Ctx, Since, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/device-previews/email-runs"],
    QS = lists:flatten([{<<"since">>, Since}])++maislurp-client-erlang_utils:optional_params(['emailDomainId', 'profileId', 'localPart', 'limit', 'hydrateThumbnail'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get the original email content for a device preview submission
%% 
-spec get_device_preview_email_submission_source_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_device_preview_source_email_dto:maislurp-client-erlang_device_preview_source_email_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_email_submission_source_email(Ctx, SubmissionId) ->
    get_device_preview_email_submission_source_email(Ctx, SubmissionId, #{}).

-spec get_device_preview_email_submission_source_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_device_preview_source_email_dto:maislurp-client-erlang_device_preview_source_email_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_email_submission_source_email(Ctx, SubmissionId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/device-previews/email-submissions/", SubmissionId, "/source-email"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List received device preview email submissions
%% 
-spec get_device_preview_email_submissions(ctx:ctx(), maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()) -> {ok, [maislurp-client-erlang_device_preview_email_submission_dto:maislurp-client-erlang_device_preview_email_submission_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_email_submissions(Ctx, Since) ->
    get_device_preview_email_submissions(Ctx, Since, #{}).

-spec get_device_preview_email_submissions(ctx:ctx(), maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(), maps:map()) -> {ok, [maislurp-client-erlang_device_preview_email_submission_dto:maislurp-client-erlang_device_preview_email_submission_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_email_submissions(Ctx, Since, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/device-previews/email-submissions"],
    QS = lists:flatten([{<<"since">>, Since}])++maislurp-client-erlang_utils:optional_params(['emailDomainId', 'profileId', 'localPart', 'limit', 'recipientEmailAddress'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get a single device preview feedback item
%% 
-spec get_device_preview_feedback(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_device_preview_feedback_dto:maislurp-client-erlang_device_preview_feedback_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_feedback(Ctx, FeedbackId) ->
    get_device_preview_feedback(Ctx, FeedbackId, #{}).

-spec get_device_preview_feedback(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_device_preview_feedback_dto:maislurp-client-erlang_device_preview_feedback_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_feedback(Ctx, FeedbackId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/device-previews/feedback/", FeedbackId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List device preview feedback
%% 
-spec get_device_preview_feedback_items(ctx:ctx()) -> {ok, maislurp-client-erlang_device_preview_feedback_list_dto:maislurp-client-erlang_device_preview_feedback_list_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_feedback_items(Ctx) ->
    get_device_preview_feedback_items(Ctx, #{}).

-spec get_device_preview_feedback_items(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_device_preview_feedback_list_dto:maislurp-client-erlang_device_preview_feedback_list_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_feedback_items(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/device-previews/feedback"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'source', 'runId', 'status', 'provider', 'category', 'search'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get a device preview folder
%% 
-spec get_device_preview_folder(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_device_preview_folder_dto:maislurp-client-erlang_device_preview_folder_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_folder(Ctx, FolderId) ->
    get_device_preview_folder(Ctx, FolderId, #{}).

-spec get_device_preview_folder(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_device_preview_folder_dto:maislurp-client-erlang_device_preview_folder_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_folder(Ctx, FolderId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/device-previews/folders/", FolderId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List device preview folders
%% 
-spec get_device_preview_folders(ctx:ctx()) -> {ok, [maislurp-client-erlang_device_preview_folder_dto:maislurp-client-erlang_device_preview_folder_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_folders(Ctx) ->
    get_device_preview_folders(Ctx, #{}).

-spec get_device_preview_folders(ctx:ctx(), maps:map()) -> {ok, [maislurp-client-erlang_device_preview_folder_dto:maislurp-client-erlang_device_preview_folder_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_folders(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/device-previews/folders"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get temporary device preview import address status
%% 
-spec get_device_preview_import_address(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_device_preview_ingest_address_dto:maislurp-client-erlang_device_preview_ingest_address_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_import_address(Ctx, SessionId) ->
    get_device_preview_import_address(Ctx, SessionId, #{}).

-spec get_device_preview_import_address(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_device_preview_ingest_address_dto:maislurp-client-erlang_device_preview_ingest_address_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_import_address(Ctx, SessionId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/device-previews/import-addresses/", SessionId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get native device preview target availability
%% Returns live native device preview target availability for authenticated API clients, including worker health, queue, timeout, and status fields. Use `/device-preview-targets` when you need the stable catalog without transient availability data.
-spec get_device_preview_native_target_availability(ctx:ctx()) -> {ok, maislurp-client-erlang_device_preview_native_target_availability_list_dto:maislurp-client-erlang_device_preview_native_target_availability_list_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_native_target_availability(Ctx) ->
    get_device_preview_native_target_availability(Ctx, #{}).

-spec get_device_preview_native_target_availability(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_device_preview_native_target_availability_list_dto:maislurp-client-erlang_device_preview_native_target_availability_list_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_native_target_availability(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/device-previews/native-targets/availability"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get a device preview profile
%% 
-spec get_device_preview_profile(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_device_preview_profile_dto:maislurp-client-erlang_device_preview_profile_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_profile(Ctx, ProfileId) ->
    get_device_preview_profile(Ctx, ProfileId, #{}).

-spec get_device_preview_profile(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_device_preview_profile_dto:maislurp-client-erlang_device_preview_profile_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_profile(Ctx, ProfileId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/device-previews/profiles/", ProfileId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List device preview profiles
%% 
-spec get_device_preview_profiles(ctx:ctx()) -> {ok, [maislurp-client-erlang_device_preview_profile_dto:maislurp-client-erlang_device_preview_profile_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_profiles(Ctx) ->
    get_device_preview_profiles(Ctx, #{}).

-spec get_device_preview_profiles(ctx:ctx(), maps:map()) -> {ok, [maislurp-client-erlang_device_preview_profile_dto:maislurp-client-erlang_device_preview_profile_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_profiles(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/device-previews/profiles"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get device preview run status
%% 
-spec get_device_preview_run(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_device_preview_run_dto:maislurp-client-erlang_device_preview_run_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_run(Ctx, RunId) ->
    get_device_preview_run(Ctx, RunId, #{}).

-spec get_device_preview_run(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_device_preview_run_dto:maislurp-client-erlang_device_preview_run_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_run(Ctx, RunId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/device-previews/", RunId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get provider-level progress for a device preview run
%% 
-spec get_device_preview_run_provider_progress(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), binary()) -> {ok, maislurp-client-erlang_device_preview_provider_progress_dto:maislurp-client-erlang_device_preview_provider_progress_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_run_provider_progress(Ctx, RunId, Provider) ->
    get_device_preview_run_provider_progress(Ctx, RunId, Provider, #{}).

-spec get_device_preview_run_provider_progress(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), binary(), maps:map()) -> {ok, maislurp-client-erlang_device_preview_provider_progress_dto:maislurp-client-erlang_device_preview_provider_progress_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_run_provider_progress(Ctx, RunId, Provider, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/device-previews/", RunId, "/providers/", Provider, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get device preview run results
%% 
-spec get_device_preview_run_results(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_device_preview_run_results_dto:maislurp-client-erlang_device_preview_run_results_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_run_results(Ctx, RunId) ->
    get_device_preview_run_results(Ctx, RunId, #{}).

-spec get_device_preview_run_results(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_device_preview_run_results_dto:maislurp-client-erlang_device_preview_run_results_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_run_results(Ctx, RunId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/device-previews/", RunId, "/results"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get a device preview screenshot image
%% 
-spec get_device_preview_run_screenshot(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_byte_array:maislurp-client-erlang_byte_array(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_run_screenshot(Ctx, RunId, ScreenshotId) ->
    get_device_preview_run_screenshot(Ctx, RunId, ScreenshotId, #{}).

-spec get_device_preview_run_screenshot(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_byte_array:maislurp-client-erlang_byte_array(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_run_screenshot(Ctx, RunId, ScreenshotId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/device-previews/", RunId, "/screenshots/", ScreenshotId, "/image"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get the original email content for a device preview run
%% 
-spec get_device_preview_run_source_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_device_preview_source_email_dto:maislurp-client-erlang_device_preview_source_email_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_run_source_email(Ctx, RunId) ->
    get_device_preview_run_source_email(Ctx, RunId, #{}).

-spec get_device_preview_run_source_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_device_preview_source_email_dto:maislurp-client-erlang_device_preview_source_email_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_run_source_email(Ctx, RunId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/device-previews/", RunId, "/source-email"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List previous device preview runs for an email
%% 
-spec get_device_preview_runs(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [maislurp-client-erlang_device_preview_run_dto:maislurp-client-erlang_device_preview_run_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_runs(Ctx, EmailId) ->
    get_device_preview_runs(Ctx, EmailId, #{}).

-spec get_device_preview_runs(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [maislurp-client-erlang_device_preview_run_dto:maislurp-client-erlang_device_preview_run_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_runs(Ctx, EmailId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/", EmailId, "/device-previews"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['limit', 'hydrateThumbnail'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List previous device preview runs for account
%% 
-spec get_device_preview_runs_for_account(ctx:ctx()) -> {ok, [maislurp-client-erlang_device_preview_run_dto:maislurp-client-erlang_device_preview_run_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_runs_for_account(Ctx) ->
    get_device_preview_runs_for_account(Ctx, #{}).

-spec get_device_preview_runs_for_account(ctx:ctx(), maps:map()) -> {ok, [maislurp-client-erlang_device_preview_run_dto:maislurp-client-erlang_device_preview_run_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_runs_for_account(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/device-previews"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['limit', 'hydrateThumbnail'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List previous device preview runs for account in paginated form
%% 
-spec get_device_preview_runs_for_account_offset_paginated(ctx:ctx()) -> {ok, maislurp-client-erlang_page_device_preview_run_projection:maislurp-client-erlang_page_device_preview_run_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_runs_for_account_offset_paginated(Ctx) ->
    get_device_preview_runs_for_account_offset_paginated(Ctx, #{}).

-spec get_device_preview_runs_for_account_offset_paginated(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_device_preview_run_projection:maislurp-client-erlang_page_device_preview_run_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_runs_for_account_offset_paginated(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/device-previews/offset-paginated"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'hydrateThumbnail', 'folderId', 'unfiledOnly', 'emailId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List previous device preview runs for an email in paginated form
%% 
-spec get_device_preview_runs_offset_paginated(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_page_device_preview_run_projection:maislurp-client-erlang_page_device_preview_run_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_runs_offset_paginated(Ctx, EmailId) ->
    get_device_preview_runs_offset_paginated(Ctx, EmailId, #{}).

-spec get_device_preview_runs_offset_paginated(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_page_device_preview_run_projection:maislurp-client-erlang_page_device_preview_run_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_runs_offset_paginated(Ctx, EmailId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/", EmailId, "/device-previews/offset-paginated"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'hydrateThumbnail'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List share links for a device preview run
%% 
-spec get_device_preview_share_links(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [maislurp-client-erlang_device_preview_share_link_dto:maislurp-client-erlang_device_preview_share_link_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_share_links(Ctx, RunId) ->
    get_device_preview_share_links(Ctx, RunId, #{}).

-spec get_device_preview_share_links(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [maislurp-client-erlang_device_preview_share_link_dto:maislurp-client-erlang_device_preview_share_link_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_share_links(Ctx, RunId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/device-previews/", RunId, "/share-links"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get a public shared device preview result
%% 
-spec get_device_preview_shared_result(ctx:ctx(), binary()) -> {ok, maislurp-client-erlang_device_preview_shared_result_dto:maislurp-client-erlang_device_preview_shared_result_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_shared_result(Ctx, ShareToken) ->
    get_device_preview_shared_result(Ctx, ShareToken, #{}).

-spec get_device_preview_shared_result(ctx:ctx(), binary(), maps:map()) -> {ok, maislurp-client-erlang_device_preview_shared_result_dto:maislurp-client-erlang_device_preview_shared_result_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_shared_result(Ctx, ShareToken, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/device-previews/share/", ShareToken, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get a public shared device preview screenshot image
%% 
-spec get_device_preview_shared_result_screenshot(ctx:ctx(), binary(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_byte_array:maislurp-client-erlang_byte_array(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_shared_result_screenshot(Ctx, ShareToken, ScreenshotId) ->
    get_device_preview_shared_result_screenshot(Ctx, ShareToken, ScreenshotId, #{}).

-spec get_device_preview_shared_result_screenshot(ctx:ctx(), binary(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_byte_array:maislurp-client-erlang_byte_array(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_shared_result_screenshot(Ctx, ShareToken, ScreenshotId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/device-previews/share/", ShareToken, "/screenshots/", ScreenshotId, "/image"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List device preview targets
%% Returns visible native device preview target metadata without worker availability, queue, or health fields.
-spec get_device_preview_targets(ctx:ctx()) -> {ok, maislurp-client-erlang_device_preview_native_target_list_dto:maislurp-client-erlang_device_preview_native_target_list_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_targets(Ctx) ->
    get_device_preview_targets(Ctx, #{}).

-spec get_device_preview_targets(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_device_preview_native_target_list_dto:maislurp-client-erlang_device_preview_native_target_list_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_device_preview_targets(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/device-preview-targets"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Move device preview runs to a folder or Unfiled
%% 
-spec move_device_preview_runs(ctx:ctx(), maislurp-client-erlang_move_device_preview_runs_options:maislurp-client-erlang_move_device_preview_runs_options()) -> {ok, maislurp-client-erlang_move_device_preview_runs_result:maislurp-client-erlang_move_device_preview_runs_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
move_device_preview_runs(Ctx, MaislurpClientErlangMoveDevicePreviewRunsOptions) ->
    move_device_preview_runs(Ctx, MaislurpClientErlangMoveDevicePreviewRunsOptions, #{}).

-spec move_device_preview_runs(ctx:ctx(), maislurp-client-erlang_move_device_preview_runs_options:maislurp-client-erlang_move_device_preview_runs_options(), maps:map()) -> {ok, maislurp-client-erlang_move_device_preview_runs_result:maislurp-client-erlang_move_device_preview_runs_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
move_device_preview_runs(Ctx, MaislurpClientErlangMoveDevicePreviewRunsOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/emails/device-previews/folders/runs"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangMoveDevicePreviewRunsOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Rerun selected device preview targets in the same run
%% Set failedOnly=false to rerun a successful target. Successful targets consume their configured credit cost again.
-spec rerun_device_preview_targets(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_rerun_device_preview_targets_options:maislurp-client-erlang_rerun_device_preview_targets_options()) -> {ok, maislurp-client-erlang_rerun_device_preview_targets_result:maislurp-client-erlang_rerun_device_preview_targets_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
rerun_device_preview_targets(Ctx, RunId, MaislurpClientErlangRerunDevicePreviewTargetsOptions) ->
    rerun_device_preview_targets(Ctx, RunId, MaislurpClientErlangRerunDevicePreviewTargetsOptions, #{}).

-spec rerun_device_preview_targets(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_rerun_device_preview_targets_options:maislurp-client-erlang_rerun_device_preview_targets_options(), maps:map()) -> {ok, maislurp-client-erlang_rerun_device_preview_targets_result:maislurp-client-erlang_rerun_device_preview_targets_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
rerun_device_preview_targets(Ctx, RunId, MaislurpClientErlangRerunDevicePreviewTargetsOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/emails/device-previews/", RunId, "/targets/rerun"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangRerunDevicePreviewTargetsOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update account device preview email subdomain
%% 
-spec update_device_preview_email_domain_subdomain(ctx:ctx(), maislurp-client-erlang_update_device_preview_ingest_domain_options:maislurp-client-erlang_update_device_preview_ingest_domain_options()) -> {ok, maislurp-client-erlang_device_preview_account_settings_dto:maislurp-client-erlang_device_preview_account_settings_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_device_preview_email_domain_subdomain(Ctx, MaislurpClientErlangUpdateDevicePreviewIngestDomainOptions) ->
    update_device_preview_email_domain_subdomain(Ctx, MaislurpClientErlangUpdateDevicePreviewIngestDomainOptions, #{}).

-spec update_device_preview_email_domain_subdomain(ctx:ctx(), maislurp-client-erlang_update_device_preview_ingest_domain_options:maislurp-client-erlang_update_device_preview_ingest_domain_options(), maps:map()) -> {ok, maislurp-client-erlang_device_preview_account_settings_dto:maislurp-client-erlang_device_preview_account_settings_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_device_preview_email_domain_subdomain(Ctx, MaislurpClientErlangUpdateDevicePreviewIngestDomainOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/emails/device-previews/email-domain/subdomain"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangUpdateDevicePreviewIngestDomainOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update device preview feedback
%% 
-spec update_device_preview_feedback(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_update_device_preview_feedback_options:maislurp-client-erlang_update_device_preview_feedback_options()) -> {ok, maislurp-client-erlang_device_preview_feedback_dto:maislurp-client-erlang_device_preview_feedback_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_device_preview_feedback(Ctx, FeedbackId, MaislurpClientErlangUpdateDevicePreviewFeedbackOptions) ->
    update_device_preview_feedback(Ctx, FeedbackId, MaislurpClientErlangUpdateDevicePreviewFeedbackOptions, #{}).

-spec update_device_preview_feedback(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_update_device_preview_feedback_options:maislurp-client-erlang_update_device_preview_feedback_options(), maps:map()) -> {ok, maislurp-client-erlang_device_preview_feedback_dto:maislurp-client-erlang_device_preview_feedback_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_device_preview_feedback(Ctx, FeedbackId, MaislurpClientErlangUpdateDevicePreviewFeedbackOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/emails/device-previews/feedback/", FeedbackId, ""],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangUpdateDevicePreviewFeedbackOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Rename or move a device preview folder
%% 
-spec update_device_preview_folder(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_update_device_preview_folder_options:maislurp-client-erlang_update_device_preview_folder_options()) -> {ok, maislurp-client-erlang_device_preview_folder_dto:maislurp-client-erlang_device_preview_folder_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_device_preview_folder(Ctx, FolderId, MaislurpClientErlangUpdateDevicePreviewFolderOptions) ->
    update_device_preview_folder(Ctx, FolderId, MaislurpClientErlangUpdateDevicePreviewFolderOptions, #{}).

-spec update_device_preview_folder(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_update_device_preview_folder_options:maislurp-client-erlang_update_device_preview_folder_options(), maps:map()) -> {ok, maislurp-client-erlang_device_preview_folder_dto:maislurp-client-erlang_device_preview_folder_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_device_preview_folder(Ctx, FolderId, MaislurpClientErlangUpdateDevicePreviewFolderOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/emails/device-previews/folders/", FolderId, ""],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangUpdateDevicePreviewFolderOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update a device preview profile
%% 
-spec update_device_preview_profile(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_update_device_preview_profile_options:maislurp-client-erlang_update_device_preview_profile_options()) -> {ok, maislurp-client-erlang_device_preview_profile_dto:maislurp-client-erlang_device_preview_profile_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_device_preview_profile(Ctx, ProfileId, MaislurpClientErlangUpdateDevicePreviewProfileOptions) ->
    update_device_preview_profile(Ctx, ProfileId, MaislurpClientErlangUpdateDevicePreviewProfileOptions, #{}).

-spec update_device_preview_profile(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_update_device_preview_profile_options:maislurp-client-erlang_update_device_preview_profile_options(), maps:map()) -> {ok, maislurp-client-erlang_device_preview_profile_dto:maislurp-client-erlang_device_preview_profile_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_device_preview_profile(Ctx, ProfileId, MaislurpClientErlangUpdateDevicePreviewProfileOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/emails/device-previews/profiles/", ProfileId, ""],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangUpdateDevicePreviewProfileOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Wait for device preview runs created from account email domains
%% 
-spec wait_for_device_preview_email_runs(ctx:ctx(), maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()) -> {ok, maislurp-client-erlang_device_preview_ingest_run_wait_result:maislurp-client-erlang_device_preview_ingest_run_wait_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
wait_for_device_preview_email_runs(Ctx, Since) ->
    wait_for_device_preview_email_runs(Ctx, Since, #{}).

-spec wait_for_device_preview_email_runs(ctx:ctx(), maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(), maps:map()) -> {ok, maislurp-client-erlang_device_preview_ingest_run_wait_result:maislurp-client-erlang_device_preview_ingest_run_wait_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
wait_for_device_preview_email_runs(Ctx, Since, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/device-previews/email-runs/wait"],
    QS = lists:flatten([{<<"since">>, Since}])++maislurp-client-erlang_utils:optional_params(['emailDomainId', 'profileId', 'localPart', 'limit', 'timeoutMillis', 'pollIntervalMillis', 'hydrateThumbnail'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Wait for received device preview email submissions
%% 
-spec wait_for_device_preview_email_submissions(ctx:ctx(), maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()) -> {ok, maislurp-client-erlang_device_preview_email_submission_wait_result:maislurp-client-erlang_device_preview_email_submission_wait_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
wait_for_device_preview_email_submissions(Ctx, Since) ->
    wait_for_device_preview_email_submissions(Ctx, Since, #{}).

-spec wait_for_device_preview_email_submissions(ctx:ctx(), maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(), maps:map()) -> {ok, maislurp-client-erlang_device_preview_email_submission_wait_result:maislurp-client-erlang_device_preview_email_submission_wait_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
wait_for_device_preview_email_submissions(Ctx, Since, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/device-previews/email-submissions/wait"],
    QS = lists:flatten([{<<"since">>, Since}])++maislurp-client-erlang_utils:optional_params(['emailDomainId', 'profileId', 'localPart', 'limit', 'timeoutMillis', 'pollIntervalMillis', 'recipientEmailAddress'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Wait for device preview run to complete
%% 
-spec wait_for_device_preview_run(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_device_preview_run_wait_result:maislurp-client-erlang_device_preview_run_wait_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
wait_for_device_preview_run(Ctx, RunId) ->
    wait_for_device_preview_run(Ctx, RunId, #{}).

-spec wait_for_device_preview_run(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_device_preview_run_wait_result:maislurp-client-erlang_device_preview_run_wait_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
wait_for_device_preview_run(Ctx, RunId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/device-previews/", RunId, "/wait"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['timeoutMillis', 'pollIntervalMillis'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


