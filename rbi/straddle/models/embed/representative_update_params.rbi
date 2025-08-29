# typed: strong

module Straddle
  module Models
    module Embed
      class RepresentativeUpdateParams < Straddle::Internal::Type::BaseModel
        extend Straddle::Internal::Type::RequestParameters::Converter
        include Straddle::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Straddle::Embed::RepresentativeUpdateParams,
              Straddle::Internal::AnyHash
            )
          end

        # The date of birth of the representative, in ISO 8601 format (YYYY-MM-DD).
        sig { returns(Date) }
        attr_accessor :dob

        # The email address of the representative.
        sig { returns(String) }
        attr_accessor :email

        # The first name of the representative.
        sig { returns(String) }
        attr_accessor :first_name

        # The last name of the representative.
        sig { returns(String) }
        attr_accessor :last_name

        # The mobile phone number of the representative.
        sig { returns(String) }
        attr_accessor :mobile_number

        sig do
          returns(Straddle::Embed::RepresentativeUpdateParams::Relationship)
        end
        attr_reader :relationship

        sig do
          params(
            relationship:
              Straddle::Embed::RepresentativeUpdateParams::Relationship::OrHash
          ).void
        end
        attr_writer :relationship

        # The last 4 digits of the representative's Social Security Number.
        sig { returns(String) }
        attr_accessor :ssn_last4

        # Unique identifier for the representative in your database, used for
        # cross-referencing between Straddle and your systems.
        sig { returns(T.nilable(String)) }
        attr_accessor :external_id

        # Up to 20 additional user-defined key-value pairs. Useful for storing additional
        # information about the represetative in a structured format.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_accessor :metadata

        sig { returns(T.nilable(String)) }
        attr_reader :correlation_id

        sig { params(correlation_id: String).void }
        attr_writer :correlation_id

        sig { returns(T.nilable(String)) }
        attr_reader :idempotency_key

        sig { params(idempotency_key: String).void }
        attr_writer :idempotency_key

        sig { returns(T.nilable(String)) }
        attr_reader :request_id

        sig { params(request_id: String).void }
        attr_writer :request_id

        sig do
          params(
            dob: Date,
            email: String,
            first_name: String,
            last_name: String,
            mobile_number: String,
            relationship:
              Straddle::Embed::RepresentativeUpdateParams::Relationship::OrHash,
            ssn_last4: String,
            external_id: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, String]),
            correlation_id: String,
            idempotency_key: String,
            request_id: String,
            request_options: Straddle::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The date of birth of the representative, in ISO 8601 format (YYYY-MM-DD).
          dob:,
          # The email address of the representative.
          email:,
          # The first name of the representative.
          first_name:,
          # The last name of the representative.
          last_name:,
          # The mobile phone number of the representative.
          mobile_number:,
          relationship:,
          # The last 4 digits of the representative's Social Security Number.
          ssn_last4:,
          # Unique identifier for the representative in your database, used for
          # cross-referencing between Straddle and your systems.
          external_id: nil,
          # Up to 20 additional user-defined key-value pairs. Useful for storing additional
          # information about the represetative in a structured format.
          metadata: nil,
          correlation_id: nil,
          idempotency_key: nil,
          request_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              dob: Date,
              email: String,
              first_name: String,
              last_name: String,
              mobile_number: String,
              relationship:
                Straddle::Embed::RepresentativeUpdateParams::Relationship,
              ssn_last4: String,
              external_id: T.nilable(String),
              metadata: T.nilable(T::Hash[Symbol, String]),
              correlation_id: String,
              idempotency_key: String,
              request_id: String,
              request_options: Straddle::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Relationship < Straddle::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Straddle::Embed::RepresentativeUpdateParams::Relationship,
                Straddle::Internal::AnyHash
              )
            end

          # Whether the representative has significant responsibility to control, manage, or
          # direct the organization. One representative must be identified under the control
          # prong for each legal entity.
          sig { returns(T::Boolean) }
          attr_accessor :control

          # Whether the representative owns any percentage of of the equity interests of the
          # legal entity.
          sig { returns(T::Boolean) }
          attr_accessor :owner

          # Whether the person is authorized as the primary representative of the account.
          # This is the person chosen by the business to provide information about
          # themselves, general information about the account, and who consented to the
          # services agreement.
          #
          # There can be only one primary representative for an account at a time.
          sig { returns(T::Boolean) }
          attr_accessor :primary

          # The percentage of ownership the representative has. Required if 'Owner' is true.
          sig { returns(T.nilable(Float)) }
          attr_accessor :percent_ownership

          # The job title of the representative.
          sig { returns(T.nilable(String)) }
          attr_accessor :title

          sig do
            params(
              control: T::Boolean,
              owner: T::Boolean,
              primary: T::Boolean,
              percent_ownership: T.nilable(Float),
              title: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Whether the representative has significant responsibility to control, manage, or
            # direct the organization. One representative must be identified under the control
            # prong for each legal entity.
            control:,
            # Whether the representative owns any percentage of of the equity interests of the
            # legal entity.
            owner:,
            # Whether the person is authorized as the primary representative of the account.
            # This is the person chosen by the business to provide information about
            # themselves, general information about the account, and who consented to the
            # services agreement.
            #
            # There can be only one primary representative for an account at a time.
            primary:,
            # The percentage of ownership the representative has. Required if 'Owner' is true.
            percent_ownership: nil,
            # The job title of the representative.
            title: nil
          )
          end

          sig do
            override.returns(
              {
                control: T::Boolean,
                owner: T::Boolean,
                primary: T::Boolean,
                percent_ownership: T.nilable(Float),
                title: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
