CarrierWave.configure do |config|
  config.storage             = :qiniu
  config.qiniu_access_key    = "iDMZ1ndGSH9_DFemEjmGLmo-jKSJzXqeKQOEkjSv"
  config.qiniu_secret_key    = "jTypK5yuc3P2sL-g-02BoWEzQscBsR_8LqlPgkrz"
  config.qiniu_bucket        = "aliclound"
  config.qiniu_bucket_domain = "p2sh8lo60.bkt.clouddn.com"
  config.qiniu_block_size    = 4*1024*1024
  config.qiniu_protocol      = "http"
  config.qiniu_up_host       = "http://up.qiniug.com"  #选择不同的区域时，"up.qiniug.com" 不同
end
