#!/env/Python3.8.10
# Converts the new mega.nz/file/ link to the old mega.co.nz/#! to be used with mega apis that where never updated.

convert0 = input("Input link: ")
convert1 = convert0.replace('#', '!')
convert2 = convert1.replace('file/', '#!')
convert3 = convert2.replace('https://mega.nz', 'https://mega.co.nz')
print (f"New link:\n{convert3}")
