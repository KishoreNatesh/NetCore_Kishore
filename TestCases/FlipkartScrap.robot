*** Settings ***
Library     ../Resources/FlipkartScrapper.py

#robot -d ../Results FlipkarScrap.robot
*** Test Cases ***
Pass url to scrap from flipkart
    Scrap from Flipkart to csv     https://www.flipkart.com/search?q=iphone&otracker=search&otracker1=search&marketplace=FLIPKART&as-show=on&as=off&as-pos=1&p%5B%5D=facets.price_range.from%3DMin&p%5B%5D=facets.price_range.to%3D40000