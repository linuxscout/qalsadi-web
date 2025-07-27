# المحلل الصرفي القلصادي

**واجهة القلصادي الويب** هي أداة تفاعلية لتحليل النصوص العربية صرفيًا، تم تطويرها باستخدام إطار العمل [Flask](https://flask.palletsprojects.com/)، لتسهيل استخدام مكتبة [القلصادي](https://github.com/linuxscout/qalsadi) عبر المتصفح مباشرة.

🔤 **القلصادي** مشروع مفتوح المصدر للتحليل الصرفي العربي يستخلص الخصائص الصرفية للكلمات، يعتمد على **طريقة القواعد (Rule-based)**.  يستند القلصادي إلى قاعدة بيانات لغوية غنية مبنية على **[قاموس الراموز الوسيط](http://arramooz.sf.net)**.

🧠 لا يستخدم القلصادي أي نماذج تعلم آلي أو شبكات عصبية، بل يحلل الكلمة العربية وفقًا لقواعد صرفية واستخلاص الزوائد ويرجع إلى القاموس للتحقق من الكلمات.

🔧 يُستخدم القلصادي  في عدة مشاريع مفتوحة المصدر، من أهمها برنامج [مشكال النصوص العربية](http://tahadz.com/mishkal)، المتخصص في تشكيل النصوص العربية.

👨‍💻 المطوّر د. طه زروقي.

📎 **رابط المشروع على GitHub**:
 👉 https://github.com/linuxscout/qalsadi

------

## تجربة 

قريبًا على: [Tahadz.com](http://tahadadz.com/qalsadi)

------

## 🚀 الميزات

- 🔍 تحليل صرفي للنصوص العربية (باستخدام [محلل القلصادي الصرفي](http://github.com/linuxscout/qalsadi))
- 📑 دعم تصدير النتائج بصيغ متعددة: جدول، CSV، JSON، XML
- ⌨️ عمليات إضافية لمعالجة النصوص:
  - التجذيع (باستخدام [Tashaphye](http://github.com/linuxscout/tashaphyne))
  - التقطيع إلى كلمات (باستخدام [PyArabic](https://github.com/linuxscout/pyarabic))
  - استخلاص الأصول (باستخدام القلصادي)
  - حذف التشكيل (باستخدام PyArabic)
  - فرز الكلمات
  - توليد نصوص عربية عشوائية (باستخدام [مكتبة الرند Arrand](https://github.com/linuxscout/Arrand-arabic-random-text))
- 📥 إمكانية رفع ملفات نصية باللغة العربية
- 🗂️ عرض النتائج بناءً على تخصيص الحقول (main، all، root، lemma…)

------



##  🛠️ أمثلة على العمليات

- **تحليل صرفي**: استخراج الخصائص الصرفية باستخدام القلصادي.
- **تجذيع**: استخراج الجذع باستخدام Tashaphye.
- **تأصيل**: الحصول على الأصل المعجمي باستخدام القلصادي.
- **تقطيع Tokens**: تجزئة الجمل العربية إلى كلمات.
- **حذف التشكيل**: إزالة التشكيل من النص باستخدام PyArabic.
- **نص عربي عشوائي**: توليد نص عربي عشوائي باستخدام arrandom.

---------------

## 📥 التحميل

يمكنك تحميل **المكتبة البرمجية القلصادي** واستخدامها مباشرة ضمن مشاريع Python الخاصة بك، وذلك عبر تثبيتها من PyPI باستخدام الأمر:

```pip install qalsadi```

كما يمكنك أيضًا تحميل **الكود المصدري الكامل** لواجهة الويب أو للمكتبة نفسها من مستودعات GitHub:

- 🔗 **مكتبة القلصادي (تحليل صرفي):**
   https://github.com/linuxscout/qalsadi
- 🔗 **واجهة الويب للقلصادي:**
   https://github.com/linuxscout/qalsadi-web

تتضمن المستودعات وثائق الاستخدام، وملفات الأمثلة، والتعليمات لتثبيت وتشغيل المشروع محليًا.



```

```

-------



## 🧪 مشاريع لغوية

- [**مشكال النصوص العربية**](http://tahadz.com/mishkal)
- [**قطرب لتصريف الأفعال العربية**](http://qutrub.arabeyes.org)
- [**مكتبة بيثون للعربية**](http://github.com/pyarabic)
- [**مكتبة تاشفين للتجذيع الخفيف**](http://github.com/linuxscout/tashaphyne)
- [**مكتبة الرند لتوليد النصوص العشوائية العربية**](http://github.com/linuxscout/arrand-arabic-random-text)
- [**للمزيد من المشاريع والتطبيقات زوروا موقعنا**](http://tahadz.com)


------



### 📚 مراجع للاستشهاد (Reference for Citation):

* ```
  T. Zerrouki‏, Qalsadi, Arabic mophological analyzer Library for python.,  https://pypi.python.org/pypi/qalsadi/
  
  ```
* 
  ```
  Zerrouki, Taha. "Towards An Open Platform For Arabic Language Processing." (2020).
  ```
  بصيغة Bibtex
```bibtex
@misc{zerrouki2012qalsadi,
  title={qalsadi, Arabic mophological analyzer Library for python.},
  author={Zerrouki, Taha},
  url={https://pypi.python.org/pypi/qalsadi},
  year={2012}
}
```

```bibtex
@thesis{zerrouki2020towards,
  title={Towards An Open Platform For Arabic Language Processing},
  author={Zerrouki, Taha},
  year={2020}
}
```

## 📊 التقييم

قيّمنا أداء **المحلل الصرفي القلصادي** على **مدونة [Nemlar** النصوص العربية الموسومة](http://alkhalil.oujda-nlp-team.net/Nemlar.php)، وركّزنا في هذا التقييم على مهمة **استخلاص الأصول (lemmatization)**. وقد حصلنا على النتائج التالية:

- ✅ **عدد الجمل الكلي**: 20,726
- ✅ **عدد الكلمات**: 480,577
- 🟢 **عدد التطابقات الصحيحة (بدون تشكيل)**: 412,934
- 🔵 **عدد التطابقات الصحيحة (بالتشكيل)**: 347,092

#### 🎯 معدلات الدقة:

- **الدقة بدون تشكيل**: 85.92%
- **الدقة مع التشكيل**: 72.22%



## 📜 الرخصة

هذا المشروع مفتوح المصدر وموزع بموجب رخصة **GPL الإصدار 3**.
