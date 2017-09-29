.class public Lcom/alipay/mobile/common/amnet/biz/OutEventNotifyManagerImpl;
.super Ljava/lang/Object;
.source "OutEventNotifyManagerImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/amnet/api/OutEventNotifyManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static final convert2AppEvent(ZII)Lcom/alipay/mobile/common/amnet/api/model/AppEvent;
    .locals 4

    .prologue
    .line 191
    new-instance v1, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;

    invoke-direct {v1}, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;-><init>()V

    .line 192
    const-wide/16 v2, 0x1

    iput-wide v2, v1, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->id:J

    .line 193
    const/4 v0, 0x0

    iput v0, v1, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->status:I

    .line 194
    const-string/jumbo v0, ""

    iput-object v0, v1, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->major:Ljava/lang/String;

    .line 195
    const-string/jumbo v0, ""

    iput-object v0, v1, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->minor:Ljava/lang/String;

    .line 197
    if-nez p0, :cond_1

    .line 198
    const-string/jumbo v0, "none"

    iput-object v0, v1, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->major:Ljava/lang/String;

    :cond_0
    :goto_0
    move-object v0, v1

    .line 240
    :goto_1
    return-object v0

    .line 200
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 214
    const-string/jumbo v0, "unknown"

    iput-object v0, v1, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->major:Ljava/lang/String;

    .line 217
    :goto_2
    if-nez p1, :cond_2

    move-object v0, v1

    .line 218
    goto :goto_1

    .line 202
    :pswitch_0
    const-string/jumbo v0, "wifi"

    iput-object v0, v1, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->major:Ljava/lang/String;

    goto :goto_2

    .line 205
    :pswitch_1
    const-string/jumbo v0, "2g"

    iput-object v0, v1, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->major:Ljava/lang/String;

    goto :goto_2

    .line 208
    :pswitch_2
    const-string/jumbo v0, "3g"

    iput-object v0, v1, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->major:Ljava/lang/String;

    goto :goto_2

    .line 211
    :pswitch_3
    const-string/jumbo v0, "4g"

    iput-object v0, v1, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->major:Ljava/lang/String;

    goto :goto_2

    .line 221
    :cond_2
    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    .line 222
    invoke-static {p2}, Lcom/alipay/mobile/common/utils/ConnectionUtil;->getConnTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    iput-object v0, v1, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->minor:Ljava/lang/String;

    goto :goto_0

    .line 228
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/amnet/api/AmnetEnvHelper;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 229
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 230
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 232
    const-string/jumbo v0, "unknow"

    .line 234
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->minor:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    const-string/jumbo v2, "OutEventNotifyManager"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private doNotifyUserLoginState2Amnet(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 174
    new-instance v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;

    invoke-direct {v0}, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;-><init>()V

    .line 175
    const-wide/16 v1, 0x1

    iput-wide v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->id:J

    .line 176
    const/4 v1, 0x4

    iput v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->status:I

    .line 178
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 179
    const-string/jumbo v1, "login"

    iput-object v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->major:Ljava/lang/String;

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->minor:Ljava/lang/String;

    .line 186
    :goto_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/amnet/biz/OutEventNotifyManagerImpl;->getAmnetManager()Lcom/alipay/mobile/common/amnet/biz/AmnetManagerImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/amnet/biz/AmnetManagerImpl;->notifyAppEvent(Lcom/alipay/mobile/common/amnet/api/model/AppEvent;)V

    .line 187
    return-void

    .line 182
    :cond_0
    const-string/jumbo v1, "logout"

    iput-object v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->major:Ljava/lang/String;

    .line 183
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->minor:Ljava/lang/String;

    goto :goto_0
.end method

.method private getAmnetManager()Lcom/alipay/mobile/common/amnet/biz/AmnetManagerImpl;
    .locals 1

    .prologue
    .line 163
    const-class v0, Lcom/alipay/mobile/common/amnet/biz/AmnetManagerImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/amnet/biz/AmnetManagerImpl;

    return-object v0
.end method


# virtual methods
.method public notifyAppLeaveEvent()V
    .locals 3

    .prologue
    .line 32
    new-instance v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;

    invoke-direct {v0}, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;-><init>()V

    .line 33
    const-wide/16 v1, 0x1

    iput-wide v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->id:J

    .line 34
    const/4 v1, 0x1

    iput v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->status:I

    .line 35
    const-string/jumbo v1, "background"

    iput-object v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->major:Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Lcom/alipay/mobile/common/amnet/biz/OutEventNotifyManagerImpl;->getAmnetManager()Lcom/alipay/mobile/common/amnet/biz/AmnetManagerImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/amnet/biz/AmnetManagerImpl;->notifyAppEvent(Lcom/alipay/mobile/common/amnet/api/model/AppEvent;)V

    .line 37
    return-void
.end method

.method public notifyAppResumeEvent()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;

    invoke-direct {v0}, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;-><init>()V

    .line 42
    const-wide/16 v1, 0x1

    iput-wide v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->id:J

    .line 43
    const/4 v1, 0x1

    iput v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->status:I

    .line 44
    const-string/jumbo v1, "foreground"

    iput-object v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->major:Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Lcom/alipay/mobile/common/amnet/biz/OutEventNotifyManagerImpl;->getAmnetManager()Lcom/alipay/mobile/common/amnet/biz/AmnetManagerImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/amnet/biz/AmnetManagerImpl;->notifyAppEvent(Lcom/alipay/mobile/common/amnet/api/model/AppEvent;)V

    .line 46
    return-void
.end method

.method public notifyLoginOrLogoutEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-static {p1, p2}, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetUserInfo;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/mobile/common/amnet/biz/OutEventNotifyManagerImpl;->doNotifyUserLoginState2Amnet(ILjava/lang/String;Ljava/lang/String;)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1, v1}, Lcom/alipay/mobile/common/amnet/biz/OutEventNotifyManagerImpl;->doNotifyUserLoginState2Amnet(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyMainProcExistStateChanged(I)V
    .locals 3

    .prologue
    .line 80
    new-instance v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;

    invoke-direct {v0}, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;-><init>()V

    .line 81
    const-wide/16 v1, 0x1

    iput-wide v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->id:J

    .line 82
    const/4 v1, 0x3

    iput v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->status:I

    .line 84
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 85
    const-string/jumbo v1, "live"

    iput-object v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->major:Ljava/lang/String;

    .line 90
    :goto_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/amnet/biz/OutEventNotifyManagerImpl;->getAmnetManager()Lcom/alipay/mobile/common/amnet/biz/AmnetManagerImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/amnet/biz/AmnetManagerImpl;->notifyAppEvent(Lcom/alipay/mobile/common/amnet/api/model/AppEvent;)V

    .line 91
    return-void

    .line 87
    :cond_0
    const-string/jumbo v1, "dead"

    iput-object v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->major:Ljava/lang/String;

    goto :goto_0
.end method

.method public notifyNetWorkEvent(ZII)V
    .locals 2

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/alipay/mobile/common/amnet/biz/OutEventNotifyManagerImpl;->getAmnetManager()Lcom/alipay/mobile/common/amnet/biz/AmnetManagerImpl;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lcom/alipay/mobile/common/amnet/biz/OutEventNotifyManagerImpl;->convert2AppEvent(ZII)Lcom/alipay/mobile/common/amnet/api/model/AppEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/amnet/biz/AmnetManagerImpl;->notifyAppEvent(Lcom/alipay/mobile/common/amnet/api/model/AppEvent;)V

    .line 160
    return-void
.end method

.method public notifySeceenOffEvent()V
    .locals 3

    .prologue
    .line 59
    new-instance v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;

    invoke-direct {v0}, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;-><init>()V

    .line 60
    const-wide/16 v1, 0x1

    iput-wide v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->id:J

    .line 61
    const/4 v1, 0x2

    iput v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->status:I

    .line 62
    const-string/jumbo v1, "disable"

    iput-object v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->major:Ljava/lang/String;

    .line 63
    invoke-direct {p0}, Lcom/alipay/mobile/common/amnet/biz/OutEventNotifyManagerImpl;->getAmnetManager()Lcom/alipay/mobile/common/amnet/biz/AmnetManagerImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/amnet/biz/AmnetManagerImpl;->notifyAppEvent(Lcom/alipay/mobile/common/amnet/api/model/AppEvent;)V

    .line 64
    return-void
.end method

.method public notifySeceenOnEvent()V
    .locals 3

    .prologue
    .line 50
    new-instance v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;

    invoke-direct {v0}, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;-><init>()V

    .line 51
    const-wide/16 v1, 0x1

    iput-wide v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->id:J

    .line 52
    const/4 v1, 0x2

    iput v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->status:I

    .line 53
    const-string/jumbo v1, "enable"

    iput-object v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->major:Ljava/lang/String;

    .line 54
    invoke-direct {p0}, Lcom/alipay/mobile/common/amnet/biz/OutEventNotifyManagerImpl;->getAmnetManager()Lcom/alipay/mobile/common/amnet/biz/AmnetManagerImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/amnet/biz/AmnetManagerImpl;->notifyAppEvent(Lcom/alipay/mobile/common/amnet/api/model/AppEvent;)V

    .line 55
    return-void
.end method

.method public notifySwitchDelayHandshake(I)V
    .locals 3

    .prologue
    .line 123
    new-instance v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;

    invoke-direct {v0}, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;-><init>()V

    .line 124
    const-wide/16 v1, 0x1

    iput-wide v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->id:J

    .line 125
    const/4 v1, 0x6

    iput v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->status:I

    .line 127
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 128
    const-string/jumbo v1, "delayed"

    iput-object v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->major:Ljava/lang/String;

    .line 132
    :goto_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/amnet/biz/OutEventNotifyManagerImpl;->getAmnetManager()Lcom/alipay/mobile/common/amnet/biz/AmnetManagerImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/amnet/biz/AmnetManagerImpl;->notifyAppEvent(Lcom/alipay/mobile/common/amnet/api/model/AppEvent;)V

    .line 133
    return-void

    .line 130
    :cond_0
    const-string/jumbo v1, "instant"

    iput-object v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->major:Ljava/lang/String;

    goto :goto_0
.end method

.method public notifySwitchOrtt(I)V
    .locals 3

    .prologue
    .line 109
    new-instance v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;

    invoke-direct {v0}, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;-><init>()V

    .line 110
    const-wide/16 v1, 0x1

    iput-wide v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->id:J

    .line 111
    const/4 v1, 0x7

    iput v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->status:I

    .line 113
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 114
    const-string/jumbo v1, "fast"

    iput-object v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->major:Ljava/lang/String;

    .line 118
    :goto_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/amnet/biz/OutEventNotifyManagerImpl;->getAmnetManager()Lcom/alipay/mobile/common/amnet/biz/AmnetManagerImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/amnet/biz/AmnetManagerImpl;->notifyAppEvent(Lcom/alipay/mobile/common/amnet/api/model/AppEvent;)V

    .line 119
    return-void

    .line 116
    :cond_0
    const-string/jumbo v1, "normal"

    iput-object v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->major:Ljava/lang/String;

    goto :goto_0
.end method

.method public notifySwitchSmartHeartBeat(I)V
    .locals 3

    .prologue
    .line 95
    new-instance v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;

    invoke-direct {v0}, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;-><init>()V

    .line 96
    const-wide/16 v1, 0x1

    iput-wide v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->id:J

    .line 97
    const/4 v1, 0x5

    iput v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->status:I

    .line 99
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 100
    const-string/jumbo v1, "static"

    iput-object v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->major:Ljava/lang/String;

    .line 104
    :goto_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/amnet/biz/OutEventNotifyManagerImpl;->getAmnetManager()Lcom/alipay/mobile/common/amnet/biz/AmnetManagerImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/amnet/biz/AmnetManagerImpl;->notifyAppEvent(Lcom/alipay/mobile/common/amnet/api/model/AppEvent;)V

    .line 105
    return-void

    .line 102
    :cond_0
    const-string/jumbo v1, "dynamic"

    iput-object v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->major:Ljava/lang/String;

    goto :goto_0
.end method

.method public notifyUpdateDnsInfo(BLjava/lang/String;)V
    .locals 3

    .prologue
    .line 137
    new-instance v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;

    invoke-direct {v0}, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;-><init>()V

    .line 138
    const-wide/16 v1, 0x1

    iput-wide v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->id:J

    .line 139
    const/16 v1, 0x8

    iput v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->status:I

    .line 141
    packed-switch p1, :pswitch_data_0

    .line 155
    :goto_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/amnet/biz/OutEventNotifyManagerImpl;->getAmnetManager()Lcom/alipay/mobile/common/amnet/biz/AmnetManagerImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/amnet/biz/AmnetManagerImpl;->notifyAppEvent(Lcom/alipay/mobile/common/amnet/api/model/AppEvent;)V

    .line 156
    return-void

    .line 143
    :pswitch_0
    const-string/jumbo v1, "long-link"

    iput-object v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->major:Ljava/lang/String;

    .line 144
    iput-object p2, v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->minor:Ljava/lang/String;

    goto :goto_0

    .line 147
    :pswitch_1
    const-string/jumbo v1, "short-link"

    iput-object v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->major:Ljava/lang/String;

    .line 148
    iput-object p2, v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->minor:Ljava/lang/String;

    goto :goto_0

    .line 151
    :pswitch_2
    const-string/jumbo v1, "all-link"

    iput-object v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->major:Ljava/lang/String;

    .line 152
    iput-object p2, v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->minor:Ljava/lang/String;

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
