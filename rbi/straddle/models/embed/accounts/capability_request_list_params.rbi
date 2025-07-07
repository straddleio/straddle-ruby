# typed: strong

module Straddle
  module Models
    module Embed
      module Accounts
        class CapabilityRequestListParams < Straddle::Internal::Type::BaseModel
          extend Straddle::Internal::Type::RequestParameters::Converter
          include Straddle::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Straddle::Embed::Accounts::CapabilityRequestListParams,
                Straddle::Internal::AnyHash
              )
            end

          # Filter capability requests by category.
          sig do
            returns(
              T.nilable(
                Straddle::Embed::Accounts::CapabilityRequestListParams::Category::OrSymbol
              )
            )
          end
          attr_reader :category

          sig do
            params(
              category:
                Straddle::Embed::Accounts::CapabilityRequestListParams::Category::OrSymbol
            ).void
          end
          attr_writer :category

          # Results page number. Starts at page 1.
          sig { returns(T.nilable(Integer)) }
          attr_reader :page_number

          sig { params(page_number: Integer).void }
          attr_writer :page_number

          # Page size.Max value: 1000
          sig { returns(T.nilable(Integer)) }
          attr_reader :page_size

          sig { params(page_size: Integer).void }
          attr_writer :page_size

          # Sort By.
          sig { returns(T.nilable(String)) }
          attr_reader :sort_by

          sig { params(sort_by: String).void }
          attr_writer :sort_by

          # Sort Order.
          sig do
            returns(
              T.nilable(
                Straddle::Embed::Accounts::CapabilityRequestListParams::SortOrder::OrSymbol
              )
            )
          end
          attr_reader :sort_order

          sig do
            params(
              sort_order:
                Straddle::Embed::Accounts::CapabilityRequestListParams::SortOrder::OrSymbol
            ).void
          end
          attr_writer :sort_order

          # Filter capability requests by their current status.
          sig do
            returns(
              T.nilable(
                Straddle::Embed::Accounts::CapabilityRequestListParams::Status::OrSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                Straddle::Embed::Accounts::CapabilityRequestListParams::Status::OrSymbol
            ).void
          end
          attr_writer :status

          # Filter capability requests by the specific type of capability.
          sig do
            returns(
              T.nilable(
                Straddle::Embed::Accounts::CapabilityRequestListParams::Type::OrSymbol
              )
            )
          end
          attr_reader :type

          sig do
            params(
              type:
                Straddle::Embed::Accounts::CapabilityRequestListParams::Type::OrSymbol
            ).void
          end
          attr_writer :type

          sig { returns(T.nilable(String)) }
          attr_reader :correlation_id

          sig { params(correlation_id: String).void }
          attr_writer :correlation_id

          sig { returns(T.nilable(String)) }
          attr_reader :request_id

          sig { params(request_id: String).void }
          attr_writer :request_id

          sig do
            params(
              category:
                Straddle::Embed::Accounts::CapabilityRequestListParams::Category::OrSymbol,
              page_number: Integer,
              page_size: Integer,
              sort_by: String,
              sort_order:
                Straddle::Embed::Accounts::CapabilityRequestListParams::SortOrder::OrSymbol,
              status:
                Straddle::Embed::Accounts::CapabilityRequestListParams::Status::OrSymbol,
              type:
                Straddle::Embed::Accounts::CapabilityRequestListParams::Type::OrSymbol,
              correlation_id: String,
              request_id: String,
              request_options: Straddle::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Filter capability requests by category.
            category: nil,
            # Results page number. Starts at page 1.
            page_number: nil,
            # Page size.Max value: 1000
            page_size: nil,
            # Sort By.
            sort_by: nil,
            # Sort Order.
            sort_order: nil,
            # Filter capability requests by their current status.
            status: nil,
            # Filter capability requests by the specific type of capability.
            type: nil,
            correlation_id: nil,
            request_id: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                category:
                  Straddle::Embed::Accounts::CapabilityRequestListParams::Category::OrSymbol,
                page_number: Integer,
                page_size: Integer,
                sort_by: String,
                sort_order:
                  Straddle::Embed::Accounts::CapabilityRequestListParams::SortOrder::OrSymbol,
                status:
                  Straddle::Embed::Accounts::CapabilityRequestListParams::Status::OrSymbol,
                type:
                  Straddle::Embed::Accounts::CapabilityRequestListParams::Type::OrSymbol,
                correlation_id: String,
                request_id: String,
                request_options: Straddle::RequestOptions
              }
            )
          end
          def to_hash
          end

          # Filter capability requests by category.
          module Category
            extend Straddle::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Straddle::Embed::Accounts::CapabilityRequestListParams::Category
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PAYMENT_TYPE =
              T.let(
                :payment_type,
                Straddle::Embed::Accounts::CapabilityRequestListParams::Category::TaggedSymbol
              )
            CUSTOMER_TYPE =
              T.let(
                :customer_type,
                Straddle::Embed::Accounts::CapabilityRequestListParams::Category::TaggedSymbol
              )
            CONSENT_TYPE =
              T.let(
                :consent_type,
                Straddle::Embed::Accounts::CapabilityRequestListParams::Category::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::Embed::Accounts::CapabilityRequestListParams::Category::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Sort Order.
          module SortOrder
            extend Straddle::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Straddle::Embed::Accounts::CapabilityRequestListParams::SortOrder
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ASC =
              T.let(
                :asc,
                Straddle::Embed::Accounts::CapabilityRequestListParams::SortOrder::TaggedSymbol
              )
            DESC =
              T.let(
                :desc,
                Straddle::Embed::Accounts::CapabilityRequestListParams::SortOrder::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::Embed::Accounts::CapabilityRequestListParams::SortOrder::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Filter capability requests by their current status.
          module Status
            extend Straddle::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Straddle::Embed::Accounts::CapabilityRequestListParams::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACTIVE =
              T.let(
                :active,
                Straddle::Embed::Accounts::CapabilityRequestListParams::Status::TaggedSymbol
              )
            INACTIVE =
              T.let(
                :inactive,
                Straddle::Embed::Accounts::CapabilityRequestListParams::Status::TaggedSymbol
              )
            IN_REVIEW =
              T.let(
                :in_review,
                Straddle::Embed::Accounts::CapabilityRequestListParams::Status::TaggedSymbol
              )
            REJECTED =
              T.let(
                :rejected,
                Straddle::Embed::Accounts::CapabilityRequestListParams::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::Embed::Accounts::CapabilityRequestListParams::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Filter capability requests by the specific type of capability.
          module Type
            extend Straddle::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Straddle::Embed::Accounts::CapabilityRequestListParams::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CHARGES =
              T.let(
                :charges,
                Straddle::Embed::Accounts::CapabilityRequestListParams::Type::TaggedSymbol
              )
            PAYOUTS =
              T.let(
                :payouts,
                Straddle::Embed::Accounts::CapabilityRequestListParams::Type::TaggedSymbol
              )
            INDIVIDUALS =
              T.let(
                :individuals,
                Straddle::Embed::Accounts::CapabilityRequestListParams::Type::TaggedSymbol
              )
            BUSINESSES =
              T.let(
                :businesses,
                Straddle::Embed::Accounts::CapabilityRequestListParams::Type::TaggedSymbol
              )
            SIGNED_AGREEMENT =
              T.let(
                :signed_agreement,
                Straddle::Embed::Accounts::CapabilityRequestListParams::Type::TaggedSymbol
              )
            INTERNET =
              T.let(
                :internet,
                Straddle::Embed::Accounts::CapabilityRequestListParams::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::Embed::Accounts::CapabilityRequestListParams::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
