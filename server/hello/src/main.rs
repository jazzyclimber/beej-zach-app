#[macro_use] extern crate rocket;
use rocket::Request;
use rocket::{Rocket, Build};

#[get("/")]
fn index() -> &'static str {
    "Hello, world!"
}

#[get("/hello")]
fn hello() -> &'static str {
    "another hello world route"
}

#[catch(400)]
fn general_not_found(req: &Request) -> String {
    format!("I couldn't find '{}'. Try something else?", req.uri())
}

#[catch(404)]
fn error_404(req: &Request) -> String {
    format!("I couldn't find YOUR THING: '{}'. Try something else?", req.uri())
}

#[launch]
fn rocket() -> _ {
    rocket::build()
        .register("/", catchers![general_not_found, error_404])
        .mount("/", routes![index, hello])
}


