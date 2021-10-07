-module(maislurp-client-erlang_inbox_controller_api).

-export([create_inbox/1, create_inbox/2,
         create_inbox_ruleset/3, create_inbox_ruleset/4,
         create_inbox_with_defaults/1, create_inbox_with_defaults/2,
         create_inbox_with_options/2, create_inbox_with_options/3,
         delete_all_inboxes/1, delete_all_inboxes/2,
         delete_inbox/2, delete_inbox/3,
         does_inbox_exist/2, does_inbox_exist/3,
         flush_expired/1, flush_expired/2,
         get_all_inboxes/1, get_all_inboxes/2,
         get_emails/2, get_emails/3,
         get_inbox/2, get_inbox/3,
         get_inbox_emails_paginated/2, get_inbox_emails_paginated/3,
         get_inbox_sent_emails/2, get_inbox_sent_emails/3,
         get_inbox_tags/1, get_inbox_tags/2,
         get_inboxes/1, get_inboxes/2,
         get_organization_inboxes/1, get_organization_inboxes/2,
         list_inbox_rulesets/2, list_inbox_rulesets/3,
         list_inbox_tracking_pixels/2, list_inbox_tracking_pixels/3,
         send_email/3, send_email/4,
         send_email_and_confirm/3, send_email_and_confirm/4,
         send_test_email/2, send_test_email/3,
         set_inbox_favourited/3, set_inbox_favourited/4,
         update_inbox/3, update_inbox/4]).

-define(BASE_URL, "").

%% @doc Create an inbox email address. An inbox has a real email address and can send and receive emails. Inboxes can be either `SMTP` or `HTTP` inboxes.
%% Create a new inbox and with a randomized email address to send and receive from. Pass emailAddress parameter if you wish to use a specific email address. Creating an inbox is required before sending or receiving emails. If writing tests it is recommended that you create a new inbox during each test method so that it is unique and empty. 
-spec create_inbox(ctx:ctx()) -> {ok, maislurp-client-erlang_inbox:maislurp-client-erlang_inbox(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_inbox(Ctx) ->
    create_inbox(Ctx, #{}).

-spec create_inbox(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_inbox:maislurp-client-erlang_inbox(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_inbox(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/inboxes"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['allowTeamAccess', 'description', 'emailAddress', 'expiresAt', 'expiresIn', 'favourite', 'inboxType', 'name', 'tags', 'useDomainPool'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create an inbox ruleset
%% Create a new inbox rule for forwarding, blocking, and allowing emails when sending and receiving
-spec create_inbox_ruleset(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_create_inbox_ruleset_options:maislurp-client-erlang_create_inbox_ruleset_options()) -> {ok, maislurp-client-erlang_inbox_ruleset_dto:maislurp-client-erlang_inbox_ruleset_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_inbox_ruleset(Ctx, InboxId, CreateInboxRulesetOptions) ->
    create_inbox_ruleset(Ctx, InboxId, CreateInboxRulesetOptions, #{}).

-spec create_inbox_ruleset(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_create_inbox_ruleset_options:maislurp-client-erlang_create_inbox_ruleset_options(), maps:map()) -> {ok, maislurp-client-erlang_inbox_ruleset_dto:maislurp-client-erlang_inbox_ruleset_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_inbox_ruleset(Ctx, InboxId, CreateInboxRulesetOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/inboxes/", InboxId, "/rulesets"],
    QS = [],
    Headers = [],
    Body1 = CreateInboxRulesetOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create an inbox with default options. Uses MailSlurp domain pool address and is private.
%% 
-spec create_inbox_with_defaults(ctx:ctx()) -> {ok, maislurp-client-erlang_inbox:maislurp-client-erlang_inbox(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_inbox_with_defaults(Ctx) ->
    create_inbox_with_defaults(Ctx, #{}).

-spec create_inbox_with_defaults(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_inbox:maislurp-client-erlang_inbox(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_inbox_with_defaults(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/inboxes/withDefaults"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create an inbox with options. Extended options for inbox creation.
%% Additional endpoint that allows inbox creation with request body options. Can be more flexible that other methods for some clients.
-spec create_inbox_with_options(ctx:ctx(), maislurp-client-erlang_create_inbox_dto:maislurp-client-erlang_create_inbox_dto()) -> {ok, maislurp-client-erlang_inbox:maislurp-client-erlang_inbox(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_inbox_with_options(Ctx, CreateInboxDto) ->
    create_inbox_with_options(Ctx, CreateInboxDto, #{}).

-spec create_inbox_with_options(ctx:ctx(), maislurp-client-erlang_create_inbox_dto:maislurp-client-erlang_create_inbox_dto(), maps:map()) -> {ok, maislurp-client-erlang_inbox:maislurp-client-erlang_inbox(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_inbox_with_options(Ctx, CreateInboxDto, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/inboxes/withOptions"],
    QS = [],
    Headers = [],
    Body1 = CreateInboxDto,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete all inboxes
%% Permanently delete all inboxes and associated email addresses. This will also delete all emails within the inboxes. Be careful as inboxes cannot be recovered once deleted. Note: deleting inboxes will not impact your usage limits. Monthly inbox creation limits are based on how many inboxes were created in the last 30 days, not how many inboxes you currently have.
-spec delete_all_inboxes(ctx:ctx()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_all_inboxes(Ctx) ->
    delete_all_inboxes(Ctx, #{}).

-spec delete_all_inboxes(ctx:ctx(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_all_inboxes(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/inboxes"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete inbox
%% Permanently delete an inbox and associated email address as well as all emails within the given inbox. This action cannot be undone. Note: deleting an inbox will not affect your account usage. Monthly inbox usage is based on how many inboxes you create within 30 days, not how many exist at time of request.
-spec delete_inbox(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_inbox(Ctx, InboxId) ->
    delete_inbox(Ctx, InboxId, #{}).

-spec delete_inbox(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_inbox(Ctx, InboxId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/inboxes/", InboxId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Does inbox exist
%% Check if inboxes exist by email address. Useful if you are sending emails to mailslurp addresses
-spec does_inbox_exist(ctx:ctx(), binary()) -> {ok, maislurp-client-erlang_inbox_exists_dto:maislurp-client-erlang_inbox_exists_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
does_inbox_exist(Ctx, EmailAddress) ->
    does_inbox_exist(Ctx, EmailAddress, #{}).

-spec does_inbox_exist(ctx:ctx(), binary(), maps:map()) -> {ok, maislurp-client-erlang_inbox_exists_dto:maislurp-client-erlang_inbox_exists_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
does_inbox_exist(Ctx, EmailAddress, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inboxes/exists"],
    QS = lists:flatten([{<<"emailAddress">>, EmailAddress}])++maislurp-client-erlang_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Remove expired inboxes
%% Remove any expired inboxes for your account (instead of waiting for scheduled removal on server)
-spec flush_expired(ctx:ctx()) -> {ok, maislurp-client-erlang_flush_expired_inboxes_result:maislurp-client-erlang_flush_expired_inboxes_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
flush_expired(Ctx) ->
    flush_expired(Ctx, #{}).

-spec flush_expired(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_flush_expired_inboxes_result:maislurp-client-erlang_flush_expired_inboxes_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
flush_expired(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/inboxes/expired"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['before'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List All Inboxes Paginated
%% List inboxes in paginated form. The results are available on the `content` property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). You Can also filter by whether an inbox is favorited or use email address pattern. This method is the recommended way to query inboxes. The alternative `getInboxes` method returns a full list of inboxes but is limited to 100 results.
-spec get_all_inboxes(ctx:ctx()) -> {ok, maislurp-client-erlang_page_inbox_projection:maislurp-client-erlang_page_inbox_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_all_inboxes(Ctx) ->
    get_all_inboxes(Ctx, #{}).

-spec get_all_inboxes(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_inbox_projection:maislurp-client-erlang_page_inbox_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_all_inboxes(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inboxes/paginated"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['before', 'favourite', 'page', 'search', 'since', 'size', 'sort', 'tag', 'teamAccess'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get emails in an Inbox. This method is not idempotent as it allows retries and waits if you want certain conditions to be met before returning. For simple listing and sorting of known emails use the email controller instead.
%% List emails that an inbox has received. Only emails that are sent to the inbox's email address will appear in the inbox. It may take several seconds for any email you send to an inbox's email address to appear in the inbox. To make this endpoint wait for a minimum number of emails use the `minCount` parameter. The server will retry the inbox database until the `minCount` is satisfied or the `retryTimeout` is reached
-spec get_emails(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [maislurp-client-erlang_email_preview:maislurp-client-erlang_email_preview()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_emails(Ctx, InboxId) ->
    get_emails(Ctx, InboxId, #{}).

-spec get_emails(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [maislurp-client-erlang_email_preview:maislurp-client-erlang_email_preview()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_emails(Ctx, InboxId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inboxes/", InboxId, "/emails"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['before', 'delayTimeout', 'limit', 'minCount', 'retryTimeout', 'since', 'size', 'sort', 'unreadOnly'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Inbox. Returns properties of an inbox.
%% Returns an inbox's properties, including its email address and ID.
-spec get_inbox(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_inbox:maislurp-client-erlang_inbox(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox(Ctx, InboxId) ->
    get_inbox(Ctx, InboxId, #{}).

-spec get_inbox(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_inbox:maislurp-client-erlang_inbox(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox(Ctx, InboxId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inboxes/", InboxId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get inbox emails paginated
%% Get a paginated list of emails in an inbox. Does not hold connections open.
-spec get_inbox_emails_paginated(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_page_email_preview:maislurp-client-erlang_page_email_preview(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_emails_paginated(Ctx, InboxId) ->
    get_inbox_emails_paginated(Ctx, InboxId, #{}).

-spec get_inbox_emails_paginated(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_page_email_preview:maislurp-client-erlang_page_email_preview(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_emails_paginated(Ctx, InboxId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inboxes/", InboxId, "/emails/paginated"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['before', 'page', 'since', 'size', 'sort'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Inbox Sent Emails
%% Returns an inbox's sent email receipts. Call individual sent email endpoints for more details. Note for privacy reasons the full body of sent emails is never stored. An MD5 hash hex is available for comparison instead.
-spec get_inbox_sent_emails(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_page_sent_email_projection:maislurp-client-erlang_page_sent_email_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_sent_emails(Ctx, InboxId) ->
    get_inbox_sent_emails(Ctx, InboxId, #{}).

-spec get_inbox_sent_emails(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_page_sent_email_projection:maislurp-client-erlang_page_sent_email_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_sent_emails(Ctx, InboxId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inboxes/", InboxId, "/sent"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['before', 'page', 'searchFilter', 'since', 'size', 'sort'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get inbox tags
%% Get all inbox tags
-spec get_inbox_tags(ctx:ctx()) -> {ok, [binary()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_tags(Ctx) ->
    get_inbox_tags(Ctx, #{}).

-spec get_inbox_tags(ctx:ctx(), maps:map()) -> {ok, [binary()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_tags(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inboxes/tags"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List Inboxes and email addresses
%% List the inboxes you have created. Note use of the more advanced `getAllEmails` is recommended and allows paginated access using a limit and sort parameter.
-spec get_inboxes(ctx:ctx()) -> {ok, [maislurp-client-erlang_inbox:maislurp-client-erlang_inbox()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inboxes(Ctx) ->
    get_inboxes(Ctx, #{}).

-spec get_inboxes(ctx:ctx(), maps:map()) -> {ok, [maislurp-client-erlang_inbox:maislurp-client-erlang_inbox()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inboxes(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inboxes"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['before', 'since', 'size', 'sort'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List Organization Inboxes Paginated
%% List organization inboxes in paginated form. These are inboxes created with `allowTeamAccess` flag enabled. Organization inboxes are `readOnly` for non-admin users. The results are available on the `content` property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). 
-spec get_organization_inboxes(ctx:ctx()) -> {ok, maislurp-client-erlang_page_organization_inbox_projection:maislurp-client-erlang_page_organization_inbox_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_organization_inboxes(Ctx) ->
    get_organization_inboxes(Ctx, #{}).

-spec get_organization_inboxes(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_organization_inbox_projection:maislurp-client-erlang_page_organization_inbox_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_organization_inboxes(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inboxes/organization"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['before', 'page', 'searchFilter', 'since', 'size', 'sort'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List inbox rulesets
%% List all rulesets attached to an inbox
-spec list_inbox_rulesets(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_page_inbox_ruleset_dto:maislurp-client-erlang_page_inbox_ruleset_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
list_inbox_rulesets(Ctx, InboxId) ->
    list_inbox_rulesets(Ctx, InboxId, #{}).

-spec list_inbox_rulesets(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_page_inbox_ruleset_dto:maislurp-client-erlang_page_inbox_ruleset_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
list_inbox_rulesets(Ctx, InboxId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inboxes/", InboxId, "/rulesets"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['before', 'page', 'searchFilter', 'since', 'size', 'sort'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List inbox tracking pixels
%% List all tracking pixels sent from an inbox
-spec list_inbox_tracking_pixels(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_page_tracking_pixel_projection:maislurp-client-erlang_page_tracking_pixel_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
list_inbox_tracking_pixels(Ctx, InboxId) ->
    list_inbox_tracking_pixels(Ctx, InboxId, #{}).

-spec list_inbox_tracking_pixels(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_page_tracking_pixel_projection:maislurp-client-erlang_page_tracking_pixel_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
list_inbox_tracking_pixels(Ctx, InboxId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inboxes/", InboxId, "/tracking-pixels"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['before', 'page', 'searchFilter', 'since', 'size', 'sort'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Send Email
%% Send an email from an inbox's email address.  The request body should contain the `SendEmailOptions` that include recipients, attachments, body etc. See `SendEmailOptions` for all available properties. Note the `inboxId` refers to the inbox's id not the inbox's email address. See https://www.mailslurp.com/guides/ for more information on how to send emails. This method does not return a sent email entity due to legacy reasons. To send and get a sent email as returned response use the sister method `sendEmailAndConfirm`.
-spec send_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
send_email(Ctx, InboxId) ->
    send_email(Ctx, InboxId, #{}).

-spec send_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
send_email(Ctx, InboxId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/inboxes/", InboxId, ""],
    QS = [],
    Headers = [],
    Body1 = SendEmailOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Send email and return sent confirmation
%% Sister method for standard `sendEmail` method with the benefit of returning a `SentEmail` entity confirming the successful sending of the email with a link to the sent object created for it.
-spec send_email_and_confirm(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_sent_email_dto:maislurp-client-erlang_sent_email_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
send_email_and_confirm(Ctx, InboxId) ->
    send_email_and_confirm(Ctx, InboxId, #{}).

-spec send_email_and_confirm(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_sent_email_dto:maislurp-client-erlang_sent_email_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
send_email_and_confirm(Ctx, InboxId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/inboxes/", InboxId, "/confirm"],
    QS = [],
    Headers = [],
    Body1 = SendEmailOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Send a test email to inbox
%% Send an inbox a test email to test email receiving is working
-spec send_test_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
send_test_email(Ctx, InboxId) ->
    send_test_email(Ctx, InboxId, #{}).

-spec send_test_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
send_test_email(Ctx, InboxId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/inboxes/", InboxId, "/send-test-email"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Set inbox favourited state
%% Set and return new favourite state for an inbox
-spec set_inbox_favourited(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_set_inbox_favourited_options:maislurp-client-erlang_set_inbox_favourited_options()) -> {ok, maislurp-client-erlang_inbox:maislurp-client-erlang_inbox(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
set_inbox_favourited(Ctx, InboxId, SetInboxFavouritedOptions) ->
    set_inbox_favourited(Ctx, InboxId, SetInboxFavouritedOptions, #{}).

-spec set_inbox_favourited(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_set_inbox_favourited_options:maislurp-client-erlang_set_inbox_favourited_options(), maps:map()) -> {ok, maislurp-client-erlang_inbox:maislurp-client-erlang_inbox(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
set_inbox_favourited(Ctx, InboxId, SetInboxFavouritedOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/inboxes/", InboxId, "/favourite"],
    QS = [],
    Headers = [],
    Body1 = SetInboxFavouritedOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update Inbox. Change name and description. Email address is not editable.
%% Update editable fields on an inbox
-spec update_inbox(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_update_inbox_options:maislurp-client-erlang_update_inbox_options()) -> {ok, maislurp-client-erlang_inbox:maislurp-client-erlang_inbox(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_inbox(Ctx, InboxId, UpdateInboxOptions) ->
    update_inbox(Ctx, InboxId, UpdateInboxOptions, #{}).

-spec update_inbox(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_update_inbox_options:maislurp-client-erlang_update_inbox_options(), maps:map()) -> {ok, maislurp-client-erlang_inbox:maislurp-client-erlang_inbox(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_inbox(Ctx, InboxId, UpdateInboxOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = patch,
    Path = ["/inboxes/", InboxId, ""],
    QS = [],
    Headers = [],
    Body1 = UpdateInboxOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


