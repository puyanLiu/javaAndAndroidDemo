.class public Lcom/alipay/android/phone/mobilesdk/storage/encryption/TaobaoSecurityEncryptor;
.super Ljava/lang/Object;
.source "TaobaoSecurityEncryptor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;-><init>(Landroid/content/ContextWrapper;)V

    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/TaobaoSecurityEncryptor;->getDataContext(Landroid/content/ContextWrapper;)Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->Get(Ljava/lang/String;Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decrypt(Landroid/content/ContextWrapper;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/SsoLoginUtils;->init(Landroid/content/Context;)V

    .line 91
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;-><init>(Landroid/content/ContextWrapper;)V

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->DecryptData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decrypt(Landroid/content/ContextWrapper;[B)[B
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;-><init>(Landroid/content/ContextWrapper;)V

    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/TaobaoSecurityEncryptor;->getDataContext(Landroid/content/ContextWrapper;)Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->Get([BLcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;)[B

    move-result-object v0

    return-object v0
.end method

.method public static decrypt(Landroid/content/ContextWrapper;[BLjava/lang/String;)[B
    .locals 2

    .prologue
    .line 108
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/SsoLoginUtils;->init(Landroid/content/Context;)V

    .line 109
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;-><init>(Landroid/content/ContextWrapper;)V

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->DecryptData([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static dynamicDecrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/SsoLoginUtils;->init(Landroid/content/Context;)V

    .line 56
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;-><init>(Landroid/content/ContextWrapper;)V

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->Get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dynamicDecrypt(Landroid/content/ContextWrapper;[B)[B
    .locals 1

    .prologue
    .line 71
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/SsoLoginUtils;->init(Landroid/content/Context;)V

    .line 72
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;-><init>(Landroid/content/ContextWrapper;)V

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->Get([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static dynamicEncrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/SsoLoginUtils;->init(Landroid/content/Context;)V

    .line 48
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;-><init>(Landroid/content/ContextWrapper;)V

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->Put(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dynamicEncrypt(Landroid/content/ContextWrapper;[B)[B
    .locals 1

    .prologue
    .line 63
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/SsoLoginUtils;->init(Landroid/content/Context;)V

    .line 64
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;-><init>(Landroid/content/ContextWrapper;)V

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->Put([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static encrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 10
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;-><init>(Landroid/content/ContextWrapper;)V

    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/TaobaoSecurityEncryptor;->getDataContext(Landroid/content/ContextWrapper;)Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->Put(Ljava/lang/String;Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encrypt(Landroid/content/ContextWrapper;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/SsoLoginUtils;->init(Landroid/content/Context;)V

    .line 82
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;-><init>(Landroid/content/ContextWrapper;)V

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->EncryptData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encrypt(Landroid/content/ContextWrapper;[B)[B
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;-><init>(Landroid/content/ContextWrapper;)V

    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/TaobaoSecurityEncryptor;->getDataContext(Landroid/content/ContextWrapper;)Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->Put([BLcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encrypt(Landroid/content/ContextWrapper;[BLjava/lang/String;)[B
    .locals 2

    .prologue
    .line 99
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/SsoLoginUtils;->init(Landroid/content/Context;)V

    .line 100
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;-><init>(Landroid/content/ContextWrapper;)V

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->EncryptData([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static getDataContext(Landroid/content/ContextWrapper;)Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;
    .locals 2

    .prologue
    .line 35
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/SsoLoginUtils;->init(Landroid/content/Context;)V

    .line 36
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;-><init>()V

    .line 39
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;->extData:[B

    .line 40
    return-object v0
.end method
