.class public Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;
.super Lcom/alipay/security/mobile/auth/AbstractAuthenticator;
.source "BraceletAuthenticator.java"


# static fields
.field private static final KEY_DEVICEID:Ljava/lang/String; = "profile"

.field private static final SECURITY_PREFERENCE:Ljava/lang/String; = "securitypreference11"

.field private static final TYPE:I


# instance fields
.field private lock:Ljava/lang/Object;

.field protected mMinServiceVersion:I

.field private mPackageName:Ljava/lang/String;

.field private mProtocalType:I

.field private mProtocalVersion:I

.field private mResult:I

.field private mServerUrl:Ljava/lang/String;

.field private mVendor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    sget v0, Lcom/alipay/security/mobile/auth/Constants;->TYPE_BRACELET:I

    sput v0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->TYPE:I

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 44
    invoke-direct {p0}, Lcom/alipay/security/mobile/auth/AbstractAuthenticator;-><init>()V

    .line 30
    const/16 v0, 0x65

    iput v0, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->mResult:I

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->lock:Ljava/lang/Object;

    .line 34
    iput v1, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->mVendor:I

    .line 35
    iput v1, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->mProtocalType:I

    .line 36
    iput v1, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->mProtocalVersion:I

    .line 37
    iput-object v2, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->mPackageName:Ljava/lang/String;

    .line 38
    iput-object v2, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->mServerUrl:Ljava/lang/String;

    .line 40
    const/4 v0, 0x4

    iput v0, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->mMinServiceVersion:I

    .line 45
    iput p1, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->mVendor:I

    .line 46
    iput p2, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->mProtocalType:I

    .line 47
    iput p3, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->mProtocalVersion:I

    .line 48
    iput-object p4, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->mPackageName:Ljava/lang/String;

    .line 49
    iput-object p5, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->mServerUrl:Ljava/lang/String;

    .line 50
    return-void
.end method

.method static synthetic access$002(Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;I)I
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->mResult:I

    return p1
.end method

.method static synthetic access$100(Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;)I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->mVendor:I

    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 186
    return-void
.end method

.method public checkUserStatus(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 146
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 147
    const-string/jumbo v2, "KEY_OPERATIONT_TYPE"

    const/16 v3, 0xe

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 149
    const-string/jumbo v2, "KEY_USERID"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string/jumbo v2, "KEY_VENDOR_TYPE"

    iget v3, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->mVendor:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 151
    const-string/jumbo v2, "KEY_AUTHENTICATOR_TYPE"

    sget v3, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->TYPE:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 152
    invoke-static {}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->Instance()Lcom/alipay/security/mobile/agent/AlipayAuthenticator;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->process(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 153
    if-nez v1, :cond_1

    .line 162
    :cond_0
    :goto_0
    return v0

    .line 156
    :cond_1
    const-string/jumbo v2, "KEY_USERSTATUS"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 157
    if-eq v1, v4, :cond_0

    .line 160
    const/4 v0, 0x2

    goto :goto_0
.end method

.method protected doAuthenticate(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 175
    return-void
.end method

.method protected doDeregister(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 181
    return-void
.end method

.method protected doRegister(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 169
    return-void
.end method

.method public getAuthInfo()Lcom/alipay/security/mobile/auth/AuthInfo;
    .locals 7

    .prologue
    .line 231
    new-instance v0, Lcom/alipay/security/mobile/auth/AuthInfo;

    sget v1, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->TYPE:I

    iget v2, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->mVendor:I

    iget v3, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->mProtocalType:I

    iget v4, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->mProtocalVersion:I

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v6, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->mServerUrl:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/alipay/security/mobile/auth/AuthInfo;-><init>(IIIILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->context:Landroid/content/Context;

    const-string/jumbo v2, "securitypreference11"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 201
    const-string/jumbo v1, "profile"

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 202
    if-nez v1, :cond_2

    .line 203
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 204
    const-string/jumbo v3, "KEY_OPERATIONT_TYPE"

    const/16 v4, 0xc

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 206
    const-string/jumbo v3, "KEY_VENDOR_TYPE"

    iget v4, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->mVendor:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 207
    const-string/jumbo v3, "KEY_AUTHENTICATOR_TYPE"

    sget v4, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->TYPE:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 208
    invoke-static {}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->Instance()Lcom/alipay/security/mobile/agent/AlipayAuthenticator;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->process(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 209
    if-nez v1, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-object v0

    .line 212
    :cond_1
    const-string/jumbo v3, "DEVICEID"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    if-eqz v1, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 216
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 217
    const-string/jumbo v3, "profile"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 218
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 219
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 222
    goto :goto_0

    .line 226
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;Ljava/lang/String;)I
    .locals 6

    .prologue
    const/16 v5, 0x64

    .line 54
    sget-object v1, Lcom/alipay/security/mobile/agent/AuthenticatorLock;->INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 56
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v2, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    const/16 v0, 0x6f

    monitor-exit v1

    .line 107
    :goto_0
    return v0

    .line 60
    :cond_0
    invoke-static {p1}, Lcom/alipay/security/mobile/util/SecurityUtils;->isRoot(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    const/16 v0, 0x7c

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 64
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->mPackageName:Ljava/lang/String;

    sput-object v0, Lcom/alipay/security/mobile/agent/Version;->SERVICE_PACKAGE_NAME:Ljava/lang/String;

    .line 65
    iget v0, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->mMinServiceVersion:I

    sput v0, Lcom/alipay/security/mobile/agent/Version;->agentVersionCode:I

    .line 66
    iput-object p1, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->context:Landroid/content/Context;

    .line 67
    new-instance v0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator$1;

    invoke-direct {v0, p0}, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator$1;-><init>(Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;)V

    .line 77
    invoke-static {}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->Instance()Lcom/alipay/security/mobile/agent/AlipayAuthenticator;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->init(Landroid/content/Context;Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint$InitCallback;)I

    move-result v0

    iput v0, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->mResult:I

    .line 79
    iget-object v2, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :try_start_2
    iget v0, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->mResult:I

    if-ne v0, v5, :cond_2

    .line 82
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->lock:Ljava/lang/Object;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 87
    :cond_2
    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 89
    :try_start_4
    iget v0, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->mResult:I

    const/16 v2, 0x7a

    if-ne v0, v2, :cond_3

    .line 90
    const/16 v0, 0x64

    iput v0, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->mResult:I

    .line 93
    :cond_3
    iget v0, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->mResult:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne v0, v5, :cond_5

    .line 95
    :try_start_5
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v0

    if-nez v0, :cond_5

    .line 97
    :cond_4
    const/16 v0, 0x7b

    :try_start_6
    monitor-exit v1

    goto :goto_0

    .line 87
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_0
    move-exception v0

    .line 102
    :cond_5
    iget v0, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->mResult:I

    if-ne v0, v5, :cond_6

    .line 103
    invoke-static {p1}, Lcom/alipay/security/mobile/agent/Version;->readServiceVersion(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x6

    if-ge v0, v2, :cond_6

    .line 104
    const/16 v0, 0x7f

    iput v0, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->mResult:I

    .line 107
    :cond_6
    iget v0, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->mResult:I

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public process(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 133
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 134
    const-string/jumbo v1, "KEY_OPERATIONT_TYPE"

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->getType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    const-string/jumbo v1, "KEY_VENDOR_TYPE"

    iget v2, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->mVendor:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 136
    const-string/jumbo v1, "KEY_AUTHENTICATOR_TYPE"

    sget v2, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->TYPE:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 137
    invoke-static {}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->Instance()Lcom/alipay/security/mobile/agent/AlipayAuthenticator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->process(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 138
    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x0

    .line 142
    :goto_0
    return-object v0

    .line 141
    :cond_0
    const-string/jumbo v1, "KEY_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public process(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 2

    .prologue
    .line 115
    const-string/jumbo v0, "process old wallet path"

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->debug(Ljava/lang/String;)V

    .line 117
    sget v0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->TYPE:I

    invoke-virtual {p1, v0}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->setAuthenticatorType(I)V

    .line 118
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator$2;-><init>(Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 125
    return-void
.end method

.method public release()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 191
    return-void
.end method
