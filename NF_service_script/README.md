# Çınar Projesi

## NF lerin servis restart/start/stop betikleri kullanımı

- nf.cfg

- stop-cnr-service.sh 

- start-cnr-service.sh

- restart-cnr-service.sh

- stop-all-cnr-services.sh

- start-all-cnr-services.sh

- restart-all-cnr-services.sh

  ## nf.cfg

  Test ortamında bulunan NF lerin ip adresleri girilir.

  

  ## stop-cnr-service.sh

  Servisleri durdurulmak istenen NF ler için kullanılır.

  Örnek:

  ```bash
  ./stop-cnr-service.sh pcf nrf udm
  ```

  

  ## start-cnr-service.sh

  Servisleri başlatılmak istenen NF ler için  kullanılır.

  Örnek:

  ```bash
  ./start-cnr-service.sh pcf nrf udm udr 
  ```

  

  ## restart-cnr-service.sh

  Servisleri tekrar başlatılmak istenen NF ler için kullanılır.

  Örnek:

  ```bash
  ./restart-cnr-service.sh pcf nrf udm
  ```

   

##     stop-all-cnr-services.sh    

​        Bütün NF lerin servislerini durdurmak için kullanılır.

​        Örnek:

```bash
  ./stop-all-cnr-services.sh 
```

​    

##     start-all-cnr-services.sh

​        Bütün NF lerin servislerini başlatmak için kullanılır.

​       Örnek:

```bash
  ./start-all-cnr-services.sh
```

​       

##     restart-all-cnr-services.sh

​       Bütün NF lerin servislerini yeniden başlatmak için kullanılır.

​       Örnek:

```bash
  ./restart-all-cnr-services.sh
```


