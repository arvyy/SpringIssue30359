# Reproduction
* Run `docker compose up --build` handful of times
* Edit file `generate.sh` and make 3rd line be `for i in {1..100}`
* Run `docker compose up --build` handful of times

# Expected behavior
Application should exit with status code 0 in all runs

*OR*

application should fail with UnsatisfiedDependencyException in all runs.

# Observed behavior
Application exits with status code 0 on first set of runs *most of the time*

Application fails with `Parameter 0 of method setSvc in com.example.demo.foo48.ServiceUser48 required a bean of type 'com.example.demo.foo48.ServiceImpl48' that could not be found.` or similar on second set of runs *most of the time*
