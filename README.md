fork之后做的修改：
增加nullcheck
除原先的pkcs7外增加zero填充
密钥位数不足时自动做zero填充


# flutter_crypto
Encryption algorithm library implemented by pure dart

纯dart 软算法实现 无调用Native代码

当前支持DES   ECB CBC模式

相比Flutter_des 

1000次调用耗时  flutter_des 2000+ms    本库   700+ms

100次调用耗时   flutter_des 1600+ms    本库   300ms

10次调用耗时    flutter_des 1400+ms    本库   50ms
