-module(maislurp-client-erlang_acquire_phone_pool_lease_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_acquire_phone_pool_lease_options/0]).

-type maislurp-client-erlang_acquire_phone_pool_lease_options() ::
    #{ 'leaseName' => binary(),
       'leaseOwner' => binary(),
       'leaseDurationMillis' => integer(),
       'acquireTimeoutMillis' => integer()
     }.

encode(#{ 'leaseName' := LeaseName,
          'leaseOwner' := LeaseOwner,
          'leaseDurationMillis' := LeaseDurationMillis,
          'acquireTimeoutMillis' := AcquireTimeoutMillis
        }) ->
    #{ 'leaseName' => LeaseName,
       'leaseOwner' => LeaseOwner,
       'leaseDurationMillis' => LeaseDurationMillis,
       'acquireTimeoutMillis' => AcquireTimeoutMillis
     }.
