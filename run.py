import re, io, sys, requests, subprocess, json, sqlite3, mysql.connector, datetime, schedule, time, threading

from os.path import exists

payload = {}
headers = {
    "x-stand-news-client": "iOS",
    "x-stand-news-version": "159",
    "user-agent": "StandNews/1.0.14 (iPhone; iOS 15.2; Scale/2.00)",
    "Content-Type": "application/json; charset=utf-8"
}

tor_proxy = requests.session()
tor_proxy.proxies = {}
tor_proxy.proxies['http'] = 'socks5://127.0.0.1:9050'
tor_proxy.proxies['https'] = 'socks5://127.0.0.1:9050'

APIURL = 'https://api.thestandnews.com/v1/'

api_url = {
    # 2
    'author': 'author/',
    'category': 'category/',
    # 1
    'headline': 'article/type/headline/',
    'editor_pick': 'article/type/editor_pick/',
    'popular': 'article/type/popular/',
    # 3
    'article': 'article/pages/'
}

APIURL_LIST = list(api_url)

def main():
    for count in range(0, len(APIURL_LIST)):
        timer = datetime.datetime.now()
        if count < 5 :
            URL = api_url[APIURL_LIST[int(count)]]
            DIR = APIURL_LIST[int(count)]
            dateDate = timer.strftime('_%d-%m-%Y_')
            dateTime = timer.strftime('%H-%M-%S')
            responser = requests.get(str(APIURL + URL), headers=headers, data=payload)  # proxies=tor_proxy,
            JsonData = responser.text
            fileName = DIR + dateDate + dateTime + '.json'
            dir_checker = 'output/' + DIR + '/'
            if responser.status_code == 200:
                f = open(str(dir_checker) + str(fileName), 'w', encoding="utf8")
                f.writelines(JsonData)
                f.close()
                responser.close()
                print('DONE! ' + str(APIURL + api_url[APIURL_LIST[int(count)]]) + ':' + str(responser.status_code))
            else:
                break
        elif count == 5:
            dateDate = timer.strftime('_%d-%m-%Y_')
            dateTime = timer.strftime('%H-%M-%S')
            req = requests.get('https://api.thestandnews.com/v1/article', headers=headers, data=payload)
            check_count = req.text
            check_json = json.loads(check_count)
            article_meta = check_json['meta']
            article_count = article_meta['total_count']
            article_count_page = str(article_count/20 + 1)
            print('Now Totla Page of Article are: ' + article_count_page)
            
            # strartPageINT = 1
            # EndPageINT = int(article_count_page)
            
            strartPageINT = input("start page: ")
            EndPageINT = input("end page<+1>: ")
            for num in range(int(strartPageINT), int(EndPageINT)):
                URL = api_url[APIURL_LIST[int(count)]]
                DIR = APIURL_LIST[int(count)]
                responser = requests.get(str(APIURL + URL + str(num)), headers=headers, data=payload)  # proxies=tor_proxy,
                JsonData = responser.text
                fileName = DIR + '_' + str(num) + dateDate + dateTime + '.json'
                dir_checker = 'output/' + DIR + '/pages/'
                if responser.status_code == 200:
                    f = open(str(dir_checker) + str(fileName), 'w', encoding="utf8")
                    f.writelines(JsonData)
                    f.close()
                    responser.close()
                    print('DONE! ' + str(APIURL + api_url[APIURL_LIST[int(count)]] + str(num)) + ':' + str(responser.status_code))
                else:
                    responser = requests.get(str(APIURL + URL + str(num)), headers=headers, data=payload)
                    return responser()

if __name__ == '__main__':
    main()
