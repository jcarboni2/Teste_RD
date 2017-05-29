# Teste_RD

Getting Started
===============

* The feature validated was https://staging.rdstation.com.br/nova-segmentacao

* The covered tests are validating important scenarios. The difficult to find
static attributes spent a lot of time, unfortunately I did not have time to
create more scenarios. But I expect to present the skills and logic desired in
the activity.

------------------------------------------------------------------------------

### Prerequisite

* Install Ruby 2.3.0 from https://rubyinstaller.org/downloads/
* Install `.Ruby >= 2.3.0`
* Install `Firefox` only `47` version and `geckodriver latest version`)
* Install `Chrome` and `chromedriver any version`
* Install `Bundler`
```
gem install bundler
```
* Install `Gems`
```
bundle install (Gemfile included)
```
* Open a command console (e.g. cmder or cmd). Execute the command line below:
```
 git clone https://github.com/jcarboni2/Teste_RD.git
```
* Access the folder of downloaded project

* To perform the activity, execute the command line setting the
desired configuration as described bellow in the "Notes:"

Command line:
```
cucumber "browser" --tags "tag"
```
```
Notes:
  Change "browser" for chrome=true or firefox=true
  Change "tag"
    For feature as @sgleads
    For scenario as @sgpreview or @sgcreate
```
