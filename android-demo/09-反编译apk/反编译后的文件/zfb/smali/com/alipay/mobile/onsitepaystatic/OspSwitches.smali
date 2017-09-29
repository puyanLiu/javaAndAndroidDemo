.class public Lcom/alipay/mobile/onsitepaystatic/OspSwitches;
.super Ljava/lang/Object;


# static fields
.field public static final DISPLAYPAYCHANNEL:Ljava/lang/String; = "isDisplayChannel"

.field public static final FACEPAYSWITCH:Ljava/lang/String; = "facePaySwitch"

.field public static final QUERYPAYCHANNELSWITCH:Ljava/lang/String; = "queryPayChannelSwitch"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public displayPayChannel:Z

.field public facePaySwitch:Z

.field public queryPayChannelSwitch:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/onsitepaystatic/OspSwitches;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/onsitepaystatic/OspSwitches;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/onsitepaystatic/OspSwitches;
    .locals 5

    const/4 v1, 0x0

    new-instance v2, Lcom/alipay/mobile/onsitepaystatic/OspSwitches;

    invoke-direct {v2}, Lcom/alipay/mobile/onsitepaystatic/OspSwitches;-><init>()V

    const-string/jumbo v0, "facePaySwitch"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "facePaySwitch"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    iput-boolean v0, v2, Lcom/alipay/mobile/onsitepaystatic/OspSwitches;->facePaySwitch:Z

    const-string/jumbo v0, "isDisplayChannel"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "isDisplayChannel"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_1
    iput-boolean v0, v2, Lcom/alipay/mobile/onsitepaystatic/OspSwitches;->displayPayChannel:Z

    const-string/jumbo v0, "queryPayChannelSwitch"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "queryPayChannelSwitch"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_0
    iput-boolean v1, v2, Lcom/alipay/mobile/onsitepaystatic/OspSwitches;->queryPayChannelSwitch:Z

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/onsitepaystatic/OspSwitches;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "get osp-switches from json:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static fromOldRPCStruct(Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;)Lcom/alipay/mobile/onsitepaystatic/OspSwitches;
    .locals 2

    new-instance v0, Lcom/alipay/mobile/onsitepaystatic/OspSwitches;

    invoke-direct {v0}, Lcom/alipay/mobile/onsitepaystatic/OspSwitches;-><init>()V

    iget-object v1, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->facePaySwitch:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alipay/mobile/onsitepaystatic/OspSwitches;->facePaySwitch:Z

    iget-object v1, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->displayPayChannel:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alipay/mobile/onsitepaystatic/OspSwitches;->displayPayChannel:Z

    iget-object v1, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->queryPayChannelSwitch:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alipay/mobile/onsitepaystatic/OspSwitches;->queryPayChannelSwitch:Z

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "displayPayChannel=%s, facePaySwitch=%s, queryPayChannelSwitch=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/alipay/mobile/onsitepaystatic/OspSwitches;->displayPayChannel:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/alipay/mobile/onsitepaystatic/OspSwitches;->facePaySwitch:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/alipay/mobile/onsitepaystatic/OspSwitches;->queryPayChannelSwitch:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
