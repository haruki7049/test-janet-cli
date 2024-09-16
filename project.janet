(declare-project
  :name "janet-cli"
  :dependencies ["https://github.com/janet-lang/spork.git"])

(declare-executable
  :name "janet-cli"
  :entry "src/main.janet"
  :install true)
