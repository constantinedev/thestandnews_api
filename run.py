import re, io, sys, requests, subprocess, json, sqlite3, mysql.connector, datetime, schedule, time, socks

from os.path import exists

payload = {}
headers = {}

#url = 'https://api.thestandnews.com/api/app/v1/'
x = datetime.datetime.now()
dateTime = x.strftime("%d-%m-%Y_%H-%M-%S")

tor_proxy = requests.session()
tor_proxy.proxies = {}
tor_proxy.proxies['https'] = 'socks5h://127.0.0.1:9050'

socks.setdefaultproxy(socks.PROXY_TYPE_SOCKS5, '127.0.0.1', 9050)
socks.socket = socks.socksocket

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
            responser = requests.get(api_url[count], headers=headers, data=payload) #, headers=headers, data=payload
            JsonData = responser.text
            print(JsonData)
            fileName = dateTime + '_' + api_name[count] + '.json'
            dir_checker = str(dir + api_name[count])
            checker = exists(dir_checker)
            if checker == True:
                f = open(dir_checker + '/' + fileName, 'w', encoding="utf-8")
                f.writelines(JsonData)
                f.close()

def payloader():
    dump_dir = 'output/article/pages/'
    api_url = 'https://api.thestandnews.com/v1/article/pages/'
    for countPage in range(1, 8000):
        print('DONE! ' + api_url + str(countPage))
        time.sleep(5)
        responser = requests.get(api_url + str(countPage), headers=headers, data=payload)
        payload_result = responser.text
        print(payload_result)
        fileName = dateTime + '_' + str(countPage) + '.json'
        checker = exists(dump_dir)
        # if checker == True:
        #     f = open('output/article/pages/' + fileName, 'w')
        #     f.writelines(payload_result)
        #     f.close()
        #     responser.close()

if __name__ == '__main__':
    main()
    payloader()
