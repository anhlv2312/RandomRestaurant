import json
import codecs
 
data = json.load(open('menu.json'))

price = ""
name = ""
for tag in data:
	if tag['tag'] == 'h2':
		category = tag.get('html')
	if tag['tag'] == 'ul':
		li = tag.get('children')
		for l in li:
			for m in l.get('children'):

				if m.get('class') == 'menu-content':
					description = None
					name = m.get('children')[0].get('children')[0].get('html')

					try:
						description = m.get('children')[1].get('html')
					except:
						description = None
					if description == None:
						description = ""
					if name[0].isdigit():
						print ('DISH: ' +  name.split('.')[0] + ' |' +  name.split('.')[1] + ' | ' + category + ' | ' + description)

				if not name[0].isdigit():
					continue
									
				if (m.get('class') == 'menu-price'):
					price = m.get('html')
					if (price == None):
						price = '---------------'
						n = m.get('children')[0]
						for n1 in n.get('children'):
							varnames = n1.get('children')[0].get('html')
							varprice = n1.get('children')[1].get('html')

							varname_a = varnames.split('/')
							for v in varname_a:
								print ('VARI: ' + name.split('.')[0] + ' | ' + v.strip() + ' | ' + varprice)
					
					else:
						print ('VARI: '  + name.split('.')[0] + ' | Default | ' + price)

							
							#print(n1['tag'])
							#if (n1.get('children')[0].get('html') != None) :
							#	print (n1.get('children')[0].get('html') + n1.get('children')[1].get('html'))


			
				#print (category + ' ' + name + ' --- ' + description + ' ' + price)
				
	
