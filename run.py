import re, io, sys, requests, subprocess, json, sqlite3, mysql.connector, datetime, schedule, time

from os.path import exists

payload = {}
headers = {
    "x-stand-news-client": "iOS",
    "x-stand-news-version": "159",
    "user-agent": "StandNews/1.0.14 (iPhone; iOS 15.2; Scale/2.00)",
    "Content-Type": "application/json; charset=utf-8"
}

x = datetime.datetime.now()
dateDate = x.strftime('_%d-%m-%Y_')
dateTime = x.strftime('%H-%M-%S')

tor_proxy = dict(
    http = 'socks5://127.0.0.1:9050',
    https = 'socks5://127.0.0.1:9050'
)

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
        command_line = 'cp -R output_bk/ output/'
        subprocess.call([command_line], shell=False, check=True)
        return main()
    else:
        for count in range(0, api_count):
            responser = requests.get(str(api_url[count]), headers=headers, data=payload) # proxies=tor_proxy,
            JsonData = responser.text
            fileName = api_name[count] + dateDate + dateTime + '.json'
            dir_checker = str(dir + api_name[count])
            checker = exists(dir_checker)
            if checker == True:
                f = open(dir_checker + '/' + fileName, 'w', encoding="utf8")
                f.writelines(JsonData)
                f.close()
                responser.close()
            print('DONE! ' + api_url[count] + ':' + str(responser.status_code))
            
def payloader():
    dump_dir = 'output/article/pages/'
    api_url = 'https://api.thestandnews.com/v1/article/pages/' 
    strartPageINT = input("start page: ")
    for countPage in range(int(strartPageINT), 8000):
        responser = requests.get(api_url + str(countPage), headers=headers, data=payload) # , proxies=tor_proxy
        payload_result = responser.text
        fileName = str(countPage) + dateDate + dateTime + '.json'
        checker = exists(dump_dir)
        if checker == True:
            f = open('output/article/pages/' + fileName, 'w', encoding="utf8")
            f.writelines(payload_result)
            f.close()
            responser.close()
        print('DONE! ' + api_url + str(countPage) + ':' + str(responser.status_code))
        #time.sleep(1200)
        
if __name__ == '__main__':
    main()
    payloader()
