use debug:: PrintTrait;

// #[derive(Copy, Drop)]
struct B{
    name: felt252,
    age : felt252,
}

const nun:u8 = 7; 
fn main(){
    let instance = B{name: 'Bean', age: 3};
    // instance.print();
    

    let name = instance.name;
    let name = instance.name;

    name.print();
    name.print();
    call_name(instance);
    call_name(instance);

    only_primitives(nun);
    only_primitives(nun);

}

fn call_name(name:B)-> felt252{
     name.name
}

fn only_primitives(number: u8)-> u8{
    number
}