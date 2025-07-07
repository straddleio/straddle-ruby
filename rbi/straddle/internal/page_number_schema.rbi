# typed: strong

module Straddle
  module Internal
    class PageNumberSchema
      include Straddle::Internal::Type::BasePage

      Elem = type_member

      sig { returns(T.nilable(T::Array[Elem])) }
      attr_accessor :data

      sig { returns(Meta) }
      attr_accessor :meta

      # @api private
      sig { returns(String) }
      def inspect
      end

      class Meta < Straddle::Internal::Type::BaseModel
        OrHash = T.type_alias { T.any(Meta, Straddle::Internal::AnyHash) }

        sig { returns(T.nilable(Integer)) }
        attr_reader :max_page_size

        sig { params(max_page_size: Integer).void }
        attr_writer :max_page_size

        sig { returns(T.nilable(Integer)) }
        attr_reader :page_number

        sig { params(page_number: Integer).void }
        attr_writer :page_number

        sig { returns(T.nilable(Integer)) }
        attr_reader :page_size

        sig { params(page_size: Integer).void }
        attr_writer :page_size

        sig { returns(T.nilable(Integer)) }
        attr_reader :total_items

        sig { params(total_items: Integer).void }
        attr_writer :total_items

        sig do
          params(
            max_page_size: Integer,
            page_number: Integer,
            page_size: Integer,
            total_items: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          max_page_size: nil,
          page_number: nil,
          page_size: nil,
          total_items: nil
        )
        end

        sig do
          override.returns(
            {
              max_page_size: Integer,
              page_number: Integer,
              page_size: Integer,
              total_items: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
