fn main() {
    let args = std::env::args();
    println!("command line args: {:?}", args);

    let left = 34;
    let right = 27;
    let sum = rusty_template::add(left, right);
    println!("{} + {} = {}", left, right, sum);
}
