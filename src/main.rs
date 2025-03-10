use std::net::TcpListener;
use zero2prod::run;

#[tokio::main]
async fn main() -> Result<(), std::io::Error> {
    // Bubble up the io::Error if we failed to bind the address.
    // Otherwise, call .await on our Server handle.
    let listener = TcpListener::bind("127.0.0.1:8000")?;
    run(listener)?.await
}
