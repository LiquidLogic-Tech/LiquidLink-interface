#[test_only]
module liquidlink_dapp_score::liquidlink_dapp_score_tests {
    // uncomment this line to import the module
    // use liquidlink_dapp_score::liquidlink_dapp_score;

    const ENotImplemented: u64 = 0;

    #[test]
    fun test_liquidlink_dapp_score() {
        // pass
    }

    #[test, expected_failure(abort_code = liquidlink_dapp_score::liquidlink_dapp_score_tests::ENotImplemented)]
    fun test_liquidlink_dapp_score_fail() {
        abort ENotImplemented
    }
}
