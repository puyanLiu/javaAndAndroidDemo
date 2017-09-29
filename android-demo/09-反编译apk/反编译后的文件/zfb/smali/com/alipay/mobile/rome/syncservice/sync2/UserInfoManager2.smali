.class public Lcom/alipay/mobile/rome/syncservice/sync2/UserInfoManager2;
.super Ljava/lang/Object;
.source "UserInfoManager2.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "UserInfoManager2"

.field private static volatile lastSessionId:Ljava/lang/String;

.field private static volatile lastUserId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync2/UserInfoManager2;->lastUserId:Ljava/lang/String;

    .line 12
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync2/UserInfoManager2;->lastSessionId:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleUserInfoEvent(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 21
    const-string/jumbo v0, "UserInfoManager2"

    const-string/jumbo v1, "handleUserInfoEvent:"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getInstance()Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->sendSync3002()V

    .line 47
    :goto_0
    return-void

    .line 28
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/a/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/a/b;->b()Ljava/lang/String;

    move-result-object v1

    .line 33
    if-nez p0, :cond_1

    sget-object v2, Lcom/alipay/mobile/rome/syncservice/sync2/UserInfoManager2;->lastUserId:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 34
    sget-object v2, Lcom/alipay/mobile/rome/syncservice/sync2/UserInfoManager2;->lastSessionId:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 36
    :cond_1
    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync2/UserInfoManager2;->lastUserId:Ljava/lang/String;

    .line 37
    sput-object v1, Lcom/alipay/mobile/rome/syncservice/sync2/UserInfoManager2;->lastSessionId:Ljava/lang/String;

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getInstance()Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->sendSync3002()V

    goto :goto_0

    .line 42
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getInstance()Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->sendSync3001()V

    goto :goto_0

    .line 45
    :cond_3
    const-string/jumbo v0, "UserInfoManager2"

    const-string/jumbo v1, "handleUserInfoEvent: [ userId not changed ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
