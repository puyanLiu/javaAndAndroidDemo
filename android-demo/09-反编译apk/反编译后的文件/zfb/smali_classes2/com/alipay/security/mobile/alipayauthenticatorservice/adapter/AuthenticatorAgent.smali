.class public Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;
.super Ljava/lang/Object;
.source "AuthenticatorAgent.java"


# static fields
.field private static mAuthenticatorAgent:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;


# instance fields
.field private mAuthenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

.field private mAuthenticatorType:I

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;->mContext:Landroid/content/Context;

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;->mAuthenticatorType:I

    .line 34
    iput-object p1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;->mAuthenticatorAgent:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;

    invoke-direct {v0, p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;->mAuthenticatorAgent:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;

    .line 48
    :cond_0
    sget-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;->mAuthenticatorAgent:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;

    return-object v0
.end method

.method private handleBraceletCommand(Landroid/os/Bundle;)I
    .locals 5

    .prologue
    const/16 v1, 0x64

    const/16 v0, 0x65

    .line 99
    iget-object v2, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    :try_start_0
    const-string/jumbo v2, "KEY_OPERATIONT_TYPE"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 105
    new-instance v3, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;

    invoke-direct {v3}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;-><init>()V

    .line 106
    new-instance v3, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNativeAdapter;

    iget-object v4, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNativeAdapter;-><init>(Landroid/content/Context;)V

    .line 108
    packed-switch v2, :pswitch_data_0

    .line 138
    :goto_1
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    move v0, v1

    .line 143
    goto :goto_0

    .line 110
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    .line 111
    invoke-virtual {v3}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNativeAdapter;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-static {v2}, Lcom/alipay/security/mobile/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 114
    const-string/jumbo v3, "DEVICEID"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 115
    const-string/jumbo v2, "KEY_RESULT"

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 148
    :catch_0
    move-exception v1

    goto :goto_0

    .line 118
    :cond_2
    const-string/jumbo v2, "KEY_RESULT"

    const/16 v3, 0x65

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 124
    :pswitch_2
    const-string/jumbo v2, "KEY_USERID"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    .line 126
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 127
    invoke-virtual {v3, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNativeAdapter;->getUserStatus([B)Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;

    move-result-object v2

    .line 129
    invoke-virtual {v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->getStatus()I

    move-result v3

    if-nez v3, :cond_3

    .line 130
    const-string/jumbo v3, "KEY_RESULT"

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 132
    const-string/jumbo v3, "KEY_USERSTATUS"

    invoke-virtual {v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->getStatus()I

    move-result v2

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 134
    :cond_3
    const-string/jumbo v2, "KEY_RESULT"

    const/16 v3, 0x65

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 136
    const-string/jumbo v2, "KEY_USERSTATUS"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 108
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getAuthenticatorCallback()Lcom/alipay/security/mobile/auth/AuthenticatorCallback;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;->mAuthenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    return-object v0
.end method

.method public processCommand(Landroid/os/Bundle;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 58
    iget-object v1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v0

    .line 63
    :cond_1
    const-string/jumbo v1, "KEY_AUTHENTICATOR_TYPE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 67
    sget v1, Lcom/alipay/security/mobile/auth/Constants;->TYPE_BRACELET:I

    if-ne v0, v1, :cond_2

    .line 68
    invoke-direct {p0, p1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;->handleBraceletCommand(Landroid/os/Bundle;)I

    move-result v0

    goto :goto_0

    .line 70
    :cond_2
    const/16 v0, 0x65

    goto :goto_0
.end method

.method public processCommmandAsync(Landroid/os/Bundle;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 2

    .prologue
    .line 83
    const-string/jumbo v0, "KEY_AUTHENTICATOR_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 87
    sget v1, Lcom/alipay/security/mobile/auth/Constants;->TYPE_BRACELET:I

    if-ne v0, v1, :cond_0

    .line 88
    iput-object p2, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;->mAuthenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    .line 89
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAdapter;->getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAdapter;

    move-result-object v0

    .line 90
    invoke-virtual {v0, p1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAdapter;->handleAsyncMessage(Landroid/os/Bundle;)V

    .line 93
    :cond_0
    return-void
.end method
