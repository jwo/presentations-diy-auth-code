# An exploration into

Slides:

<a href="https://speakerdeck.com/jwo/diy-rails-authentication">
  ![img](slides.png)
</a>

[Download Slides PDF](DIY Rails Auth - by Jesse Wolgamott.pdf)

Code:
* Tag: 'before-demo' for before the creation of Auth
* 52285ea3b7ec82e4728166a7cfb4ae6d8c44e430 - Adding Auth

## Getting Started

* Clone, Bundle, as you do
* `rake db:seed` to create 500 products and a user
* Visit `/products` and it will ask you to sign in

username: joebobfrank
password: 12345678

## Where to go from here

1. Add authentication to the API using `has_secure_token`, doorkeeper, or JWT
2. Add signup to both Rails and API

<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>.
