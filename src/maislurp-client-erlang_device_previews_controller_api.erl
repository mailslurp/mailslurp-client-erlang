-module(maislurp-client-erlang_device_previews_controller_api).

-export([cancel_device_preview_run/3, cancel_device_preview_run/4,
         create_device_preview_feedback/2, create_device_preview_feedback/3,
         create_device_preview_run/3, create_device_preview_run/4,
         delete_device_preview_run/2, delete_device_preview_run/3,
         ensure_device_preview_run/3, ensure_device_preview_run/4,
         get_device_preview_feedback/2, get_device_preview_feedback/3,
         get_device_preview_feedback_items/1, get_device_preview_feedback_items/2,
         get_device_preview_run/2, get_device_preview_run/3,
         get_device_preview_run_provider_progress/3, get_device_preview_run_provider_progress/4,
         get_device_preview_run_results/2, get_device_preview_run_results/3,
         get_device_preview_run_screenshot/3, get_device_preview_run_screenshot/4,
         get_device_preview_runs/2, get_device_preview_runs/3,
         get_device_preview_runs_for_account/1, get_device_preview_runs_for_account/2,
         get_device_preview_runs_offset_paginated/2, get_device_preview_runs_offset_paginated/3,
         update_device_preview_feedback/3, update_device_preview_feedback/4]).

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

%% @doc Get a seeded device preview screenshot image
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
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['limit'], _OptionalParams),
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
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['limit'], _OptionalParams),
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
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
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


