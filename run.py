import re, io, sys, requests, subprocess, json, sqlite3, mysql.connector, datetime

from os.path import exists
from stem import Signal
from stem.control import Controller

payload = {}
headers = {}

def proxy():
	proxy_session = requests.session()
	proxy_session.proxies = {
		'http': 'socks5://127.0.0.1:9050',
		'https': 'socks5://127.0.0.1:9050'
	}
	return proxy_session

#url = 'https://api.thestandnews.com/api/app/v1/'
x = datetime.datetime.now()
dateTime = x.strftime("%d-%m-%Y_%H-%M-%S")

api_url = [
    #2
    'https://api.thestandnews.com/api/app/v1/author',
    'https://api.thestandnews.com/api/app/v1/category',
    #1
    'https://api.thestandnews.com/api/app/v1/article/type/headline',
    'https://api.thestandnews.com/api/app/v1/article/type/editor_pick',
    'https://api.thestandnews.com/api/app/v1/article/type/popular',
    #3
    'https://api.thestandnews.com/v1/article'
]

api_name = [
    #2
    'author',
    'category',
    #1
    'hendline',
    'editor_pick',
    'popular',
    #3
    'article'
]

def  main():
    dir = 'output/'
    file_exists = exists(dir)
    api_count = len(api_url)
    if file_exists == 'False':
        subprocess.call('cp -R output_bk/ output/')
    else:
        for count in range(0, api_count):
            print('DONE! ' + api_url[count])
            responser = requests.get(api_url[count], headers=headers, data=payload)
            JsonData = responser.text
            fileName = dateTime + '_' + api_name[count] + '.json'
            dir_checker = str(dir + api_name[count])
            checker = exists(dir_checker)
            if checker == True:
                f = open(dir_checker + '/' + fileName, 'w')
                f.writelines(JsonData)
                f.close()

if __name__ == '__main__':
    main()
