.class public Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetUserInfo;
.super Ljava/lang/Object;
.source "AmnetUserInfo.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "amnet_AmnetUserInfo"

.field public static final SHARED_FILE_NAME:Ljava/lang/String; = "amnetsui"

.field private static volatile mSessionId:Ljava/lang/String;

.field private static volatile mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final clearUserInfo()V
    .locals 3

    .prologue
    .line 145
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportEnv;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "amnetsui"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 146
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 147
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 148
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    const-string/jumbo v1, "amnet_AmnetUserInfo"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetUserInfo;->mSessionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetUserInfo;->getSessionIdFromCookie()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetUserInfo;->mSessionId:Ljava/lang/String;

    .line 76
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetUserInfo;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public static getSessionIdFromCookie()Ljava/lang/String;
    .locals 4

    .prologue
    .line 90
    :try_start_0
    const-string/jumbo v0, "https://mobilegw.alipay.com/mgw.htm"

    .line 91
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportEnv;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-static {}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getInstance()Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportEnv;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getGWFURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 95
    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    const-string/jumbo v0, ""

    .line 117
    :goto_0
    return-object v0

    .line 100
    :cond_1
    new-instance v1, Ljava/util/StringTokenizer;

    const-string/jumbo v2, ";"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_2
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 103
    const-string/jumbo v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 104
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    .line 105
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 108
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 109
    const-string/jumbo v2, "ALIPAYJSESSIONID"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 110
    const-string/jumbo v1, "amnet_AmnetUserInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "hit ALIPAYJSESSIONID="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    const-string/jumbo v1, "amnet_AmnetUserInfo"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    :cond_3
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static declared-synchronized getUserId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    const-class v1, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetUserInfo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetUserInfo;->mUserId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetUserInfo;->getUserIdFromShared()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetUserInfo;->mUserId:Ljava/lang/String;

    .line 64
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetUserInfo;->mUserId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static final getUserIdFromShared()Ljava/lang/String;
    .locals 4

    .prologue
    .line 155
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetUserInfo;->getSessionId()Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    const-string/jumbo v0, ""

    .line 165
    :goto_0
    return-object v0

    .line 160
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportEnv;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "amnetsui"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 161
    const-string/jumbo v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    const-string/jumbo v1, "amnet_AmnetUserInfo"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private static notifyLogioEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 122
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/ipc/api/IPCApiFactory;->getSingletonIPCContextManager()Lcom/alipay/mobile/common/ipc/api/IPCContextManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/ipc/api/IPCContextManager;->getIpcCallManager()Lcom/alipay/mobile/common/ipc/api/IPCCallManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/OutEventNotifyService;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/ipc/api/IPCCallManager;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/OutEventNotifyService;

    .line 123
    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/OutEventNotifyService;->notifyLoginOrLogoutEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    const-string/jumbo v1, "amnet_AmnetUserInfo"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static final saveUserInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 130
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetUserInfo;->mUserId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetUserInfo;->mSessionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportEnv;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "amnetsui"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 135
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 136
    invoke-interface {v0, p1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 137
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    const-string/jumbo v1, "amnet_AmnetUserInfo"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setSessionId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    sput-object p0, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetUserInfo;->mSessionId:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public static declared-synchronized setUserId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 52
    const-class v0, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetUserInfo;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetUserInfo;->mUserId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit v0

    return-void

    .line 52
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setUserInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 34
    const-class v1, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetUserInfo;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "amnet_AmnetUserInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setUserInfo: [ AmnetUserInfo ] [ userId"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ][ sessionId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transportext/biz/util/LogUtilAmnet;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetUserInfo;->clearUserInfo()V

    .line 37
    sput-object p0, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetUserInfo;->mUserId:Ljava/lang/String;

    .line 38
    sput-object p1, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetUserInfo;->mSessionId:Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetUserInfo;->mUserId:Ljava/lang/String;

    sget-object v2, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetUserInfo;->mSessionId:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetUserInfo;->saveUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {p0, p1}, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetUserInfo;->notifyLogioEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit v1

    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
