.class public Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;
.super Ljava/lang/Object;
.source "UtilWX.java"


# instance fields
.field private context:Landroid/content/ContextWrapper;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 16
    return-void
.end method


# virtual methods
.method public DecryptData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 163
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p2, :cond_0

    .line 164
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->context:Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_0

    .line 172
    const/16 v1, 0x10

    .line 173
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string/jumbo v3, ""

    .line 171
    invoke-interface {v0, v1, p2, v2, v3}, Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;->staticBinarySafeDecrypt(ILjava/lang/String;[BLjava/lang/String;)[B

    move-result-object v1

    .line 175
    if-eqz v1, :cond_0

    .line 176
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public DecryptData([B[B)[B
    .locals 4

    .prologue
    .line 208
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    if-eqz p2, :cond_0

    .line 209
    array-length v0, p2

    if-lez v0, :cond_0

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->context:Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_0

    .line 217
    const/16 v1, 0x10

    .line 218
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v3, ""

    .line 216
    invoke-interface {v0, v1, v2, p1, v3}, Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;->staticBinarySafeDecrypt(ILjava/lang/String;[BLjava/lang/String;)[B
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 224
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public EncryptData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 139
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p2, :cond_0

    .line 140
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->context:Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_0

    .line 148
    const/16 v1, 0x10

    .line 149
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string/jumbo v3, ""

    .line 147
    invoke-interface {v0, v1, p2, v2, v3}, Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;->staticBinarySafeEncrypt(ILjava/lang/String;[BLjava/lang/String;)[B

    move-result-object v1

    .line 151
    if-eqz v1, :cond_0

    .line 152
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public EncryptData([B[B)[B
    .locals 4

    .prologue
    .line 187
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    if-eqz p2, :cond_0

    .line 188
    array-length v0, p2

    if-lez v0, :cond_0

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->context:Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_0

    .line 196
    const/16 v1, 0x10

    .line 197
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v3, ""

    .line 195
    invoke-interface {v0, v1, v2, p1, v3}, Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;->staticBinarySafeEncrypt(ILjava/lang/String;[BLjava/lang/String;)[B
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 203
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->context:Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataEncryptComp()Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;

    move-result-object v0

    .line 250
    if-eqz v0, :cond_0

    .line 251
    invoke-interface {v0, p1}, Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;->dynamicDecrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 256
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Get(Ljava/lang/String;Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 50
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    if-eqz p2, :cond_2

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->context:Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataStoreComp()Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;

    move-result-object v1

    .line 54
    if-eqz v1, :cond_2

    .line 55
    iget-object v0, p2, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;->extData:[B

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p2, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;->extData:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 58
    :goto_0
    if-eqz v0, :cond_2

    .line 60
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->context:Landroid/content/ContextWrapper;

    invoke-static {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v1

    .line 62
    if-eqz v1, :cond_2

    .line 64
    const/16 v2, 0x10

    .line 65
    const-string/jumbo v3, ""

    .line 63
    invoke-interface {v1, v2, v0, p1, v3}, Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;->staticSafeDecrypt(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    :goto_1
    return-object v0

    .line 56
    :cond_0
    iget v0, p2, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;->index:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    :goto_2
    const-string/jumbo v2, ""

    invoke-interface {v1, v0, v2}, Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v0, p2, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;->index:I
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 74
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public Get([B)[B
    .locals 2

    .prologue
    .line 283
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->context:Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataEncryptComp()Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;

    move-result-object v0

    .line 288
    if-eqz v0, :cond_0

    .line 289
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1}, Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;->dynamicDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 292
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 298
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Get([BLcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;)[B
    .locals 4

    .prologue
    .line 110
    if-eqz p1, :cond_2

    array-length v0, p1

    if-lez v0, :cond_2

    if-eqz p2, :cond_2

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->context:Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataStoreComp()Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;

    move-result-object v1

    .line 114
    if-eqz v1, :cond_2

    .line 115
    iget-object v0, p2, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;->extData:[B

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p2, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;->extData:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 118
    :goto_0
    if-eqz v0, :cond_2

    .line 120
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->context:Landroid/content/ContextWrapper;

    invoke-static {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v1

    .line 122
    if-eqz v1, :cond_2

    .line 124
    const/16 v2, 0x10

    .line 125
    const-string/jumbo v3, ""

    .line 123
    invoke-interface {v1, v2, v0, p1, v3}, Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;->staticBinarySafeDecrypt(ILjava/lang/String;[BLjava/lang/String;)[B

    move-result-object v0

    .line 134
    :goto_1
    return-object v0

    .line 116
    :cond_0
    iget v0, p2, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;->index:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    :goto_2
    const-string/jumbo v2, ""

    invoke-interface {v1, v0, v2}, Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v0, p2, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;->index:I
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 134
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public Put(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->context:Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataEncryptComp()Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_0

    .line 235
    invoke-interface {v0, p1}, Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;->dynamicEncrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 240
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Put(Ljava/lang/String;Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 20
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    if-eqz p2, :cond_2

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->context:Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataStoreComp()Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;

    move-result-object v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    iget-object v0, p2, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;->extData:[B

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p2, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;->extData:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 28
    :goto_0
    if-eqz v0, :cond_2

    .line 30
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->context:Landroid/content/ContextWrapper;

    invoke-static {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v1

    .line 32
    if-eqz v1, :cond_2

    .line 34
    const/16 v2, 0x10

    .line 35
    const-string/jumbo v3, ""

    .line 33
    invoke-interface {v1, v2, v0, p1, v3}, Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;->staticSafeEncrypt(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    :goto_1
    return-object v0

    .line 26
    :cond_0
    iget v0, p2, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;->index:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    :goto_2
    const-string/jumbo v2, ""

    invoke-interface {v1, v0, v2}, Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v0, p2, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;->index:I
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 45
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public Put([B)[B
    .locals 2

    .prologue
    .line 262
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->context:Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataEncryptComp()Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;

    move-result-object v0

    .line 267
    if-eqz v0, :cond_0

    .line 268
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1}, Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;->dynamicEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 271
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 277
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Put([BLcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;)[B
    .locals 4

    .prologue
    .line 80
    if-eqz p1, :cond_2

    array-length v0, p1

    if-lez v0, :cond_2

    if-eqz p2, :cond_2

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->context:Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataStoreComp()Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;

    move-result-object v1

    .line 84
    if-eqz v1, :cond_2

    .line 85
    iget-object v0, p2, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;->extData:[B

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p2, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;->extData:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 88
    :goto_0
    if-eqz v0, :cond_2

    .line 90
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->context:Landroid/content/ContextWrapper;

    invoke-static {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v1

    .line 92
    if-eqz v1, :cond_2

    .line 94
    const/16 v2, 0x10

    .line 95
    const-string/jumbo v3, ""

    .line 93
    invoke-interface {v1, v2, v0, p1, v3}, Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;->staticBinarySafeEncrypt(ILjava/lang/String;[BLjava/lang/String;)[B

    move-result-object v0

    .line 104
    :goto_1
    return-object v0

    .line 86
    :cond_0
    iget v0, p2, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;->index:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    :goto_2
    const-string/jumbo v2, ""

    invoke-interface {v1, v0, v2}, Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v0, p2, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;->index:I
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 104
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
