# typed: strong

module Straddle
  module Models
    class PaykeyReviewParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Straddle::PaykeyReviewParams, Straddle::Internal::AnyHash)
        end

      sig { returns(Straddle::PaykeyReviewParams::Status::OrSymbol) }
      attr_accessor :status

      sig { returns(T.nilable(String)) }
      attr_reader :correlation_id

      sig { params(correlation_id: String).void }
      attr_writer :correlation_id

      sig { returns(T.nilable(String)) }
      attr_reader :request_id

      sig { params(request_id: String).void }
      attr_writer :request_id

      sig { returns(T.nilable(String)) }
      attr_reader :straddle_account_id

      sig { params(straddle_account_id: String).void }
      attr_writer :straddle_account_id

      sig do
        params(
          status: Straddle::PaykeyReviewParams::Status::OrSymbol,
          correlation_id: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        status:,
        correlation_id: nil,
        request_id: nil,
        straddle_account_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            status: Straddle::PaykeyReviewParams::Status::OrSymbol,
            correlation_id: String,
            request_id: String,
            straddle_account_id: String,
            request_options: Straddle::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Status
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Straddle::PaykeyReviewParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(:active, Straddle::PaykeyReviewParams::Status::TaggedSymbol)
        REJECTED =
          T.let(:rejected, Straddle::PaykeyReviewParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Straddle::PaykeyReviewParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
