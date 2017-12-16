CarrierWave.configure do |config|
  config.storage             = :qiniu
  config.qiniu_access_key    = ENV["iDMZ1ndGSH9_DFemEjmGLmo-jKSJzXqeKQOEkjSv"]
  config.qiniu_secret_key    = ENV["jTypK5yuc3P2sL-g-02BoWEzQscBsR_8LqlPgkrz"]
  config.qiniu_bucket        = ENV["goodjob"]
  config.qiniu_bucket_domain = ENV["p11nkypcn.bkt.clouddn.com"]
  config.qiniu_block_size    = 4*1024*1024
  config.qiniu_protocol      = "http"
  config.qiniu_up_host       = "http://up.qiniug.com"  #选择不同的区域时，"up.qiniug.com" 不同
end
