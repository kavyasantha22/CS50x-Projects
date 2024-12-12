import requests

# URL you want to access
url = 'https://www.sman2temanggung.sch.id/berita/detail/154430/hastria-pramudyati-kusuma-lolos-seleksi-penerimaan-beasiswa-indonesia-maju-program-persiapan-s1-luar-negeri-angkatan-ke-3/#:~:text=Hastria%20adalah%20siswa%20yang%20berprestasi,bidang%20akademik%20maupun%20non%20akademik'

# Send a GET request to the URL
for i in range(1000):
    response = requests.get(url)

# Print the status code of the response
print(f"Status Code: {response.status_code}")

# Print the content of the response (HTML of the page)
print("done")
