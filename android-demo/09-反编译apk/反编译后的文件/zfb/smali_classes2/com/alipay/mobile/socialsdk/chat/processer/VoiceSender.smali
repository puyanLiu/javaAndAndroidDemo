.class public Lcom/alipay/mobile/socialsdk/chat/processer/VoiceSender;
.super Ljava/lang/Object;
.source "VoiceSender.java"


# static fields
.field private static a:Lcom/alipay/mobile/socialsdk/chat/processer/VoiceSender;

.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/socialsdk/chat/processer/request/VoiceRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/socialsdk/chat/processer/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/socialsdk/chat/processer/VoiceSender;->b:Ljava/util/HashMap;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/socialsdk/chat/processer/VoiceSender;->c:Ljava/util/HashMap;

    .line 19
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/socialsdk/chat/processer/VoiceSender;
    .locals 2

    .prologue
    .line 30
    const-class v1, Lcom/alipay/mobile/socialsdk/chat/processer/VoiceSender;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/processer/VoiceSender;->a:Lcom/alipay/mobile/socialsdk/chat/processer/VoiceSender;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/processer/VoiceSender;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/VoiceSender;-><init>()V

    sput-object v0, Lcom/alipay/mobile/socialsdk/chat/processer/VoiceSender;->a:Lcom/alipay/mobile/socialsdk/chat/processer/VoiceSender;

    .line 33
    :cond_0
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/processer/VoiceSender;->a:Lcom/alipay/mobile/socialsdk/chat/processer/VoiceSender;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized createVoiceMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;
    .locals 5

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->a(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    move-result-object v1

    .line 40
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->createClientMsgId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u521b\u5efa\u8bed\u97f3\u6d88\u606f: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string/jumbo v0, "CHAT"

    iput-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizType:Ljava/lang/String;

    .line 44
    if-eqz p5, :cond_1

    const-string/jumbo v0, "\u4f60\u53d1\u9001\u4e86\u4e00\u6761\u6084\u6084\u8bdd"

    :goto_0
    iput-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizMemo:Ljava/lang/String;

    .line 46
    if-eqz p5, :cond_2

    const/16 v0, 0x32c

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 45
    iput-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateCode:Ljava/lang/String;

    .line 47
    new-instance v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VoiceMediaInfo;

    invoke-direct {v0, p3, p4}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VoiceMediaInfo;-><init>(Ljava/lang/String;I)V

    .line 48
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    .line 49
    const/4 v0, 0x1

    iput v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->sendingState:I

    .line 50
    invoke-static {v1, p2, p1}, Lcom/alipay/mobile/socialsdk/chat/processer/UploadMessageUtils;->a(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    .line 51
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;

    invoke-virtual {v0, v1, p2, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->recordUploadMsg(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)Z

    .line 52
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/processer/VoiceSender;->b:Ljava/util/HashMap;

    new-instance v2, Lcom/alipay/mobile/socialsdk/chat/processer/request/VoiceRequest;

    invoke-direct {v2, v1, p1, p2}, Lcom/alipay/mobile/socialsdk/chat/processer/request/VoiceRequest;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/processer/VoiceSender;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/processer/VoiceSender;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/chat/processer/n;

    iget-boolean v2, v0, Lcom/alipay/mobile/socialsdk/chat/processer/n;->a:Z

    .line 55
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/processer/VoiceSender;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/chat/processer/n;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/chat/processer/n;->b:Ljava/lang/String;

    .line 54
    invoke-virtual {p0, p3, v2, v0}, Lcom/alipay/mobile/socialsdk/chat/processer/VoiceSender;->updateVoiceMessageState(Ljava/lang/String;ZLjava/lang/String;)V

    .line 56
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/processer/VoiceSender;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_0
    monitor-exit p0

    return-object v1

    .line 44
    :cond_1
    :try_start_1
    const-string/jumbo v0, "[\u8bed\u97f3]"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 46
    :cond_2
    const/16 v0, 0xc

    goto :goto_1

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateVoiceMessageState(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/processer/VoiceSender;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/chat/processer/request/VoiceRequest;

    .line 64
    sget-object v1, Lcom/alipay/mobile/socialsdk/chat/processer/VoiceSender;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/processer/n;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialsdk/chat/processer/n;-><init>(Lcom/alipay/mobile/socialsdk/chat/processer/VoiceSender;)V

    .line 67
    iput-object p3, v0, Lcom/alipay/mobile/socialsdk/chat/processer/n;->b:Ljava/lang/String;

    .line 68
    iput-boolean p2, v0, Lcom/alipay/mobile/socialsdk/chat/processer/n;->a:Z

    .line 69
    sget-object v1, Lcom/alipay/mobile/socialsdk/chat/processer/VoiceSender;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :goto_0
    monitor-exit p0

    return-void

    .line 72
    :cond_0
    if-eqz p2, :cond_1

    :try_start_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 73
    invoke-virtual {v0, p3}, Lcom/alipay/mobile/socialsdk/chat/processer/request/VoiceRequest;->setCloudId(Ljava/lang/String;)V

    .line 75
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->getInstance()Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->add(Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
