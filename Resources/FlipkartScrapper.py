import bs4
import requests
import pandas as pd


def Scrap_from_Flipkart(url):
    res = requests.get(url)
    soup = bs4.BeautifulSoup(res.text, "lxml")
    name = soup.select("._4rR01T")
    price = soup.select("._30jeq3._1_WHN1")
    ratings = soup.select("span._2_R_DZ span span:first-of-type")
    details = pd.DataFrame(columns=("Name", "Price", "Ratings"))
    count = 0
    for i, j, k in zip(name, price, ratings):
        details.loc[count] = i.text, j.text, k.text
        count += 1
    details.sort_values(by=['Price'], ascending=True).to_csv("Flipkart.csv", encoding='utf-8-sig', index=False)
    #printcsv = pd.read_csv("../TestCases/Flipkart.csv", encoding='utf-8-sig')
    #print(printcsv)


def Scrap_from_Flipkart_to_csv(urls):
    Scrap_from_Flipkart(urls)
    return True
