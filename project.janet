(declare-project
  :name "janet-cli"
  :dependencies [
    "https://github.com/janet-lang/spork.git"
    {:url "https://github.com/ianthehenry/cmd.git"
     :tag "v1.1.0"}
  ])

(declare-executable
  :name "janet-cli"
  :entry "src/main.janet"
  :install true)
