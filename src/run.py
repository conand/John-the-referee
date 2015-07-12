from pymysql import escape_string
from aes import AESCipher
from db import get_all_uniforms, search_uniform, get_uniform_by_id

from flask import Flask, render_template, redirect, request, url_for

app = Flask(__name__)

N = 10


@app.route('/')
def index():
    uniforms = get_all_uniforms()

    uniforms = [{"id": u["id"], "name": u["name"], "description": u["description"][:N] + "..."} for u in uniforms]

    return render_template('index.html', uniforms=uniforms)


@app.route('/search', methods=['GET', 'POST'])
def search():

    if request.method == 'GET':
        return render_template('search.html')

    else:
        data = request.form["field"]
        data = escape_string(data)

        enc_data = encryptor.encrypt(data.encode("hex"))

        return redirect(url_for('search_result', data=enc_data))


@app.route('/search-result/<string:data>')
def search_result(data):
    dec_data = decryptor.decrypt(data)

    uniform = search_uniform(dec_data)

    if uniform:
        uniform = {"id": uniform["id"], "name": uniform["name"], "description": uniform["description"]}

    return render_template('search-result.html', uniform=uniform, string=dec_data)


@app.route('/uniform/<int:id>')
def show_uniform(id):
    uniform = get_uniform_by_id(id)

    if uniform:
        uniform = {"id": uniform["id"], "name": uniform["name"], "description": uniform["description"]}

    return render_template('uniform.html', uniform=uniform)


@app.errorhandler(404)
def page_not_found(e):
    return render_template('error.html', message="John not found"), 404


@app.errorhandler(500)
def page_not_found(e):
    return render_template('error.html', message="Something bad happened"), 500

key = open('key').read().strip()

encryptor = AESCipher(key.encode('hex'))
decryptor = AESCipher(key.encode('hex'))

if __name__ == '__main__':
    app.run(debug=False)
