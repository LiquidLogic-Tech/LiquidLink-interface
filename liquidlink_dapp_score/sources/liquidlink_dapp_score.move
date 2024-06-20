module liquidlink_dapp_score::dapp_score {

    // ----- Use Statements -----

    use std::string;
    use sui::object;
    use std::option;
    use sui::table;
    use sui::tx_context;

    // ----- structs -----

    struct AddAdminEvent has copy, drop {
        new_admin: address,
        by: address,
    }

    struct AddDappAdminEvent has copy, drop {
        dapp_index: u64,
        admin: address,
        by: address,
    }

    struct ChangeUpdaterEvent has copy, drop {
        new_updater: address,
        by: address,
    }

    struct CreateDappEvent has copy, drop {
        dapp_index: u64,
        name: string::String,
        data: string::String,
        image_url: string::String,
        by: address,
    }

    struct CreateDappScoreUpdateRequestEvent has copy, drop {
        id: object::ID,
        updater: address,
        dapp_index: u64,
        user: address,
        referrer: option::Option<address>,
        proof: vector<u8>,
    }

    struct Dapp has store {
        index: u64,
        name: string::String,
        admins: vector<address>,
        users: table::Table<address, DappUser>,
        data: string::String,
        image_url: string::String,
    }

    struct DappAdminCap has drop, store {
        dapp_index: u64,
    }

    struct DappScoreManager has store, key {
        id: object::UID,
        admins: vector<address>,
        creator: address,
        dapps: table::Table<u64, Dapp>,
        users: table::Table<address, User>,
        next_dapp_index: u64,
        updater: address,
        version: u64,
    }

    struct DappScoreUpadteRequest has store, key {
        id: object::UID,
        user: address,
        referrer: option::Option<address>,
        dapp_index: u64,
        proof: vector<u8>,
    }

    struct DappUser has store {
        offchain_score: u64,
        addition_by_admin_cap: u64,
        deduction_by_admin_cap: u64,
        addition_by_admin: u64,
        deduction_by_admin: u64,
        referrer: option::Option<address>,
    }

    struct DecreaseScoreByAdminCapEvent has copy, drop {
        dapp_index: u64,
        user: address,
        old_score: u64,
        new_score: u64,
        score_decrease: u64,
        by: address,
    }

    struct DecreaseUserScoreByAdminEvent has copy, drop {
        dapp_index: u64,
        user: address,
        old_score: u64,
        new_score: u64,
        score_decrease: u64,
        by: address,
    }

    struct DeleteDappScoreUpdateRequestEvent has copy, drop {
        id: object::ID,
        user: address,
        dapp_index: u64,
        by: address,
    }

    struct IncreaseScoreByAdminCapEvent has copy, drop {
        dapp_index: u64,
        user: address,
        old_score: u64,
        new_score: u64,
        score_increase: u64,
        by: address,
    }

    struct IncreaseUserScoreByAdminEvent has copy, drop {
        dapp_index: u64,
        user: address,
        old_score: u64,
        new_score: u64,
        score_increase: u64,
        by: address,
    }

    struct RemoveAdminEvent has copy, drop {
        admin: address,
        by: address,
    }

    struct RemoveDappAdminEvent has copy, drop {
        dapp_index: u64,
        admin: address,
        by: address,
    }

    struct UpdateDappDataEvent has copy, drop {
        dapp_index: u64,
        old_data: string::String,
        data: string::String,
        by: address,
    }

    struct UpdateDappImageUrlEvent has copy, drop {
        dapp_index: u64,
        old_image_url: string::String,
        image_url: string::String,
        by: address,
    }

    struct UpdateDappNameEvent has copy, drop {
        dapp_index: u64,
        old_name: string::String,
        name: string::String,
        by: address,
    }

    struct UpdateUserOffchainScoreByUpdater has copy, drop {
        dapp_index: u64,
        user: address,
        old_score: u64,
        new_score: u64,
        score_change: u64,
        is_negative: bool,
        by: address,
    }

    struct User has store {
        dapp_indexes: vector<u64>,
        admin_dapp_indexes: vector<u64>,
    }

    struct UserDappScoreChangedEvent has copy, drop {
        user: address,
        dapp_index: u64,
        offchain_score: u64,
        addition_by_admin: u64,
        deduction_by_admin: u64,
        addition_by_admin_cap: u64,
        deduction_by_admin_cap: u64,
    }
    // ----- Public Functions -----

    public fun add_dapp_admin(arg0: &mut DappScoreManager, arg1: u64, arg2: address, arg3: &tx_context::TxContext) {
        abort 0
    }

    public fun add_super_admin(arg0: &mut DappScoreManager, arg1: address, arg2: &tx_context::TxContext) {
        abort 0
    }

    public fun change_updater(arg0: &mut DappScoreManager, arg1: address, arg2: &tx_context::TxContext) {
        abort 0
    }

    public fun check_is_dapp_admin(arg0: &Dapp, arg1: &tx_context::TxContext) {
        abort 0
    }

    public fun check_is_updater(arg0: &DappScoreManager, arg1: &tx_context::TxContext) {
        abort 0
    }

    public fun create_dapp(arg0: &mut DappScoreManager, arg1: string::String, arg2: string::String, arg3: string::String, arg4: &mut tx_context::TxContext) {
        abort 0
    }

    public fun create_dapp_score_update_request(arg0: address, arg1: u64, arg2: option::Option<address>, arg3: vector<u8>, arg4: &mut tx_context::TxContext) {
        abort 0
    }

    public fun decrease_score_by_admin_cap(arg0: &mut DappScoreManager, arg1: DappAdminCap, arg2: address, arg3: option::Option<address>, arg4: u64, arg5: &tx_context::TxContext) {
        abort 0
    }

    public fun decrease_user_score_by_admin(arg0: &mut DappScoreManager, arg1: u64, arg2: address, arg3: u64, arg4: &tx_context::TxContext) {
        abort 0
    }

    public fun delete_dapp_score_update_request(arg0: &DappScoreManager, arg1: DappScoreUpadteRequest, arg2: &tx_context::TxContext) {
        abort 0
    }

    public fun get_admin_cap(arg0: &DappScoreManager, arg1: u64, arg2: &tx_context::TxContext) : DappAdminCap {
        abort 0
    }

    public fun get_dapp_admins(arg0: &DappScoreManager, arg1: u64) : vector<address> {
        abort 0
    }

    public fun get_dapp_data(arg0: &DappScoreManager, arg1: u64) : string::String {
        abort 0
    }

    public fun get_dapp_image_url(arg0: &DappScoreManager, arg1: u64) : string::String {
        abort 0
    }

    public fun get_dapp_name(arg0: &DappScoreManager, arg1: u64) : string::String {
        abort 0
    }

    public fun get_user_dapps(arg0: &DappScoreManager, arg1: address) : vector<u64> {
        abort 0
    }

    public fun get_user_referrer(arg0: &DappScoreManager, arg1: u64, arg2: address) : option::Option<address> {
        abort 0
    }

    public fun get_user_score(arg0: &DappScoreManager, arg1: u64, arg2: address) : u64 {
        abort 0
    }

    public fun get_user_score_detail(arg0: &DappScoreManager, arg1: u64, arg2: address) : (u64, u64, u64, u64, u64) {
        abort 0
    }

    public fun increase_score_by_admin_cap(arg0: &mut DappScoreManager, arg1: DappAdminCap, arg2: address, arg3: option::Option<address>, arg4: u64, arg5: &tx_context::TxContext) {
        abort 0
    }

    public fun increase_user_score_by_admin(arg0: &mut DappScoreManager, arg1: u64, arg2: address, arg3: u64, arg4: &tx_context::TxContext) {
        abort 0
    }

    public fun remove_dapp_admin(arg0: &mut DappScoreManager, arg1: u64, arg2: address, arg3: &tx_context::TxContext) {
        abort 0
    }

    public fun remove_super_admin(arg0: &mut DappScoreManager, arg1: address, arg2: &tx_context::TxContext) {
        abort 0
    }

    public fun update_dapp_data(arg0: &mut DappScoreManager, arg1: u64, arg2: string::String, arg3: &tx_context::TxContext) {
        abort 0
    }

    public fun update_dapp_image_url(arg0: &mut DappScoreManager, arg1: u64, arg2: string::String, arg3: &tx_context::TxContext) {
        abort 0
    }

    public fun update_dapp_name(arg0: &mut DappScoreManager, arg1: u64, arg2: string::String, arg3: &tx_context::TxContext) {
        abort 0
    }

    public fun update_user_offchain_score(arg0: &mut DappScoreManager, arg1: u64, arg2: address, arg3: option::Option<address>, arg4: u64, arg5: &tx_context::TxContext) {
        abort 0
    }
}
