# Qalsadi Web Interface

🔤 **Qalsadi Web UI** is a simple and interactive web interface for the [Qalsadi Arabic Morphological Analyzer](https://github.com/linuxscout/qalsadi), built using [Flask](https://flask.palletsprojects.com/). It provides tools for morphological analysis, tokenization, stemming, lemmatization, and more — all from your browser.



## Demo 

Coming soon: [Tahadz.com](http://tahadadz.com/qalsadi)

## 🚀 Features

- 🔍 Morphological analysis of Arabic text (using [`Qalsdai morphological analyzer and lemmalizer`](http://github.com/linuxscout/qalsadi))
- 📑 Support for output in table, CSV, JSON, and XML formats
- ⌨️ Extra text processing actions:
  - Stemming (using [`Tashaphye light stemmer`](http://github.com/linuxscout/tashaphyne))
  - Tokenization (using [`pyarabic`](https://github.com/linuxscout/pyarabic))
  - Lemmatization (using [`Qalsdai morphological analyzer and lemmalizer`](http://github.com/linuxscout/qalsadi))
  - Strip Tashkeel (using [`pyarabic`](https://github.com/linuxscout/pyarabic))
  - Sorting tokens
  - Generate random Arabic text (using  [`arrand Arabic text generation مكتبة الرند`](https://github.com/linuxscout/Arrand-arabic-random-text))
- 📥 Upload Arabic text files
- 🗂️ Profile-based result display (main, all, root, lemma…)

---

## 🧰 Requirements

- Install dependencies:

```bash
pip install -r requirements.txt
```

------

## 🖥️ Usage

Run the web application:

```bash
python web/app.py
```

Visit in your browser:

```
http://127.0.0.1:5000/
```

------

## 🧪 Example Actions

- **تحليل صرفي**: Use Qalsadi analyzer to extract morphological features.
- **تجذيع**: Use Tashaphye to stem each word.
- **تأصيل**: Extract the lemma using Qalsadi.
- **تفريق Tokens**: Tokenize Arabic sentences.
- **حذف التشكيل**: Strip diacritics using PyArabic.
- **نص عربي عشوائي**: Generate random Arabic text using `arrandom`.

------

## 📁 Project Structure

```text
qalsadi-web/
├── docs
├── Makefile
├── README.md
├── requirements.txt
├── web
│   ├── app.py
│   ├── __init__.py
│   ├── static
│   │   └── style.css
│   └── templates
│       ├── about.html
│       ├── base.html
│       ├── index.html
│       └── docs.html
└── tests				# test folder
    ├── output
    ├── samples
    │   └── text.txt
    └── test_unit_web.py        
```

------

## 📜 License

This project is open-source and released under the GPL v3 License.

------

## ✨ Acknowledgements

- Built with ❤️ using [Flask](https://flask.palletsprojects.com/)
- Powered by [Qalsadi](https://github.com/linuxscout/qalsadi), [PyArabic](https://github.com/linuxscout/pyarabic), [Tashaphye](https://github.com/linuxscout/tashaphye), and [arrandom](https://github.com/linuxscout/arrandom)



