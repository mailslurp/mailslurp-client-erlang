-module(maislurp-client-erlang_sent_emails_controller_api).

-export([delete_all_sent_emails/1, delete_all_sent_emails/2,
         delete_sent_email/2, delete_sent_email/3,
         get_all_sent_tracking_pixels/1, get_all_sent_tracking_pixels/2,
         get_raw_sent_email_contents/2, get_raw_sent_email_contents/3,
         get_raw_sent_email_json/2, get_raw_sent_email_json/3,
         get_sent_email/2, get_sent_email/3,
         get_sent_email_html_content/2, get_sent_email_html_content/3,
         get_sent_email_preview_urls/2, get_sent_email_preview_urls/3,
         get_sent_email_tracking_pixels/2, get_sent_email_tracking_pixels/3,
         get_sent_emails/1, get_sent_emails/2,
         get_sent_emails_with_queue_results/1, get_sent_emails_with_queue_results/2,
         get_sent_organization_emails/1, get_sent_organization_emails/2]).

-define(BASE_URL, "").

%% @doc Delete all sent email receipts
%% 
-spec delete_all_sent_emails(ctx:ctx()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_all_sent_emails(Ctx) ->
    delete_all_sent_emails(Ctx, #{}).

-spec delete_all_sent_emails(ctx:ctx(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_all_sent_emails(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/sent"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete sent email receipt
%% 
-spec delete_sent_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_sent_email(Ctx, Id) ->
    delete_sent_email(Ctx, Id, #{}).

-spec delete_sent_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_sent_email(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/sent/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get all sent email tracking pixels in paginated form
-spec get_all_sent_tracking_pixels(ctx:ctx()) -> {ok, maislurp-client-erlang_page_tracking_pixel_projection:maislurp-client-erlang_page_tracking_pixel_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_all_sent_tracking_pixels(Ctx) ->
    get_all_sent_tracking_pixels(Ctx, #{}).

-spec get_all_sent_tracking_pixels(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_tracking_pixel_projection:maislurp-client-erlang_page_tracking_pixel_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_all_sent_tracking_pixels(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/sent/tracking-pixels"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'searchFilter', 'since', 'before'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get raw sent email string. Returns unparsed raw SMTP message with headers and body.
%% Returns a raw, unparsed, and unprocessed sent email. If your client has issues processing the response it is likely due to the response content-type which is text/plain. If you need a JSON response content-type use the getRawSentEmailJson endpoint
-spec get_raw_sent_email_contents(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, binary(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_raw_sent_email_contents(Ctx, EmailId) ->
    get_raw_sent_email_contents(Ctx, EmailId, #{}).

-spec get_raw_sent_email_contents(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, binary(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_raw_sent_email_contents(Ctx, EmailId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/sent/", EmailId, "/raw"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get raw sent email in JSON. Unparsed SMTP message in JSON wrapper format.
%% Returns a raw, unparsed, and unprocessed sent email wrapped in a JSON response object for easier handling when compared with the getRawSentEmail text/plain response
-spec get_raw_sent_email_json(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_raw_email_json:maislurp-client-erlang_raw_email_json(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_raw_sent_email_json(Ctx, EmailId) ->
    get_raw_sent_email_json(Ctx, EmailId, #{}).

-spec get_raw_sent_email_json(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_raw_email_json:maislurp-client-erlang_raw_email_json(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_raw_sent_email_json(Ctx, EmailId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/sent/", EmailId, "/raw/json"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get sent email receipt
%% 
-spec get_sent_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_sent_email_dto:maislurp-client-erlang_sent_email_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_sent_email(Ctx, Id) ->
    get_sent_email(Ctx, Id, #{}).

-spec get_sent_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_sent_email_dto:maislurp-client-erlang_sent_email_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_sent_email(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/sent/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get sent email HTML content
%% 
-spec get_sent_email_html_content(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, binary(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_sent_email_html_content(Ctx, Id) ->
    get_sent_email_html_content(Ctx, Id, #{}).

-spec get_sent_email_html_content(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, binary(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_sent_email_html_content(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/sent/", Id, "/html"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get sent email URL for viewing in browser or downloading
%% Get a list of URLs for sent email content as text/html or raw SMTP message for viewing the message in a browser.
-spec get_sent_email_preview_urls(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_email_preview_urls:maislurp-client-erlang_email_preview_urls(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_sent_email_preview_urls(Ctx, Id) ->
    get_sent_email_preview_urls(Ctx, Id, #{}).

-spec get_sent_email_preview_urls(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_email_preview_urls:maislurp-client-erlang_email_preview_urls(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_sent_email_preview_urls(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/sent/", Id, "/urls"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get all tracking pixels for a sent email in paginated form
-spec get_sent_email_tracking_pixels(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_page_tracking_pixel_projection:maislurp-client-erlang_page_tracking_pixel_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_sent_email_tracking_pixels(Ctx, Id) ->
    get_sent_email_tracking_pixels(Ctx, Id, #{}).

-spec get_sent_email_tracking_pixels(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_page_tracking_pixel_projection:maislurp-client-erlang_page_tracking_pixel_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_sent_email_tracking_pixels(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/sent/", Id, "/tracking-pixels"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'searchFilter', 'since', 'before'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get all sent emails in paginated form
%% 
-spec get_sent_emails(ctx:ctx()) -> {ok, maislurp-client-erlang_page_sent_email_projection:maislurp-client-erlang_page_sent_email_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_sent_emails(Ctx) ->
    get_sent_emails(Ctx, #{}).

-spec get_sent_emails(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_sent_email_projection:maislurp-client-erlang_page_sent_email_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_sent_emails(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/sent"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['inboxId', 'page', 'size', 'sort', 'searchFilter', 'since', 'before'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get results of email sent with queues in paginated form
%% 
-spec get_sent_emails_with_queue_results(ctx:ctx()) -> {ok, maislurp-client-erlang_page_sent_email_with_queue_projection:maislurp-client-erlang_page_sent_email_with_queue_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_sent_emails_with_queue_results(Ctx) ->
    get_sent_emails_with_queue_results(Ctx, #{}).

-spec get_sent_emails_with_queue_results(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_sent_email_with_queue_projection:maislurp-client-erlang_page_sent_email_with_queue_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_sent_emails_with_queue_results(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/sent/queue-results"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'since', 'before'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get all sent organization emails in paginated form
-spec get_sent_organization_emails(ctx:ctx()) -> {ok, maislurp-client-erlang_page_sent_email_projection:maislurp-client-erlang_page_sent_email_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_sent_organization_emails(Ctx) ->
    get_sent_organization_emails(Ctx, #{}).

-spec get_sent_organization_emails(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_sent_email_projection:maislurp-client-erlang_page_sent_email_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_sent_organization_emails(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/sent/organization"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['inboxId', 'page', 'size', 'sort', 'searchFilter', 'since', 'before'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


