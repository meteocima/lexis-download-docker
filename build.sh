apt-get update                                                                           
apt-get install -y libnetcdf-dev git build-essential                                     
mkdir /root/.dewetra2wrf                                                                 
tar -C /usr/local -xzf /tmp/go1.16.4.linux-amd64.tar.gz                                  
gunzip /tmp/orog.nc.gz                                                                   
mv /tmp/orog.nc /root/.dewetra2wrf                                                       
rm /tmp/go1.16.4.linux-amd64.tar.gz                                                      
git clone https://github.com/cima-lexis/lexisdn lexisdn-src                              
cd /root/lexisdn-src                                                                     
export PATH=$PATH:/usr/local/go/bin                                                      
go build -o /root/lexisdn ./cli                                                          
rm -rf /usr/local/go/ /root/lexisdn-src                                                  
apt-get remove -y git wget build-essential