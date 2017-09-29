.class public Lcom/alipay/mobile/common/amnet/biz/inner/AmnetUserInfo;
.super Ljava/lang/Object;
.source "AmnetUserInfo.java"


# static fields
.field public static final KEY_SESSION_ID:Ljava/lang/String; = "sessionId"

.field public static final KEY_USER_ID:Ljava/lang/String; = "userId"

.field private static final LOGTAG:Ljava/lang/String; = "AmnetUserInfo"

.field public static final SHARED_FILE_NAME:Ljava/lang/String; = "amnetUserInfo"

.field private static volatile mSessionId:Ljava/lang/String;

.field private static volatile mUserId:Ljava/lang/String;

.field public static neverLogged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetUserInfo;->neverLogged:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetUserInfo;->mSessionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-static {}, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetUserInfo;->getSessionIdFromCookie()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetUserInfo;->mSessionId:Ljava/lang/String;

    .line 75
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetUserInfo;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public static getSessionIdFromCookie()Ljava/lang/String;
    .locals 4

    .prologue
    .line 89
    :try_start_0
    const-string/jumbo v0, "https://mobilegw.alipay.com/mgw.htm"

    .line 90
    invoke-static {}, Lcom/alipay/mobile/common/amnet/api/AmnetEnvHelper;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    invoke-static {}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getInstance()Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/amnet/api/AmnetEnvHelper;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getGWFURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 94
    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    const-string/jumbo v0, ""

    .line 116
    :goto_0
    return-object v0

    .line 99
    :cond_1
    new-instance v1, Ljava/util/StringTokenizer;

    const-string/jumbo v2, ";"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_2
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 101
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 102
    const-string/jumbo v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 103
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    .line 104
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 107
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 108
    const-string/jumbo v2, "ALIPAYJSESSIONID"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 109
    const-string/jumbo v1, "AmnetUserInfo"

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

    .line 113
    :catch_0
    move-exception v0

    .line 114
    const-string/jumbo v1, "AmnetUserInfo"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    :cond_3
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static declared-synchronized getUserId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    const-class v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetUserInfo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetUserInfo;->mUserId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setSessionId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    sput-object p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetUserInfo;->mSessionId:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public static declared-synchronized setUserId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 54
    const-class v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetUserInfo;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetUserInfo;->mUserId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit v0

    return-void

    .line 54
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setUserInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 38
    const-class v1, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetUserInfo;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "AmnetUserInfo"

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

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    sput-object p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetUserInfo;->mUserId:Ljava/lang/String;

    .line 42
    sput-object p1, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetUserInfo;->mSessionId:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetUserInfo;->neverLogged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit v1

    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
