module liquidlink_profile::error {
    // ----- Public Functions -----

    public fun address_has_linked_error() : u64 {
        abort 0
    }

    public fun address_not_belong_to_same_profile_error() : u64 {
        abort 0
    }

    public fun address_not_linked_error() : u64 {
        abort 0
    }

    public fun duplicated_error() : u64 {
        abort 0
    }

    public fun duplicated_user_dapp_score_object_error() : u64 {
        abort 0
    }

    public fun has_exist_error() : u64 {
        abort 0
    }

    public fun not_authorized_error() : u64 {
        abort 0
    }

    public fun not_exist_error() : u64 {
        abort 0
    }

    public fun score_under_zero_error() : u64 {
        abort 0
    }

    public fun target_not_exist_error() : u64 {
        abort 0
    }

    public fun updator_expired_error() : u64 {
        abort 0
    }
}
