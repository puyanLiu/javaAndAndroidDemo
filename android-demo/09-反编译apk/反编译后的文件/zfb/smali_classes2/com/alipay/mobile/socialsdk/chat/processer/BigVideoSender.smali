.class public Lcom/alipay/mobile/socialsdk/chat/processer/BigVideoSender;
.super Ljava/lang/Object;
.source "BigVideoSender.java"


# static fields
.field private static a:Lcom/alipay/mobile/socialsdk/chat/processer/BigVideoSender;

.field private static c:Lcom/alipay/mobile/socialsdk/chat/processer/c;


# instance fields
.field private b:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 42
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    .line 41
    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/BigVideoSender;->b:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/chat/processer/BigVideoSender;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/BigVideoSender;->b:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 85
    const-string/jumbo v0, "SocialSdk_Sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u538b\u7f29\u5927\u89c6\u9891\u5931\u8d25..."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->sendingState:I

    const-string/jumbo v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    invoke-static {v0, p2}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    invoke-virtual {v0, p0, v3}, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;->updateSingleMessage(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    invoke-static {v0, p2}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    check-cast p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;

    invoke-virtual {v0, p0, v3}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->updateSingleMessage(Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;Z)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 74
    const-string/jumbo v0, "SocialSdk_Sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u5927\u89c6\u9891\u538b\u7f29\u6210\u529f..."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    invoke-static {v0, p2}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    invoke-virtual {v0, p0, v3}, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;->updateSingleMessage(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    invoke-static {v0, p2}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    check-cast p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;

    invoke-virtual {v0, p0, v3}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->updateSingleMessage(Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;Z)Z

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/socialsdk/chat/processer/BigVideoSender;
    .locals 3

    .prologue
    .line 33
    const-class v1, Lcom/alipay/mobile/socialsdk/chat/processer/BigVideoSender;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/processer/BigVideoSender;->a:Lcom/alipay/mobile/socialsdk/chat/processer/BigVideoSender;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/processer/BigVideoSender;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/BigVideoSender;-><init>()V

    sput-object v0, Lcom/alipay/mobile/socialsdk/chat/processer/BigVideoSender;->a:Lcom/alipay/mobile/socialsdk/chat/processer/BigVideoSender;

    .line 35
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/processer/c;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/alipay/mobile/socialsdk/chat/processer/c;-><init>(B)V

    sput-object v0, Lcom/alipay/mobile/socialsdk/chat/processer/BigVideoSender;->c:Lcom/alipay/mobile/socialsdk/chat/processer/c;

    .line 37
    :cond_0
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/processer/BigVideoSender;->a:Lcom/alipay/mobile/socialsdk/chat/processer/BigVideoSender;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addBigVideo(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/processer/b;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/alipay/mobile/socialsdk/chat/processer/b;-><init>(Lcom/alipay/mobile/socialsdk/chat/processer/BigVideoSender;Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-object v1, Lcom/alipay/mobile/socialsdk/chat/processer/BigVideoSender;->c:Lcom/alipay/mobile/socialsdk/chat/processer/c;

    if-eqz v1, :cond_0

    .line 116
    sget-object v1, Lcom/alipay/mobile/socialsdk/chat/processer/BigVideoSender;->c:Lcom/alipay/mobile/socialsdk/chat/processer/c;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/socialsdk/chat/processer/c;->execute(Ljava/lang/Runnable;)V

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public addBigVideo(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/processer/a;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/alipay/mobile/socialsdk/chat/processer/a;-><init>(Lcom/alipay/mobile/socialsdk/chat/processer/BigVideoSender;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    sget-object v1, Lcom/alipay/mobile/socialsdk/chat/processer/BigVideoSender;->c:Lcom/alipay/mobile/socialsdk/chat/processer/c;

    if-eqz v1, :cond_0

    .line 68
    sget-object v1, Lcom/alipay/mobile/socialsdk/chat/processer/BigVideoSender;->c:Lcom/alipay/mobile/socialsdk/chat/processer/c;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/socialsdk/chat/processer/c;->execute(Ljava/lang/Runnable;)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public declared-synchronized excuteBigVideos(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "SocialSdk_Sdk"

    const-string/jumbo v1, "\u5f00\u59cb\u51c6\u5907\u538b\u7f29\u4e00\u6ce2\u5927\u89c6\u9891..."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-static {p1, p3, p2}, Lcom/alipay/mobile/socialsdk/chat/processer/UploadMessageUtils;->insertBatchMessage(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 126
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;

    .line 127
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 132
    invoke-virtual {p0, v2, p2, p3}, Lcom/alipay/mobile/socialsdk/chat/processer/BigVideoSender;->addBigVideo(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-object v2

    .line 127
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    .line 128
    const-string/jumbo v4, "SocialSdk_Sdk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u8bb0\u5f55\u538b\u7f29\u7684\u5927\u89c6\u9891\u4e0a\u884c..."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0, v1, p3, p2}, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->recordUploadMsg(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
