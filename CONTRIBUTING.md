---
title: Contributing Guide
---

### Opening a PR

1. Fork the repo
2. Install dependencies:
  - `bundle install`
  - `bundle exec appraisal install`
3. Set up test database:
  - `bundle exec rake db:setup`
4. Run the test suite
  - `bundle exec rspec`
  - `bundle exec appraisal rspec`
5. Make your changes, ensure that the test suite still passes
6. Push your fork and open a pull request
