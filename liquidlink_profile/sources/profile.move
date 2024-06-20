module liquidlink_profile::profile {

    // ----- Use Statements -----

    use std::string;
    use sui::object;
    use sui::table;
    use sui::clock;
    use sui::tx_context;

    // ----- Structs -----

    struct Link has copy, drop, store {
        name: string::String,
        icon: string::String,
        url: string::String,
        data: string::String,
    }

    struct LinkAddressRequestAccepted has copy, drop {
        link_address_request_id: object::ID,
        profile_id: object::ID,
        requester: address,
        profile_owner: address,
        by: address,
    }

    struct LinkAddressRequestCreated has copy, drop {
        link_address_request_id: object::ID,
        profile_id: object::ID,
        requester: address,
        profile_owner: address,
        by: address,
    }

    struct LinkAddressRequestDeclined has copy, drop {
        link_address_request_id: object::ID,
        profile_id: object::ID,
        requester: address,
        by: address,
    }

    struct LinkAddressRequestDeleted has copy, drop {
        link_address_request_id: object::ID,
        profile_id: object::ID,
        requester: address,
        by: address,
    }

    struct LinkAddressRquest has store, key {
        id: object::UID,
        profile_id: object::ID,
        requester: address,
    }

    struct LinkedAddressRemoved has copy, drop {
        profile_id: object::ID,
        linked_address: address,
        by: address,
    }

    struct LinkedAddressWrapper has drop, store {
        profile_id: object::ID,
    }

    struct PROFILE has drop {
        dummy_field: bool,
    }

    struct Profile has key {
        id: object::UID,
        owner: address,
        linked_addresses: vector<address>,
        avatar_url: string::String,
        background_url: string::String,
        display_name: string::String,
        description: string::String,
        data: string::String,
        links: vector<Link>,
        creator: address,
        created_at: u64,
        updated_at: u64,
    }

    struct ProfileCreated has copy, drop {
        profile_id: object::ID,
        owner: address,
        by: address,
    }

    struct ProfileDeleted has copy, drop {
        profile_id: object::ID,
        owner: address,
        by: address,
    }

    struct ProfileManager has store, key {
        id: object::UID,
        admins: vector<address>,
        creator: address,
        linked_addresses: table::Table<address, LinkedAddressWrapper>,
    }

    struct ProfileManagerAdminAdded has copy, drop {
        new_admin: address,
        by: address,
    }

    struct ProfileManagerAdminRemoved has copy, drop {
        removed_admin: address,
        by: address,
    }

    struct ProfileOwnershipTransferred has copy, drop {
        profile_id: object::ID,
        old_owner: address,
        new_owner: address,
        by: address,
    }
    // ----- Public Functions -----

    public fun remove_linked_address_from_profile(arg0: &mut ProfileManager, arg1: &mut Profile, arg2: address, arg3: &mut tx_context::TxContext) {
        abort 0
    }

    public fun reorder_links_in_prilfe(arg0: &mut Profile, arg1: vector<u64>, arg2: &clock::Clock, arg3: &mut tx_context::TxContext) {
        abort 0
    }

    public fun replace_links_in_prilfe(arg0: &mut Profile, arg1: vector<string::String>, arg2: vector<string::String>, arg3: vector<string::String>, arg4: vector<string::String>, arg5: &clock::Clock, arg6: &mut tx_context::TxContext) {
        abort 0
    }

    public fun transfer_profile_ownership(arg0: Profile, arg1: address, arg2: &clock::Clock, arg3: &mut tx_context::TxContext) {
        abort 0
    }
}
