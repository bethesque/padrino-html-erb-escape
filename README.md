Padrino HTML ERB Escaping problem
---------------------------------

To recreate issue:

    $ bundle
    $ bundle exec rspec

To make the tests pass, comment out the erubis gem in the Gemfile, and run `bundle && bundle exec rspec`.
