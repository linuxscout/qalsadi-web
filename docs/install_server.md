Great! Here's a guide to deploy your Flask app on **shared hosting using `mod_wsgi`**, which is often available on Apache-based shared hosting environments (e.g., Bluehost, GoDaddy, etc.).

---

## ✅ 1. **Directory Structure**

Let’s assume your project is in:
`~/flaskapp/`

```
flaskapp/
├── app.wsgi
├── app.py
├── static/
├── templates/
├── requirements.txt
└── .htaccess
```

---

## ✅ 2. **Flask App (`app.py`)**

Make sure your app is named `application` or has an app instance called `application`:

```python
from flask import Flask
application = Flask(__name__)

@application.route('/')
def home():
    return "✅ Flask with mod_wsgi is working!"
```

If your app is named `app = Flask(__name__)`, then update `app.wsgi` accordingly (see below).

---

## ✅ 3. **WSGI Entry Point (`app.wsgi`)**

```python
import sys
import os

# Set path to your Flask project
sys.path.insert(0, os.path.dirname(__file__))

# Set environment variable if needed
os.environ['FLASK_ENV'] = 'production'

from app import application  # This must match your Flask instance name
```

> If your Flask app is named `app`, you can alias:
> `from app import app as application`

---

## ✅ 4. **.htaccess File**

In the same directory (`~/flaskapp/`):

```apache
RewriteEngine On
RewriteCond %{REQUEST_FILENAME} !-f
RewriteRule ^(.*)$ app.wsgi/$1 [QSA,PT,L]
AddHandler wsgi-script .wsgi
Options +ExecCGI
DirectoryIndex app.wsgi
```

> 🧠 This tells Apache to use your `.wsgi` file as the app entry point and route traffic accordingly.

---

## ✅ 5. **Permissions**

Make sure your files are executable by the web server:

```bash
chmod 755 app.wsgi
chmod -R 755 flaskapp/
```

---

## ✅ 6. **Install Flask in a Local Virtualenv**

If you have **SSH access**:

```bash
cd ~
python3 -m venv venv
source venv/bin/activate
pip install flask
pip freeze > requirements.txt
```

Then modify your `.htaccess` to use the virtualenv Python (if supported):

```apache
SetEnv PYTHON_EGG_CACHE /home/youruser/tmp
WSGIPythonHome /home/youruser/venv
```

> Many shared hosts don't support `WSGIPythonHome`, so check your hosting documentation.

---

## ✅ 7. **Access Your App**

Now go to:
`https://yourdomain.com/flaskapp/`

You should see:

> ✅ Flask with mod\_wsgi is working!

---

## ✅ Troubleshooting

| Problem                 | Solution                                                  |
| ----------------------- | --------------------------------------------------------- |
| 500 Internal Error      | Check `error_log` in your hosting file manager or via SSH |
| "Application not found" | Confirm `from app import application` is correct          |
| No module named flask   | Use virtualenv, or ask host to install Flask globally     |

---

## 🔁 Optional Enhancements

* Serve from root domain using `.htaccess` rewrite
* Use `flask.render_template` for dynamic HTML pages
* Organize as Flask blueprint (multi-page support)


