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
         get_inbox_count/1, get_inbox_count/2,
         get_inbox_email_count/2, get_inbox_email_count/3,
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
-spec create_inbox(ctx:ctx()) -> {ok, maislurp-client-erlang_inbox_dto:maislurp-client-erlang_inbox_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_inbox(Ctx) ->
    create_inbox(Ctx, #{}).

-spec create_inbox(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_inbox_dto:maislurp-client-erlang_inbox_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_inbox(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/inboxes"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['A custom email address to use with the inbox. Defaults to null. When null MailSlurp will assign a random email address to the inbox such as &#x60;123@mailslurp.com&#x60;. If you use the &#x60;useDomainPool&#x60; option when the email address is null it will generate an email address with a more varied domain ending such as &#x60;123@mailslurp.info&#x60; or &#x60;123@mailslurp.biz&#x60;. When a custom email address is provided the address is split into a domain and the domain is queried against your user. If you have created the domain in the MailSlurp dashboard and verified it you can use any email address that ends with the domain. Note domain types must match the inbox type - so &#x60;SMTP&#x60; inboxes will only work with &#x60;SMTP&#x60; type domains. Avoid &#x60;SMTP&#x60; inboxes if you need to send emails as they can only receive. Send an email to this address and the inbox will receive and store it for you. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID.', 'Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI.', 'Optional name of the inbox. Displayed in the dashboard for easier search and used as the sender name when sending emails.', 'Optional description of the inbox for labelling purposes. Is shown in the dashboard and can be used with', 'Use the MailSlurp domain name pool with this inbox when creating the email address. Defaults to null. If enabled the inbox will be an email address with a domain randomly chosen from a list of the MailSlurp domains. This is useful when the default &#x60;@mailslurp.com&#x60; email addresses used with inboxes are blocked or considered spam by a provider or receiving service. When domain pool is enabled an email address will be generated ending in &#x60;@mailslurp.{world,info,xyz,...}&#x60; . This means a TLD is randomly selecting from a list of &#x60;.biz&#x60;, &#x60;.info&#x60;, &#x60;.xyz&#x60; etc to add variance to the generated email addresses. When null or false MailSlurp uses the default behavior of &#x60;@mailslurp.com&#x60; or custom email address provided by the emailAddress field. Note this feature is only available for &#x60;HTTP&#x60; inbox types.', 'Is the inbox a favorite. Marking an inbox as a favorite is typically done in the dashboard for quick access or filtering', 'Optional inbox expiration date. If null then this inbox is permanent and the emails in it won&#39;t be deleted. If an expiration date is provided or is required by your plan the inbox will be closed when the expiration time is reached. Expired inboxes still contain their emails but can no longer send or receive emails. An ExpiredInboxRecord is created when an inbox and the email address and inbox ID are recorded. The expiresAt property is a timestamp string in ISO DateTime Format yyyy-MM-dd&#39;T&#39;HH:mm:ss.SSSXXX.', 'Number of milliseconds that inbox should exist for', 'DEPRECATED (team access is always true). Grant team access to this inbox and the emails that belong to it for team members of your organization.', 'HTTP (default) or SMTP inbox type. HTTP inboxes are default and best solution for most cases. SMTP inboxes are more reliable for public inbound email consumption (but do not support sending emails). When using custom domains the domain type must match the inbox type. HTTP inboxes are processed by AWS SES while SMTP inboxes use a custom mail server running at &#x60;mx.mailslurp.com&#x60;.'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create an inbox ruleset
%% Create a new inbox rule for forwarding, blocking, and allowing emails when sending and receiving
-spec create_inbox_ruleset(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_create_inbox_ruleset_options:maislurp-client-erlang_create_inbox_ruleset_options()) -> {ok, maislurp-client-erlang_inbox_ruleset_dto:maislurp-client-erlang_inbox_ruleset_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_inbox_ruleset(Ctx, InboxId, MaislurpClientErlangCreateInboxRulesetOptions) ->
    create_inbox_ruleset(Ctx, InboxId, MaislurpClientErlangCreateInboxRulesetOptions, #{}).

-spec create_inbox_ruleset(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_create_inbox_ruleset_options:maislurp-client-erlang_create_inbox_ruleset_options(), maps:map()) -> {ok, maislurp-client-erlang_inbox_ruleset_dto:maislurp-client-erlang_inbox_ruleset_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_inbox_ruleset(Ctx, InboxId, MaislurpClientErlangCreateInboxRulesetOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/inboxes/", InboxId, "/rulesets"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateInboxRulesetOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create an inbox with default options. Uses MailSlurp domain pool address and is private.
%% 
-spec create_inbox_with_defaults(ctx:ctx()) -> {ok, maislurp-client-erlang_inbox_dto:maislurp-client-erlang_inbox_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_inbox_with_defaults(Ctx) ->
    create_inbox_with_defaults(Ctx, #{}).

-spec create_inbox_with_defaults(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_inbox_dto:maislurp-client-erlang_inbox_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
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
-spec create_inbox_with_options(ctx:ctx(), maislurp-client-erlang_create_inbox_dto:maislurp-client-erlang_create_inbox_dto()) -> {ok, maislurp-client-erlang_inbox_dto:maislurp-client-erlang_inbox_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_inbox_with_options(Ctx, MaislurpClientErlangCreateInboxDto) ->
    create_inbox_with_options(Ctx, MaislurpClientErlangCreateInboxDto, #{}).

-spec create_inbox_with_options(ctx:ctx(), maislurp-client-erlang_create_inbox_dto:maislurp-client-erlang_create_inbox_dto(), maps:map()) -> {ok, maislurp-client-erlang_inbox_dto:maislurp-client-erlang_inbox_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_inbox_with_options(Ctx, MaislurpClientErlangCreateInboxDto, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/inboxes/withOptions"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateInboxDto,
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
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'favourite', 'search', 'tag', 'DEPRECATED. Optionally filter by team access.', 'since', 'before'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get emails in an Inbox. This method is not idempotent as it allows retries and waits if you want certain conditions to be met before returning. For simple listing and sorting of known emails use the email controller instead.
%% List emails that an inbox has received. Only emails that are sent to the inbox's email address will appear in the inbox. It may take several seconds for any email you send to an inbox's email address to appear in the inbox. To make this endpoint wait for a minimum number of emails use the `minCount` parameter. The server will retry the inbox database until the `minCount` is satisfied or the `retryTimeout` is reached
-spec get_emails(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [maislurp-client-erlang_email_preview:maislurp-client-erlang_email_preview()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_emails(Ctx, IdOfInboxThatEmailsBelongsTo) ->
    get_emails(Ctx, IdOfInboxThatEmailsBelongsTo, #{}).

-spec get_emails(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [maislurp-client-erlang_email_preview:maislurp-client-erlang_email_preview()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_emails(Ctx, IdOfInboxThatEmailsBelongsTo, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inboxes/", InboxId, "/emails"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['Alias for limit. Assessed first before assessing any passed limit.', 'limit', 'Sort the results by received date and direction ASC or DESC', 'retryTimeout', 'delayTimeout', 'minCount', 'unreadOnly', 'Exclude emails received after this ISO 8601 date time', 'Exclude emails received before this ISO 8601 date time'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Inbox. Returns properties of an inbox.
%% Returns an inbox's properties, including its email address and ID.
-spec get_inbox(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_inbox_dto:maislurp-client-erlang_inbox_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox(Ctx, InboxId) ->
    get_inbox(Ctx, InboxId, #{}).

-spec get_inbox(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_inbox_dto:maislurp-client-erlang_inbox_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
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

%% @doc Get total inbox count
%% 
-spec get_inbox_count(ctx:ctx()) -> {ok, maislurp-client-erlang_count_dto:maislurp-client-erlang_count_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_count(Ctx) ->
    get_inbox_count(Ctx, #{}).

-spec get_inbox_count(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_count_dto:maislurp-client-erlang_count_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_count(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inboxes/count"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get email count in inbox
%% 
-spec get_inbox_email_count(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_count_dto:maislurp-client-erlang_count_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_email_count(Ctx, IdOfInboxThatEmailsBelongsTo) ->
    get_inbox_email_count(Ctx, IdOfInboxThatEmailsBelongsTo, #{}).

-spec get_inbox_email_count(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_count_dto:maislurp-client-erlang_count_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_email_count(Ctx, IdOfInboxThatEmailsBelongsTo, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inboxes/", InboxId, "/emails/count"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get inbox emails paginated
%% Get a paginated list of emails in an inbox. Does not hold connections open.
-spec get_inbox_emails_paginated(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_page_email_preview:maislurp-client-erlang_page_email_preview(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_emails_paginated(Ctx, IdOfInboxThatEmailsBelongsTo) ->
    get_inbox_emails_paginated(Ctx, IdOfInboxThatEmailsBelongsTo, #{}).

-spec get_inbox_emails_paginated(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_page_email_preview:maislurp-client-erlang_page_email_preview(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_emails_paginated(Ctx, IdOfInboxThatEmailsBelongsTo, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inboxes/", InboxId, "/emails/paginated"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'since', 'before'], _OptionalParams),
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
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'Optional page size in inbox sent email list pagination', 'sort', 'searchFilter', 'since', 'before'], _OptionalParams),
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
-spec get_inboxes(ctx:ctx()) -> {ok, [maislurp-client-erlang_inbox_dto:maislurp-client-erlang_inbox_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inboxes(Ctx) ->
    get_inboxes(Ctx, #{}).

-spec get_inboxes(ctx:ctx(), maps:map()) -> {ok, [maislurp-client-erlang_inbox_dto:maislurp-client-erlang_inbox_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inboxes(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inboxes"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['size', 'sort', 'since', 'before'], _OptionalParams),
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
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'searchFilter', 'since', 'before'], _OptionalParams),
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
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'searchFilter', 'since', 'before'], _OptionalParams),
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
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'Optional page size in inbox tracking pixel list pagination', 'sort', 'searchFilter', 'since', 'before'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Send Email
%% Send an email from an inbox's email address.  The request body should contain the `SendEmailOptions` that include recipients, attachments, body etc. See `SendEmailOptions` for all available properties. Note the `inboxId` refers to the inbox's id not the inbox's email address. See https://www.mailslurp.com/guides/ for more information on how to send emails. This method does not return a sent email entity due to legacy reasons. To send and get a sent email as returned response use the sister method `sendEmailAndConfirm`.
-spec send_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_send_email_options:maislurp-client-erlang_send_email_options()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
send_email(Ctx, IDOfTheInboxYouWantToSendTheEmailFrom, MaislurpClientErlangSendEmailOptions) ->
    send_email(Ctx, IDOfTheInboxYouWantToSendTheEmailFrom, MaislurpClientErlangSendEmailOptions, #{}).

-spec send_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_send_email_options:maislurp-client-erlang_send_email_options(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
send_email(Ctx, IDOfTheInboxYouWantToSendTheEmailFrom, MaislurpClientErlangSendEmailOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/inboxes/", InboxId, ""],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangSendEmailOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Send email and return sent confirmation
%% Sister method for standard `sendEmail` method with the benefit of returning a `SentEmail` entity confirming the successful sending of the email with a link to the sent object created for it.
-spec send_email_and_confirm(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_send_email_options:maislurp-client-erlang_send_email_options()) -> {ok, maislurp-client-erlang_sent_email_dto:maislurp-client-erlang_sent_email_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
send_email_and_confirm(Ctx, IDOfTheInboxYouWantToSendTheEmailFrom, MaislurpClientErlangSendEmailOptions) ->
    send_email_and_confirm(Ctx, IDOfTheInboxYouWantToSendTheEmailFrom, MaislurpClientErlangSendEmailOptions, #{}).

-spec send_email_and_confirm(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_send_email_options:maislurp-client-erlang_send_email_options(), maps:map()) -> {ok, maislurp-client-erlang_sent_email_dto:maislurp-client-erlang_sent_email_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
send_email_and_confirm(Ctx, IDOfTheInboxYouWantToSendTheEmailFrom, MaislurpClientErlangSendEmailOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/inboxes/", InboxId, "/confirm"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangSendEmailOptions,
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
-spec set_inbox_favourited(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_set_inbox_favourited_options:maislurp-client-erlang_set_inbox_favourited_options()) -> {ok, maislurp-client-erlang_inbox_dto:maislurp-client-erlang_inbox_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
set_inbox_favourited(Ctx, InboxId, MaislurpClientErlangSetInboxFavouritedOptions) ->
    set_inbox_favourited(Ctx, InboxId, MaislurpClientErlangSetInboxFavouritedOptions, #{}).

-spec set_inbox_favourited(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_set_inbox_favourited_options:maislurp-client-erlang_set_inbox_favourited_options(), maps:map()) -> {ok, maislurp-client-erlang_inbox_dto:maislurp-client-erlang_inbox_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
set_inbox_favourited(Ctx, InboxId, MaislurpClientErlangSetInboxFavouritedOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/inboxes/", InboxId, "/favourite"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangSetInboxFavouritedOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update Inbox. Change name and description. Email address is not editable.
%% Update editable fields on an inbox
-spec update_inbox(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_update_inbox_options:maislurp-client-erlang_update_inbox_options()) -> {ok, maislurp-client-erlang_inbox_dto:maislurp-client-erlang_inbox_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_inbox(Ctx, InboxId, MaislurpClientErlangUpdateInboxOptions) ->
    update_inbox(Ctx, InboxId, MaislurpClientErlangUpdateInboxOptions, #{}).

-spec update_inbox(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_update_inbox_options:maislurp-client-erlang_update_inbox_options(), maps:map()) -> {ok, maislurp-client-erlang_inbox_dto:maislurp-client-erlang_inbox_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_inbox(Ctx, InboxId, MaislurpClientErlangUpdateInboxOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = patch,
    Path = ["/inboxes/", InboxId, ""],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangUpdateInboxOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


