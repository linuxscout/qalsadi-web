import mimetypes

from tashaphyne.stemming import ArabicLightStemmer
from qalsadi.abstractresultformatter import AbstractResultFormatter
ALLOWED_EXTENSIONS = {'txt'}

def allowed_file(filename):
    return '.' in filename and \
           filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS

def is_text_file(file_storage):
    mime_type = mimetypes.guess_type(file_storage.filename)[0]
    return mime_type == 'text/plain'

def light_stemmer(text):
    """
    LightStemming unsing Tashaphyne
    """
    result = []
    als = ArabicLightStemmer()
    word_list = als.tokenize(text)
    for word in word_list:
        #~listseg =  als.segment(word)
        als.segment(word)
        affix_list = als.get_affix_list()
        for affix in affix_list:
            result.append({'word':word, 'prefix':affix['prefix'],
            'stem':affix['stem'], 'suffix':affix['suffix'],
            'root':affix['root'], 'type':'-'}
                          )
    return result

class stemmerformatter(AbstractResultFormatter):
    def __init__(self,results):
        self.results = results
        assert self._is_valid_result_type(results)
        # self.flat_results = [item.__dict__ for sublist in results for item in sublist]
        self.all_fields = self._collect_all_fields()
        self.used_fields = list(self.all_fields)  # default is all

        self.profiles = {
            "main": ["id", "word",  "prefix", "stem", "suffix", "root", "type"],
            "all": self.all_fields,
        }

