*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://www.ebay.com/itm/14pcs-set-Wedding-Birthday-Balloons-Latex-Foil-Ballons-Kids-Boy-Girl-Baby-Party/372654409119?_trkparms=ispr%3D1&hash=item56c3ef059f:m:mpgWb1gTsvvuMOzaBmCI0Dg&enc=AQAEAAACQBPxNw%2BVj6nta7CKEs3N0qWGXR2UvwyJYHD6hQECFVkzePXhEPqWQQc4QSnaQKNu6Vlj6VQKfs3Sbjk%2FVIhpYyDeAVsZ5tparD08OduX8QW8it6WX%2BORXczs5kjltnJhqn%2FJlRbe1PBiJzACtKwAyk%2BAtqRn97UD8NJISybhlXE6e0yO0PpQZS4jKcyBBzfaedAdp3%2Fn248OW48HyqE18x%2BwledjM1gQz6%2FRO0ty8vNS1fn%2B%2F78X0kc14GKG5SAoOeucTuEPvHFaU9iOe5UTzHDODsrUMG%2FEjZV9bqbfa7DkfdoGEaGNOBXeevZrg8qzEDnSSqt8SY337ikrQlv4bgHNVcKhifxFjLmbW8nb7XPt3iJwqZ6O7YPeFflKJBvpST%2F9FW5pr7Iey8zwYQqAiVzR8EjezMv2R5AiwJvrouEkauW95cyU7zr7u5IumFOEGh%2BH4YK7EVm3AYOhkX5OZJOf4m%2BsK8UOFqhOHlJSea6Feam0hvdaAGvXwS79UenhlK1FnDe8WINBwD7aLIJ7Aw4K93znzu4PTnAiDaB%2ByaqdgC9K6joVOLkEFFTvKL%2F77V71AuHuFEI6jSnv1gzUBmVRvgcMne%2BC7GA0%2BboVoHK1LFRIzQQOw7gb2tSpSdVwTMSm1fARAUeBriFewDD4o8Zw27fqgzD2KKfB8mX6KDm%2FnmP6hsHceypPKcK%2BTLf%2B8xKs6vpFNqZSJHPkIyqAJ%2BDUZHCqQ%2B3gGm0da5N5h17%2BGcbDzu71ePyR%2FM9z1cmWKA%3D%3D&checksum=372654409119bab16b2e95cb4eaf8a18e29cc727f59f&enc=AQAEAAACQBPxNw%2BVj6nta7CKEs3N0qWGXR2UvwyJYHD6hQECFVkzePXhEPqWQQc4QSnaQKNu6Vlj6VQKfs3Sbjk%2FVIhpYyDeAVsZ5tparD08OduX8QW8it6WX%2BORXczs5kjltnJhqn%2FJlRbe1PBiJzACtKwAyk%2BAtqRn97UD8NJISybhlXE6e0yO0PpQZS4jKcyBBzfaedAdp3%2Fn248OW48HyqE18x%2BwledjM1gQz6%2FRO0ty8vNS1fn%2B%2F78X0kc14GKG5SAoOeucTuEPvHFaU9iOe5UTzHDODsrUMG%2FEjZV9bqbfa7DkfdoGEaGNOBXeevZrg8qzEDnSSqt8SY337ikrQlv4bgHNVcKhifxFjLmbW8nb7XPt3iJwqZ6O7YPeFflKJBvpST%2F9FW5pr7Iey8zwYQqAiVzR8EjezMv2R5AiwJvrouEkauW95cyU7zr7u5IumFOEGh%2BH4YK7EVm3AYOhkX5OZJOf4m%2BsK8UOFqhOHlJSea6Feam0hvdaAGvXwS79UenhlK1FnDe8WINBwD7aLIJ7Aw4K93znzu4PTnAiDaB%2ByaqdgC9K6joVOLkEFFTvKL%2F77V71AuHuFEI6jSnv1gzUBmVRvgcMne%2BC7GA0%2BboVoHK1LFRIzQQOw7gb2tSpSdVwTMSm1fARAUeBriFewDD4o8Zw27fqgzD2KKfB8mX6KDm%2FnmP6hsHceypPKcK%2BTLf%2B8xKs6vpFNqZSJHPkIyqAJ%2BDUZHCqQ%2B3gGm0da5N5h17%2BGcbDzu71ePyR%2FM9z1cmWKA%3D%3D&checksum=372654409119bab16b2e95cb4eaf8a18e29cc727f59f

*** Test Cases ***
dropdown n Listbox
    open browser    ${url}     ${browser}
    maximize browser window
    set selenium speed    2seconds


    select from list by label    msku-sel-1    Rose Gold
    sleep    3seconds
    select from list by index    msku-sel-1    3

