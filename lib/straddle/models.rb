# frozen_string_literal: true

module Straddle
  [Straddle::Internal::Type::BaseModel, *Straddle::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, Straddle::Internal::AnyHash) } }
  end

  Straddle::Internal::Util.walk_namespaces(Straddle::Models).each do |mod|
    case mod
    in Straddle::Internal::Type::Enum | Straddle::Internal::Type::Union
      mod.constants.each do |name|
        case mod.const_get(name)
        in true | false
          mod.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T::Boolean } }
          mod.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
        in Integer
          mod.define_sorbet_constant!(:TaggedInteger) { T.type_alias { Integer } }
          mod.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
        in Float
          mod.define_sorbet_constant!(:TaggedFloat) { T.type_alias { Float } }
          mod.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
        in Symbol
          mod.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { Symbol } }
          mod.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
        else
        end
      end
    else
    end
  end

  Straddle::Internal::Util.walk_namespaces(Straddle::Models)
                          .lazy
                          .grep(Straddle::Internal::Type::Union)
                          .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  Bridge = Straddle::Models::Bridge

  BridgeInitializeParams = Straddle::Models::BridgeInitializeParams

  BridgeTokenV1 = Straddle::Models::BridgeTokenV1

  ChargeCancelParams = Straddle::Models::ChargeCancelParams

  ChargeCreateParams = Straddle::Models::ChargeCreateParams

  ChargeGetParams = Straddle::Models::ChargeGetParams

  ChargeHoldParams = Straddle::Models::ChargeHoldParams

  ChargeReleaseParams = Straddle::Models::ChargeReleaseParams

  ChargeUnmaskParams = Straddle::Models::ChargeUnmaskParams

  ChargeUpdateParams = Straddle::Models::ChargeUpdateParams

  ChargeV1 = Straddle::Models::ChargeV1

  CustomerAddressV1 = Straddle::Models::CustomerAddressV1

  CustomerCreateParams = Straddle::Models::CustomerCreateParams

  CustomerDeleteParams = Straddle::Models::CustomerDeleteParams

  CustomerDetailsV1 = Straddle::Models::CustomerDetailsV1

  CustomerGetParams = Straddle::Models::CustomerGetParams

  CustomerListParams = Straddle::Models::CustomerListParams

  CustomerRefreshReviewParams = Straddle::Models::CustomerRefreshReviewParams

  Customers = Straddle::Models::Customers

  CustomerSummaryPagedV1 = Straddle::Models::CustomerSummaryPagedV1

  CustomerUnmaskedParams = Straddle::Models::CustomerUnmaskedParams

  CustomerUnmaskedV1 = Straddle::Models::CustomerUnmaskedV1

  CustomerUpdateParams = Straddle::Models::CustomerUpdateParams

  CustomerV1 = Straddle::Models::CustomerV1

  DeviceInfoV1 = Straddle::Models::DeviceInfoV1

  DeviceUnmaskedV1 = Straddle::Models::DeviceUnmaskedV1

  Embed = Straddle::Models::Embed

  FundingEventGetParams = Straddle::Models::FundingEventGetParams

  FundingEventListParams = Straddle::Models::FundingEventListParams

  FundingEventSummaryItemV1 = Straddle::Models::FundingEventSummaryItemV1

  FundingEventSummaryPagedV1 = Straddle::Models::FundingEventSummaryPagedV1

  PagedResponseMetadata = Straddle::Models::PagedResponseMetadata

  PaykeyCancelParams = Straddle::Models::PaykeyCancelParams

  PaykeyDetailsV1 = Straddle::Models::PaykeyDetailsV1

  PaykeyGetParams = Straddle::Models::PaykeyGetParams

  PaykeyListParams = Straddle::Models::PaykeyListParams

  PaykeyRevealParams = Straddle::Models::PaykeyRevealParams

  PaykeyReviewParams = Straddle::Models::PaykeyReviewParams

  PaykeySummaryPagedV1 = Straddle::Models::PaykeySummaryPagedV1

  PaykeyUnmaskedParams = Straddle::Models::PaykeyUnmaskedParams

  PaykeyUnmaskedV1 = Straddle::Models::PaykeyUnmaskedV1

  PaykeyV1 = Straddle::Models::PaykeyV1

  PaymentListParams = Straddle::Models::PaymentListParams

  PaymentSummaryPagedV1 = Straddle::Models::PaymentSummaryPagedV1

  PayoutCancelParams = Straddle::Models::PayoutCancelParams

  PayoutCreateParams = Straddle::Models::PayoutCreateParams

  PayoutGetParams = Straddle::Models::PayoutGetParams

  PayoutHoldParams = Straddle::Models::PayoutHoldParams

  PayoutReleaseParams = Straddle::Models::PayoutReleaseParams

  PayoutUnmaskParams = Straddle::Models::PayoutUnmaskParams

  PayoutUpdateParams = Straddle::Models::PayoutUpdateParams

  PayoutV1 = Straddle::Models::PayoutV1

  ReportCreateTotalCustomersByStatusParams = Straddle::Models::ReportCreateTotalCustomersByStatusParams

  ResponseMetadata = Straddle::Models::ResponseMetadata

  StatusDetailsV1 = Straddle::Models::StatusDetailsV1
end
