-module(maislurp-client-erlang_email_warmup_usage_summary_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_warmup_usage_summary_dto/0]).

-type maislurp-client-erlang_email_warmup_usage_summary_dto() ::
    #{ 'billingMonth' := calendar:date(),
       'billingMonthEndExclusive' := calendar:date(),
       'includedSenderSeats' := integer(),
       'purchasedSenderSeats' := integer(),
       'totalSenderCapacity' := integer(),
       'activeSenderAssignments' := integer(),
       'includedCreditsPerSender' := integer(),
       'includedCreditsTotal' := integer(),
       'includedCreditsConsumed' := integer(),
       'includedCreditsRemaining' := integer(),
       'reservedCredits' := integer(),
       'acceptedCredits' := integer(),
       'ambiguousCredits' := integer(),
       'billableAcceptedCredits' := integer(),
       'billablePendingCredits' := integer(),
       'controlledRecipientCreditWeight' := integer(),
       'premiumRecipientCreditWeight' := integer()
     }.

encode(#{ 'billingMonth' := BillingMonth,
          'billingMonthEndExclusive' := BillingMonthEndExclusive,
          'includedSenderSeats' := IncludedSenderSeats,
          'purchasedSenderSeats' := PurchasedSenderSeats,
          'totalSenderCapacity' := TotalSenderCapacity,
          'activeSenderAssignments' := ActiveSenderAssignments,
          'includedCreditsPerSender' := IncludedCreditsPerSender,
          'includedCreditsTotal' := IncludedCreditsTotal,
          'includedCreditsConsumed' := IncludedCreditsConsumed,
          'includedCreditsRemaining' := IncludedCreditsRemaining,
          'reservedCredits' := ReservedCredits,
          'acceptedCredits' := AcceptedCredits,
          'ambiguousCredits' := AmbiguousCredits,
          'billableAcceptedCredits' := BillableAcceptedCredits,
          'billablePendingCredits' := BillablePendingCredits,
          'controlledRecipientCreditWeight' := ControlledRecipientCreditWeight,
          'premiumRecipientCreditWeight' := PremiumRecipientCreditWeight
        }) ->
    #{ 'billingMonth' => BillingMonth,
       'billingMonthEndExclusive' => BillingMonthEndExclusive,
       'includedSenderSeats' => IncludedSenderSeats,
       'purchasedSenderSeats' => PurchasedSenderSeats,
       'totalSenderCapacity' => TotalSenderCapacity,
       'activeSenderAssignments' => ActiveSenderAssignments,
       'includedCreditsPerSender' => IncludedCreditsPerSender,
       'includedCreditsTotal' => IncludedCreditsTotal,
       'includedCreditsConsumed' => IncludedCreditsConsumed,
       'includedCreditsRemaining' => IncludedCreditsRemaining,
       'reservedCredits' => ReservedCredits,
       'acceptedCredits' => AcceptedCredits,
       'ambiguousCredits' => AmbiguousCredits,
       'billableAcceptedCredits' => BillableAcceptedCredits,
       'billablePendingCredits' => BillablePendingCredits,
       'controlledRecipientCreditWeight' => ControlledRecipientCreditWeight,
       'premiumRecipientCreditWeight' => PremiumRecipientCreditWeight
     }.
