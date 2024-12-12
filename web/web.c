#include <curl/curl.h>

int main(void) {
    CURL *curl;
    CURLcode res;
    char *url = "https://www.sman2temanggung.sch.id/berita/detail/154430/hastria-pramudyati-kusuma-lolos-seleksi-penerimaan-beasiswa-indonesia-maju-program-persiapan-s1-luar-negeri-angkatan-ke-3/#:~:text=Hastria%20adalah%20siswa%20yang%20berprestasi,bidang%20akademik%20maupun%20non%20akademik";

    curl_global_init(CURL_GLOBAL_DEFAULT);
    curl = curl_easy_init();
    if (curl) {
        curl_easy_setopt(curl, CURLOPT_URL, url);

        // Perform the request 1000 times
        for (int i = 0; i < 3000; i++) {
            res = curl_easy_perform(curl);
            // No output if there is an error
        }

        // Always cleanup
        curl_easy_cleanup(curl);
    }
    curl_global_cleanup();

    // No output at completion
    return 0;
}
