.class public Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNative;
.super Ljava/lang/Object;
.source "BraceletNative.java"


# static fields
.field public static final MODE_PRIVATE:I = 0x0

.field public static _instance:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNative; = null

.field public static isLoad:Z = false

.field private static final mLibFinalName:Ljava/lang/String;

.field private static final mLibName:Ljava/lang/String;

.field private static final mVersion:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 23
    invoke-static {}, Lcom/alipay/security/mobile/util/AlipayWalletUtil;->isOnline()Z

    .line 24
    const-string/jumbo v0, "alipay_iot_auth"

    .line 35
    sput-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNative;->mLibName:Ljava/lang/String;

    sput-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNative;->mLibFinalName:Ljava/lang/String;

    .line 38
    sput-boolean v2, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNative;->isLoad:Z

    .line 46
    :try_start_0
    sget-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNative;->mLibFinalName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNative;->isLoad:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    const-string/jumbo v1, "load so error, "

    invoke-static {v1, v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    sput-boolean v2, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNative;->isLoad:Z

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNative;
    .locals 2

    .prologue
    .line 64
    const-class v1, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNative;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNative;->_instance:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNative;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNative;

    invoke-direct {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNative;-><init>()V

    .line 66
    sput-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNative;->_instance:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNative;

    invoke-direct {v0, p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNative;->loadSo(Landroid/content/Context;)V

    .line 68
    :cond_0
    sget-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNative;->_instance:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNative;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private loadSo(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 55
    sget-boolean v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNative;->isLoad:Z

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/SoLoaderEx;

    invoke-direct {v0, p1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/SoLoaderEx;-><init>(Landroid/content/Context;)V

    .line 57
    sget-object v1, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNative;->mLibFinalName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/SoLoaderEx;->loadSo(Ljava/lang/String;)Z

    .line 59
    :cond_0
    return-void
.end method


# virtual methods
.method public native delete(Ljava/lang/Object;Ljava/lang/String;I)I
.end method

.method public native encrypt(Ljava/lang/Object;[B)[B
.end method

.method public native encryptAndSign(Ljava/lang/Object;[B)[B
.end method

.method public native encryptAndSignRds(Ljava/lang/Object;[B)[B
.end method

.method public native getErrorCode()Ljava/lang/String;
.end method

.method public native getVersion()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native init(Ljava/lang/Object;)I
.end method

.method public native invokeCmd(Landroid/content/Context;[B)[B
.end method

.method public native load(Ljava/lang/Object;Ljava/lang/String;I)[B
.end method

.method public native store(Ljava/lang/Object;Ljava/lang/String;[BI)I
.end method
