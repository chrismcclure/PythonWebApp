import requests


class Api_Accessor:
    def __init__(self) -> None:
        pass

    def call_api(self):
        print('Hey I am calling api')
        url = "https://api.github.com/repos/chrismcclure/PythonWebApp/pulls"
        response = requests.get(url)
        content = response.json()
        # print(content)
        for index in content: ##this should get each object in the returned array
            for key in index: ## iterate through each item in dict
                print(key, '->', index[key]) # print out each key and value of the dict
                print('\n*****\n') # give me a little space

        return 'api has been called'