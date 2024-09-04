# 02 Be Easy to Use

|本期版本| 上期版本
|:---:|:---:
`Wed Sep  4 15:05:57 CST 2024` | -


## 2.1 Understanding the Command Line: Options, Arguments, and Commands

---

### Options

* `Short-form` options are preceded by a dash and are only one character long, can be combined after a single dash
* `Long-form` options are preceded by two dashes and, strictly speaking, consist of two or more characters

**two types**

* `switches`: used to turn options on and off and do not take arguments
* `flags`, which take arguments


**Long-form**

* switch is in the long-form (for example --foo), which turns “on” some behavior, there is also another switch preceded with no- (for example --no-foo) that turns “off” the behavior

```bash
--fo0
--no-fo
```

* `long-form` flags take their argument via an `equal sign`, whereas in the short form of a flag, an equal sign is typically not used

```bash
curl -X POST http://www.google.com 
curl --request=POST http://www.google.com
```

---

### Arguments

* Not all command-line apps take arguments

---

### Commands

* command-suite
* Global options: before the command
* Command options: follow a command

## 2.2 Building an Easy-to-Use Command-Line Interface

* if a string is passed and it starts with a dash followed by one or more nonspace characters, it’s treated as a `switch`.
* If there is a space and another string, it’s treated as a `flag`

**classname**

* Integer / `accept`

## 2.3 Building an Easy-to-Use Command-Suite Interface


## Ref

* <https://docs.ruby-lang.org/en/3.2/OptionParser.html>
* <https://github.com/rack/rackup/blob/main/lib/rackup/server.rb>
* <https://github.com/rails/thor>