# frozen_string_literal: true

require_relative "../test_helper"

class Straddle::Test::SorbetRuntimeSupportTest < Minitest::Test
  i_suck_and_my_tests_are_order_dependent!

  module E
    extend Straddle::Internal::Type::Enum

    define_sorbet_constant!(:TaggedSymbol) { 1 }
  end

  module U
    extend Straddle::Internal::Type::Union

    define_sorbet_constant!(:Variants) { 2 }
  end

  class M < Straddle::Internal::Type::BaseModel
    define_sorbet_constant!(:OrHash) { 3 }
  end

  def test_nil_aliases
    err = Straddle::Internal::Util::SorbetRuntimeSupport::MissingSorbetRuntimeError

    assert_raises(err) { Straddle::Internal::AnyHash }
    assert_raises(err) { Straddle::Internal::FileInput }
    assert_raises(err) { Straddle::Internal::Type::Converter::Input }
    assert_raises(err) { Straddle::Internal::Type::Converter::CoerceState }
    assert_raises(err) { Straddle::Internal::Type::Converter::DumpState }
    assert_raises(err) { Straddle::Internal::Type::BaseModel::KnownField }
    assert_raises(err) { Straddle::Internal::Util::ParsedUri }
    assert_raises(err) { Straddle::Internal::Util::ServerSentEvent }
    assert_raises(err) { Straddle::Internal::Transport::BaseClient::RequestComponents }
    assert_raises(err) { Straddle::Internal::Transport::BaseClient::RequestInput }
    assert_raises(err) { Straddle::Internal::Transport::PooledNetRequester::Request }
    assert_raises(err) { E::TaggedSymbol }
    assert_raises(err) { U::Variants }
    assert_raises(err) { M::OrHash }
  end

  def test_stubbed_aliases
    Kernel.instance_eval { const_set(:T, nil) }

    assert_equal(1, E::TaggedSymbol)
    assert_equal(2, U::Variants)
    assert_equal(3, M::OrHash)
  end
end
