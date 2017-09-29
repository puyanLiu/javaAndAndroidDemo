.class public Lcom/alipay/mobile/common/amnet/biz/inner/AmnetStorageListener;
.super Ljava/lang/Object;
.source "AmnetStorageListener.java"

# interfaces
.implements Lcom/alipay/mobile/common/transportext/amnet/Storage;


# static fields
.field private static AMNET_STORAGE_MANAGER:Lcom/alipay/mobile/common/amnet/biz/inner/AmnetStorageListener; = null

.field public static final SHARED_FILE_NAME:Ljava/lang/String; = "amnetStorage"

.field public static final TAG:Ljava/lang/String; = "AmnetStorageManager"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static final getInstance()Lcom/alipay/mobile/common/amnet/biz/inner/AmnetStorageListener;
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetStorageListener;->AMNET_STORAGE_MANAGER:Lcom/alipay/mobile/common/amnet/biz/inner/AmnetStorageListener;

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetStorageListener;->AMNET_STORAGE_MANAGER:Lcom/alipay/mobile/common/amnet/biz/inner/AmnetStorageListener;

    .line 39
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const-class v1, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetStorageListener;

    monitor-enter v1

    .line 34
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetStorageListener;->AMNET_STORAGE_MANAGER:Lcom/alipay/mobile/common/amnet/biz/inner/AmnetStorageListener;

    if-eqz v0, :cond_1

    .line 35
    sget-object v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetStorageListener;->AMNET_STORAGE_MANAGER:Lcom/alipay/mobile/common/amnet/biz/inner/AmnetStorageListener;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 37
    :cond_1
    :try_start_1
    new-instance v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetStorageListener;

    invoke-direct {v0}, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetStorageListener;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetStorageListener;->AMNET_STORAGE_MANAGER:Lcom/alipay/mobile/common/amnet/biz/inner/AmnetStorageListener;

    .line 38
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    sget-object v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetStorageListener;->AMNET_STORAGE_MANAGER:Lcom/alipay/mobile/common/amnet/biz/inner/AmnetStorageListener;

    goto :goto_0
.end method


# virtual methods
.method public getCommon(Ljava/lang/String;)[B
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 49
    invoke-static {}, Lcom/alipay/mobile/common/amnet/api/AmnetEnvHelper;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 50
    const-string/jumbo v2, "amnetStorage"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 51
    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    goto :goto_0
.end method

.method public getCommonString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetStorageListener;->getCommon(Ljava/lang/String;)[B

    move-result-object v1

    .line 112
    if-eqz v1, :cond_0

    .line 113
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 115
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getSecure(Ljava/lang/String;)[B
    .locals 4

    .prologue
    .line 61
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetStorageListener;->getCommon(Ljava/lang/String;)[B

    move-result-object v1

    .line 62
    invoke-static {}, Lcom/alipay/mobile/common/amnet/api/AmnetEnvHelper;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/TaobaoSecurityEncryptor;->decrypt(Landroid/content/ContextWrapper;[B)[B

    move-result-object v0

    .line 64
    const-string/jumbo v2, "AmnetStorageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "get Secure. key= "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ".result="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    :goto_0
    invoke-static {v2, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :goto_1
    return-object v0

    .line 64
    :cond_0
    const-string/jumbo v1, "is null"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    const-string/jumbo v1, "AmnetStorageManager"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public putCommon(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const-string/jumbo v0, "AmnetStorageManager"

    const-string/jumbo v1, "putCommon key is null!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    const-string/jumbo v0, "AmnetStorageManager"

    const-string/jumbo v1, "putCommon value is null!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetStorageListener;->putCommon(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public putCommon(Ljava/lang/String;[B)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 75
    const-string/jumbo v0, "AmnetStorageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "put Common.key= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/amnet/api/AmnetEnvHelper;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 78
    const-string/jumbo v1, "amnetStorage"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 79
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 80
    const/4 v1, 0x2

    invoke-static {p2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 81
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    const-string/jumbo v1, "AmnetStorageManager"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public putSecure(Ljava/lang/String;[B)V
    .locals 3

    .prologue
    .line 89
    const-string/jumbo v0, "AmnetStorageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "put Secure.key= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".val="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/amnet/api/AmnetEnvHelper;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-static {v0, p2}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/TaobaoSecurityEncryptor;->encrypt(Landroid/content/ContextWrapper;[B)[B

    move-result-object v0

    .line 92
    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetStorageListener;->putCommon(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    const-string/jumbo v1, "AmnetStorageManager"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
