.class public Lcom/alipay/security/mobile/bracelet/WalletBraceletAuthenticator;
.super Lcom/alipay/security/mobile/auth/AbstractAuthenticator;
.source "WalletBraceletAuthenticator.java"


# static fields
.field private static final KEY_DEVICEID:Ljava/lang/String; = "profile"

.field private static final SECURITY_PREFERENCE:Ljava/lang/String; = "securitypreference11"

.field private static final TYPE:I


# instance fields
.field private mProtocalType:I

.field private mProtocalVersion:I

.field private mResult:I

.field private mServerUrl:Ljava/lang/String;

.field private mVendor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget v0, Lcom/alipay/security/mobile/auth/Constants;->TYPE_BRACELET:I

    sput v0, Lcom/alipay/security/mobile/bracelet/WalletBraceletAuthenticator;->TYPE:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 35
    invoke-direct {p0}, Lcom/alipay/security/mobile/auth/AbstractAuthenticator;-><init>()V

    .line 26
    const/16 v0, 0x65

    iput v0, p0, Lcom/alipay/security/mobile/bracelet/WalletBraceletAuthenticator;->mResult:I

    .line 29
    iput v1, p0, Lcom/alipay/security/mobile/bracelet/WalletBraceletAuthenticator;->mVendor:I

    .line 30
    iput v1, p0, Lcom/alipay/security/mobile/bracelet/WalletBraceletAuthenticator;->mProtocalType:I

    .line 31
    iput v1, p0, Lcom/alipay/security/mobile/bracelet/WalletBraceletAuthenticator;->mProtocalVersion:I

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/security/mobile/bracelet/WalletBraceletAuthenticator;->mServerUrl:Ljava/lang/String;

    .line 36
    iput p1, p0, Lcom/alipay/security/mobile/bracelet/WalletBraceletAuthenticator;->mVendor:I

    .line 37
    iput p2, p0, Lcom/alipay/security/mobile/bracelet/WalletBraceletAuthenticator;->mProtocalType:I

    .line 38
    iput p3, p0, Lcom/alipay/security/mobile/bracelet/WalletBraceletAuthenticator;->mProtocalVersion:I

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/security/mobile/bracelet/WalletBraceletAuthenticator;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/WalletBraceletAuthenticator;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 147
    return-void
.end method

.method public checkUserStatus(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 109
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 110
    const-string/jumbo v1, "KEY_OPERATIONT_TYPE"

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    const-string/jumbo v1, "KEY_USERID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string/jumbo v1, "KEY_VENDOR_TYPE"

    iget v2, p0, Lcom/alipay/security/mobile/bracelet/WalletBraceletAuthenticator;->mVendor:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 114
    const-string/jumbo v1, "KEY_AUTHENTICATOR_TYPE"

    sget v2, Lcom/alipay/security/mobile/bracelet/WalletBraceletAuthenticator;->TYPE:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    iget-object v1, p0, Lcom/alipay/security/mobile/bracelet/WalletBraceletAuthenticator;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;->getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;->processCommand(Landroid/os/Bundle;)I

    .line 117
    const-string/jumbo v1, "KEY_USERSTATUS"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 118
    if-ne v0, v3, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 123
    :goto_0
    return v0

    .line 121
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method protected doAuthenticate(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 136
    return-void
.end method

.method protected doDeregister(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 142
    return-void
.end method

.method protected doRegister(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 130
    return-void
.end method

.method public getAuthInfo()Lcom/alipay/security/mobile/auth/AuthInfo;
    .locals 7

    .prologue
    .line 191
    new-instance v0, Lcom/alipay/security/mobile/auth/AuthInfo;

    sget v1, Lcom/alipay/security/mobile/bracelet/WalletBraceletAuthenticator;->TYPE:I

    iget v2, p0, Lcom/alipay/security/mobile/bracelet/WalletBraceletAuthenticator;->mVendor:I

    iget v3, p0, Lcom/alipay/security/mobile/bracelet/WalletBraceletAuthenticator;->mProtocalType:I

    iget v4, p0, Lcom/alipay/security/mobile/bracelet/WalletBraceletAuthenticator;->mProtocalVersion:I

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v6, p0, Lcom/alipay/security/mobile/bracelet/WalletBraceletAuthenticator;->mServerUrl:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/alipay/security/mobile/auth/AuthInfo;-><init>(IIIILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/WalletBraceletAuthenticator;->context:Landroid/content/Context;

    const-string/jumbo v2, "securitypreference11"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 162
    const-string/jumbo v0, "profile"

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    if-nez v0, :cond_1

    .line 164
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 165
    const-string/jumbo v3, "KEY_OPERATIONT_TYPE"

    const/16 v4, 0xc

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 167
    const-string/jumbo v3, "KEY_VENDOR_TYPE"

    iget v4, p0, Lcom/alipay/security/mobile/bracelet/WalletBraceletAuthenticator;->mVendor:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 168
    const-string/jumbo v3, "KEY_AUTHENTICATOR_TYPE"

    sget v4, Lcom/alipay/security/mobile/bracelet/WalletBraceletAuthenticator;->TYPE:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 169
    iget-object v3, p0, Lcom/alipay/security/mobile/bracelet/WalletBraceletAuthenticator;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;->getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;->processCommand(Landroid/os/Bundle;)I

    .line 172
    const-string/jumbo v3, "DEVICEID"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move-object v0, v1

    .line 186
    :cond_1
    :goto_0
    return-object v0

    .line 176
    :cond_2
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 177
    const-string/jumbo v3, "profile"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 178
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/security/mobile/bracelet/WalletBraceletAuthenticator;->context:Landroid/content/Context;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    const/16 v0, 0x6f

    .line 62
    :goto_0
    return v0

    .line 49
    :cond_0
    invoke-static {p1}, Lcom/alipay/security/mobile/util/SecurityUtils;->isRoot(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    const/16 v0, 0x7c

    goto :goto_0

    .line 54
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_3

    .line 56
    :cond_2
    const/16 v0, 0x7b

    goto :goto_0

    :catch_0
    move-exception v0

    .line 61
    :cond_3
    const/16 v0, 0x64

    iput v0, p0, Lcom/alipay/security/mobile/bracelet/WalletBraceletAuthenticator;->mResult:I

    .line 62
    iget v0, p0, Lcom/alipay/security/mobile/bracelet/WalletBraceletAuthenticator;->mResult:I

    goto :goto_0
.end method

.method public process(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 97
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 98
    const-string/jumbo v1, "KEY_OPERATIONT_TYPE"

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->getType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 99
    const-string/jumbo v1, "KEY_VENDOR_TYPE"

    iget v2, p0, Lcom/alipay/security/mobile/bracelet/WalletBraceletAuthenticator;->mVendor:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    const-string/jumbo v1, "KEY_AUTHENTICATOR_TYPE"

    sget v2, Lcom/alipay/security/mobile/bracelet/WalletBraceletAuthenticator;->TYPE:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 101
    iget-object v1, p0, Lcom/alipay/security/mobile/bracelet/WalletBraceletAuthenticator;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;->getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;->processCommand(Landroid/os/Bundle;)I

    .line 104
    const-string/jumbo v1, "KEY_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    return-object v0
.end method

.method public process(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 3

    .prologue
    .line 69
    const-string/jumbo v0, "process new wallet path"

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->debug(Ljava/lang/String;)V

    .line 71
    sget v0, Lcom/alipay/security/mobile/bracelet/WalletBraceletAuthenticator;->TYPE:I

    invoke-virtual {p1, v0}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->setAuthenticatorType(I)V

    .line 73
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 74
    const-string/jumbo v1, "KEY_OPERATIONT_TYPE"

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->getType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 75
    const-string/jumbo v1, "KEY_MESSAGE"

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string/jumbo v1, "KEY_VENDOR_TYPE"

    iget v2, p0, Lcom/alipay/security/mobile/bracelet/WalletBraceletAuthenticator;->mVendor:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    const-string/jumbo v1, "KEY_AUTHENTICATOR_TYPE"

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->getAuthenticatorType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 79
    const-string/jumbo v1, "KEY_EXTRA_PARAMS"

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->getExtraParams()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string/jumbo v1, "KEY_VERSION"

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->getVersion()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 82
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/security/mobile/bracelet/WalletBraceletAuthenticator$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/alipay/security/mobile/bracelet/WalletBraceletAuthenticator$1;-><init>(Lcom/alipay/security/mobile/bracelet/WalletBraceletAuthenticator;Landroid/os/Bundle;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 89
    return-void
.end method

.method public release()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 152
    return-void
.end method
