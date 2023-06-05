use debug::PrintTrait;

// #[derive(Copy, Drop)]
struct C {
    active: bool,
    username: felt252,
    email: felt252,
    sign_in_count: u64,
}

fn main(){
    let user1 = C{
        active : true,
        username : 'Page' ,
        email : 'Page@gmail.com',
        sign_in_count: 1_u64,
};
    // to get a specific value:
    let active = user1.active;
    // active.print();
    let username = user1.username;
    username.print();
}