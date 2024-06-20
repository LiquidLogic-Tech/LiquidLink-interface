#[test_only]
module liquidlink_profile::profile_tests {
    // uncomment this line to import the module
    // use profile::profile;

    const ENotImplemented: u64 = 0;

    #[test]
    fun test_liquidlink_profile() {
        // pass
    }

    #[test, expected_failure(abort_code = liquidlink_profile::profile_tests::ENotImplemented)]
    fun test_liquidlink_profile_fail() {
        abort ENotImplemented
    }
}
