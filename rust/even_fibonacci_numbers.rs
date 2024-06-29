fn main(){
	println!("{}", even_fibonacci_numbers_sum(4000000));
}

fn even_fibonacci_numbers_sum(under : u32) -> u32 {
	let mut current_fib = 1;
	let mut last_fib = 1;
	
	let mut sum = 0;
	
	while current_fib < under {
		if current_fib % 2 == 0 {
			sum += current_fib;
		}
		
		let temp = last_fib;
		last_fib = current_fib;
		current_fib += temp;
	}
	
	return sum;
}