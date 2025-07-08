# typed: strong

module Straddle
  module Models
    class ReportCreateTotalCustomersByStatusResponse < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Straddle::Models::ReportCreateTotalCustomersByStatusResponse,
            Straddle::Internal::AnyHash
          )
        end

      sig do
        returns(
          Straddle::Models::ReportCreateTotalCustomersByStatusResponse::Data
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            Straddle::Models::ReportCreateTotalCustomersByStatusResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      # Metadata about the API request, including an identifier and timestamp.
      sig { returns(Straddle::ResponseMetadata) }
      attr_reader :meta

      sig { params(meta: Straddle::ResponseMetadata::OrHash).void }
      attr_writer :meta

      # Indicates the structure of the returned content.
      #
      # - "object" means the `data` field contains a single JSON object.
      # - "array" means the `data` field contains an array of objects.
      # - "error" means the `data` field contains an error object with details of the
      #   issue.
      # - "none" means no data is returned.
      sig do
        returns(
          Straddle::Models::ReportCreateTotalCustomersByStatusResponse::ResponseType::TaggedSymbol
        )
      end
      attr_accessor :response_type

      sig do
        params(
          data:
            Straddle::Models::ReportCreateTotalCustomersByStatusResponse::Data::OrHash,
          meta: Straddle::ResponseMetadata::OrHash,
          response_type:
            Straddle::Models::ReportCreateTotalCustomersByStatusResponse::ResponseType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        data:,
        # Metadata about the API request, including an identifier and timestamp.
        meta:,
        # Indicates the structure of the returned content.
        #
        # - "object" means the `data` field contains a single JSON object.
        # - "array" means the `data` field contains an array of objects.
        # - "error" means the `data` field contains an error object with details of the
        #   issue.
        # - "none" means no data is returned.
        response_type:
      )
      end

      sig do
        override.returns(
          {
            data:
              Straddle::Models::ReportCreateTotalCustomersByStatusResponse::Data,
            meta: Straddle::ResponseMetadata,
            response_type:
              Straddle::Models::ReportCreateTotalCustomersByStatusResponse::ResponseType::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Data < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Straddle::Models::ReportCreateTotalCustomersByStatusResponse::Data,
              Straddle::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :inactive

        sig { returns(Integer) }
        attr_accessor :pending

        sig { returns(Integer) }
        attr_accessor :rejected

        sig { returns(Integer) }
        attr_accessor :review

        sig { returns(Integer) }
        attr_accessor :verified

        sig do
          params(
            inactive: Integer,
            pending: Integer,
            rejected: Integer,
            review: Integer,
            verified: Integer
          ).returns(T.attached_class)
        end
        def self.new(inactive:, pending:, rejected:, review:, verified:)
        end

        sig do
          override.returns(
            {
              inactive: Integer,
              pending: Integer,
              rejected: Integer,
              review: Integer,
              verified: Integer
            }
          )
        end
        def to_hash
        end
      end

      # Indicates the structure of the returned content.
      #
      # - "object" means the `data` field contains a single JSON object.
      # - "array" means the `data` field contains an array of objects.
      # - "error" means the `data` field contains an error object with details of the
      #   issue.
      # - "none" means no data is returned.
      module ResponseType
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Straddle::Models::ReportCreateTotalCustomersByStatusResponse::ResponseType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OBJECT =
          T.let(
            :object,
            Straddle::Models::ReportCreateTotalCustomersByStatusResponse::ResponseType::TaggedSymbol
          )
        ARRAY =
          T.let(
            :array,
            Straddle::Models::ReportCreateTotalCustomersByStatusResponse::ResponseType::TaggedSymbol
          )
        ERROR =
          T.let(
            :error,
            Straddle::Models::ReportCreateTotalCustomersByStatusResponse::ResponseType::TaggedSymbol
          )
        NONE =
          T.let(
            :none,
            Straddle::Models::ReportCreateTotalCustomersByStatusResponse::ResponseType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Straddle::Models::ReportCreateTotalCustomersByStatusResponse::ResponseType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
