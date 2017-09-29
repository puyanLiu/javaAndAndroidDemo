.class public Lcom/alipay/android/phone/mobilesdk/storage/database/TaobaoOrmLiteEncryptionAgent;
.super Ljava/lang/Object;
.source "TaobaoOrmLiteEncryptionAgent.java"

# interfaces
.implements Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionAgent;


# static fields
.field private static contextWrapper:Landroid/content/ContextWrapper;

.field private static sInstance:Lcom/alipay/android/phone/mobilesdk/storage/database/TaobaoOrmLiteEncryptionAgent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    sput-object v0, Lcom/alipay/android/phone/mobilesdk/storage/database/TaobaoOrmLiteEncryptionAgent;->sInstance:Lcom/alipay/android/phone/mobilesdk/storage/database/TaobaoOrmLiteEncryptionAgent;

    .line 17
    sput-object v0, Lcom/alipay/android/phone/mobilesdk/storage/database/TaobaoOrmLiteEncryptionAgent;->contextWrapper:Landroid/content/ContextWrapper;

    .line 14
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-nez p1, :cond_0

    .line 28
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "TaobaoOrmLiteEncryptionAgent init paramContext cannnot be null!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    new-instance v0, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/storage/database/TaobaoOrmLiteEncryptionAgent;->contextWrapper:Landroid/content/ContextWrapper;

    .line 30
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilesdk/storage/database/TaobaoOrmLiteEncryptionAgent;
    .locals 2

    .prologue
    .line 20
    const-class v1, Lcom/alipay/android/phone/mobilesdk/storage/database/TaobaoOrmLiteEncryptionAgent;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/storage/database/TaobaoOrmLiteEncryptionAgent;->sInstance:Lcom/alipay/android/phone/mobilesdk/storage/database/TaobaoOrmLiteEncryptionAgent;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/storage/database/TaobaoOrmLiteEncryptionAgent;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/storage/database/TaobaoOrmLiteEncryptionAgent;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/storage/database/TaobaoOrmLiteEncryptionAgent;->sInstance:Lcom/alipay/android/phone/mobilesdk/storage/database/TaobaoOrmLiteEncryptionAgent;

    .line 23
    :cond_0
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/storage/database/TaobaoOrmLiteEncryptionAgent;->sInstance:Lcom/alipay/android/phone/mobilesdk/storage/database/TaobaoOrmLiteEncryptionAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 74
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/storage/database/TaobaoOrmLiteEncryptionAgent;->contextWrapper:Landroid/content/ContextWrapper;

    invoke-static {v0, p1}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/TaobaoSecurityEncryptor;->decrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    new-instance v0, Ljava/sql/SQLException;

    const-string/jumbo v1, "OrmLite decrypt String fail"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decrypt([B)[B
    .locals 2

    .prologue
    .line 46
    if-nez p1, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 50
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/storage/database/TaobaoOrmLiteEncryptionAgent;->contextWrapper:Landroid/content/ContextWrapper;

    invoke-static {v0, p1}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/TaobaoSecurityEncryptor;->decrypt(Landroid/content/ContextWrapper;[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    new-instance v0, Ljava/sql/SQLException;

    const-string/jumbo v1, "OrmLite decrypt byte[] fail"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 62
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/storage/database/TaobaoOrmLiteEncryptionAgent;->contextWrapper:Landroid/content/ContextWrapper;

    invoke-static {v0, p1}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/TaobaoSecurityEncryptor;->encrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    new-instance v0, Ljava/sql/SQLException;

    const-string/jumbo v1, "OrmLite encrypt String fail"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encrypt([B)[B
    .locals 2

    .prologue
    .line 34
    if-nez p1, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/storage/database/TaobaoOrmLiteEncryptionAgent;->contextWrapper:Landroid/content/ContextWrapper;

    invoke-static {v0, p1}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/TaobaoSecurityEncryptor;->encrypt(Landroid/content/ContextWrapper;[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    new-instance v0, Ljava/sql/SQLException;

    const-string/jumbo v1, "OrmLite encrypt byte[] fail"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
