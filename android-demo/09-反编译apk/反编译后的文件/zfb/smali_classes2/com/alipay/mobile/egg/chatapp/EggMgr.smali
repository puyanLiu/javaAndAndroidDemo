.class public Lcom/alipay/mobile/egg/chatapp/EggMgr;
.super Ljava/lang/Object;
.source "EggMgr.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/alipay/mobile/egg/chatapp/EggMgr;


# instance fields
.field private eggType:Lcom/alipay/mobile/egg/chatapp/EggMgr$EggType;

.field private fileService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

.field private mBusinessPatternMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private mContentPatternMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private mEggDataModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/egg/rpc/EggConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mEggEffectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/egg/EggEffectGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/alipay/mobile/egg/chatapp/EggMgr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/egg/chatapp/EggMgr;->TAG:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/egg/chatapp/EggMgr;->sInstance:Lcom/alipay/mobile/egg/chatapp/EggMgr;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/egg/chatapp/EggMgr;->mEggDataModelList:Ljava/util/List;

    .line 55
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 57
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    .line 54
    iput-object v0, p0, Lcom/alipay/mobile/egg/chatapp/EggMgr;->fileService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/egg/chatapp/EggMgr;->mEggDataModelList:Ljava/util/List;

    .line 59
    invoke-direct {p0}, Lcom/alipay/mobile/egg/chatapp/EggMgr;->initEggData()V

    .line 60
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/egg/chatapp/EggMgr;)Ljava/util/List;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/egg/chatapp/EggMgr;->mEggDataModelList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/egg/chatapp/EggMgr;Lcom/alipay/mobile/egg/rpc/EggConfig;)V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/alipay/mobile/egg/chatapp/EggMgr;->downloadFile(Lcom/alipay/mobile/egg/rpc/EggConfig;)V

    return-void
.end method

.method private createEggEffectMap()V
    .locals 4

    .prologue
    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/egg/chatapp/EggMgr;->mEggEffectMap:Ljava/util/HashMap;

    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/egg/chatapp/EggMgr;->mEggDataModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    return-void

    .line 140
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/egg/rpc/EggConfig;

    .line 141
    invoke-direct {p0, v0}, Lcom/alipay/mobile/egg/chatapp/EggMgr;->getEffectGroup(Lcom/alipay/mobile/egg/rpc/EggConfig;)Lcom/alipay/mobile/egg/EggEffectGroup;

    move-result-object v2

    .line 142
    iget-object v3, p0, Lcom/alipay/mobile/egg/chatapp/EggMgr;->mEggEffectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/alipay/mobile/egg/rpc/EggConfig;->getEggId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private createPatternMap()V
    .locals 8

    .prologue
    const/16 v7, 0x28

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/egg/chatapp/EggMgr;->mContentPatternMap:Ljava/util/HashMap;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/egg/chatapp/EggMgr;->mBusinessPatternMap:Ljava/util/HashMap;

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/egg/chatapp/EggMgr;->mEggDataModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    return-void

    .line 108
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/egg/rpc/EggConfig;

    .line 109
    invoke-virtual {v0}, Lcom/alipay/mobile/egg/rpc/EggConfig;->getKeyword()Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-virtual {v0}, Lcom/alipay/mobile/egg/rpc/EggConfig;->getTag()Ljava/lang/String;

    move-result-object v3

    .line 111
    if-eqz v2, :cond_2

    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    const-string/jumbo v5, ".*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "|"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 118
    const-string/jumbo v6, ")"

    .line 117
    invoke-virtual {v4, v2, v5, v6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget-object v2, p0, Lcom/alipay/mobile/egg/chatapp/EggMgr;->mContentPatternMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/alipay/mobile/egg/rpc/EggConfig;->getEggId()Ljava/lang/String;

    move-result-object v5

    .line 120
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 119
    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_2
    if-eqz v3, :cond_0

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    const-string/jumbo v4, ".*"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 130
    const-string/jumbo v5, ")"

    .line 129
    invoke-virtual {v2, v3, v4, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-object v3, p0, Lcom/alipay/mobile/egg/chatapp/EggMgr;->mBusinessPatternMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/alipay/mobile/egg/rpc/EggConfig;->getEggId()Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 131
    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public static declared-synchronized destroyInstance()V
    .locals 2

    .prologue
    .line 63
    const-class v0, Lcom/alipay/mobile/egg/chatapp/EggMgr;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/alipay/mobile/egg/chatapp/EggMgr;->sInstance:Lcom/alipay/mobile/egg/chatapp/EggMgr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit v0

    return-void

    .line 63
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private downloadFile(Lcom/alipay/mobile/egg/rpc/EggConfig;)V
    .locals 3

    .prologue
    .line 195
    new-instance v0, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;-><init>()V

    .line 197
    invoke-virtual {p1}, Lcom/alipay/mobile/egg/rpc/EggConfig;->getResourceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;->setCloudId(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p1}, Lcom/alipay/mobile/egg/rpc/EggConfig;->getResourceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/egg/util/EggHelper;->getEggImagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;->setSavePath(Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/alipay/mobile/egg/chatapp/EggMgr;->fileService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    new-instance v2, Lcom/alipay/mobile/egg/chatapp/EggMgr$3;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/egg/chatapp/EggMgr$3;-><init>(Lcom/alipay/mobile/egg/chatapp/EggMgr;)V

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;->downLoad(Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;Lcom/alipay/android/phone/mobilecommon/multimedia/file/APFileDownCallback;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 247
    return-void
.end method

.method private downloadImage()V
    .locals 3

    .prologue
    .line 176
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 176
    new-instance v1, Lcom/alipay/mobile/egg/chatapp/EggMgr$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/egg/chatapp/EggMgr$2;-><init>(Lcom/alipay/mobile/egg/chatapp/EggMgr;)V

    .line 190
    const-string/jumbo v2, "eggCheckIconExistsTask"

    .line 178
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->parallelExecute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method private getEffectGroup(Lcom/alipay/mobile/egg/rpc/EggConfig;)Lcom/alipay/mobile/egg/EggEffectGroup;
    .locals 4

    .prologue
    .line 148
    new-instance v0, Lcom/alipay/mobile/egg/EggEffectGroup;

    .line 149
    invoke-virtual {p1}, Lcom/alipay/mobile/egg/rpc/EggConfig;->getEggId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 148
    invoke-direct {v0, v1}, Lcom/alipay/mobile/egg/EggEffectGroup;-><init>(I)V

    .line 151
    new-instance v1, Lcom/alipay/mobile/egg/EggEffect;

    invoke-virtual {p1}, Lcom/alipay/mobile/egg/rpc/EggConfig;->getResourceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/egg/util/EggHelper;->getEggImagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/alipay/mobile/egg/EggEffect;-><init>(Ljava/lang/String;Z)V

    .line 152
    const/16 v2, 0x4e2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/egg/EggEffect;->setDuration(I)V

    .line 153
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/egg/EggEffectGroup;->addEggEffect(Lcom/alipay/mobile/egg/EggEffect;)V

    .line 155
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/egg/EggEffectGroup;->setEffectGap(I)V

    .line 156
    const-wide/16 v1, 0x9c4

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/egg/EggEffectGroup;->setEffectDuration(J)V

    .line 157
    invoke-virtual {p1}, Lcom/alipay/mobile/egg/rpc/EggConfig;->getStartTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/egg/EggEffectGroup;->setStartTime(Ljava/util/Date;)V

    .line 158
    invoke-virtual {p1}, Lcom/alipay/mobile/egg/rpc/EggConfig;->getExpireTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/egg/EggEffectGroup;->setEndTime(Ljava/util/Date;)V

    .line 160
    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/egg/chatapp/EggMgr;
    .locals 2

    .prologue
    .line 46
    const-class v1, Lcom/alipay/mobile/egg/chatapp/EggMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/egg/chatapp/EggMgr;->sInstance:Lcom/alipay/mobile/egg/chatapp/EggMgr;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/alipay/mobile/egg/chatapp/EggMgr;

    invoke-direct {v0}, Lcom/alipay/mobile/egg/chatapp/EggMgr;-><init>()V

    sput-object v0, Lcom/alipay/mobile/egg/chatapp/EggMgr;->sInstance:Lcom/alipay/mobile/egg/chatapp/EggMgr;

    .line 50
    :cond_0
    sget-object v0, Lcom/alipay/mobile/egg/chatapp/EggMgr;->sInstance:Lcom/alipay/mobile/egg/chatapp/EggMgr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initEggData()V
    .locals 5

    .prologue
    .line 69
    const-string/jumbo v0, "egg_config_list"

    invoke-static {v0}, Lcom/alipay/mobile/egg/util/EggHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/egg/chatapp/EggMgr;->mEggDataModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 73
    iget-object v2, p0, Lcom/alipay/mobile/egg/chatapp/EggMgr;->mEggDataModelList:Ljava/util/List;

    .line 77
    new-instance v0, Lcom/alipay/mobile/egg/chatapp/EggMgr$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/egg/chatapp/EggMgr$1;-><init>(Lcom/alipay/mobile/egg/chatapp/EggMgr;)V

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/alibaba/fastjson/parser/Feature;

    .line 75
    invoke-static {v1, v0, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 74
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 80
    invoke-virtual {p0}, Lcom/alipay/mobile/egg/chatapp/EggMgr;->prepareEggData()V

    .line 81
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/egg/chatapp/EggMgr;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "initEggData:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/egg/chatapp/EggMgr;->TAG:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public getEggEffectGroupByKeyword(Ljava/lang/String;)Lcom/alipay/mobile/egg/EggEffectGroup;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/16 v3, 0x64

    .line 255
    .line 256
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-object v0

    .line 261
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/egg/chatapp/EggMgr;->getEggType()Lcom/alipay/mobile/egg/chatapp/EggMgr$EggType;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/egg/chatapp/EggMgr$EggType;->CONTENT:Lcom/alipay/mobile/egg/chatapp/EggMgr$EggType;

    if-ne v1, v2, :cond_4

    .line 262
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_2

    .line 263
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 265
    :cond_2
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/egg/chatapp/EggMgr;->parseFirstMatchEffectGroupByContent(Ljava/lang/String;)Lcom/alipay/mobile/egg/EggEffectGroup;

    move-result-object v0

    .line 272
    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    .line 273
    invoke-direct {p0}, Lcom/alipay/mobile/egg/chatapp/EggMgr;->downloadImage()V

    goto :goto_0

    .line 267
    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/egg/chatapp/EggMgr;->getEggType()Lcom/alipay/mobile/egg/chatapp/EggMgr$EggType;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/egg/chatapp/EggMgr$EggType;->BIZ:Lcom/alipay/mobile/egg/chatapp/EggMgr$EggType;

    if-ne v1, v2, :cond_3

    .line 269
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/egg/chatapp/EggMgr;->parseFirstMatchEffectGroupByBusiness(Ljava/lang/String;)Lcom/alipay/mobile/egg/EggEffectGroup;

    move-result-object v0

    goto :goto_1
.end method

.method public getEggType()Lcom/alipay/mobile/egg/chatapp/EggMgr$EggType;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/egg/chatapp/EggMgr;->eggType:Lcom/alipay/mobile/egg/chatapp/EggMgr$EggType;

    return-object v0
.end method

.method public parseFirstMatchEffectGroupByBusiness(Ljava/lang/String;)Lcom/alipay/mobile/egg/EggEffectGroup;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 337
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    :cond_0
    :goto_0
    return-object v2

    .line 340
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 341
    iget-object v0, p0, Lcom/alipay/mobile/egg/chatapp/EggMgr;->mEggDataModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/egg/rpc/EggConfig;

    .line 344
    invoke-virtual {v0}, Lcom/alipay/mobile/egg/rpc/EggConfig;->getTag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 345
    iget-object v1, p0, Lcom/alipay/mobile/egg/chatapp/EggMgr;->mBusinessPatternMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/alipay/mobile/egg/rpc/EggConfig;->getEggId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/regex/Pattern;

    .line 349
    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 350
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    .line 352
    if-eqz v1, :cond_3

    .line 353
    invoke-virtual {v0}, Lcom/alipay/mobile/egg/rpc/EggConfig;->getEggId()Ljava/lang/String;

    move-result-object v1

    .line 355
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 356
    iget-object v2, p0, Lcom/alipay/mobile/egg/chatapp/EggMgr;->mEggEffectMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/egg/EggEffectGroup;

    .line 361
    new-instance v2, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 362
    const-string/jumbo v3, "20000167"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppID(Ljava/lang/String;)V

    .line 363
    const-string/jumbo v3, "UC-SJJR-150909-03"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    .line 364
    const-string/jumbo v3, "eggs"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v0}, Lcom/alipay/mobile/egg/rpc/EggConfig;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v0}, Lcom/alipay/mobile/egg/rpc/EggConfig;->getEggName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam3(Ljava/lang/String;)V

    .line 367
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    const-string/jumbo v3, "event"

    invoke-interface {v0, v3, v2}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    move-object v2, v1

    .line 368
    goto :goto_0

    :cond_3
    move-object v1, v2

    goto :goto_1
.end method

.method public parseFirstMatchEffectGroupByContent(Ljava/lang/String;)Lcom/alipay/mobile/egg/EggEffectGroup;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 287
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-object v2

    .line 290
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 291
    iget-object v0, p0, Lcom/alipay/mobile/egg/chatapp/EggMgr;->mEggDataModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/egg/rpc/EggConfig;

    .line 294
    invoke-virtual {v0}, Lcom/alipay/mobile/egg/rpc/EggConfig;->getKeyword()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 295
    iget-object v1, p0, Lcom/alipay/mobile/egg/chatapp/EggMgr;->mContentPatternMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/alipay/mobile/egg/rpc/EggConfig;->getEggId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/regex/Pattern;

    .line 299
    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 300
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    .line 302
    if-eqz v1, :cond_3

    .line 303
    invoke-virtual {v0}, Lcom/alipay/mobile/egg/rpc/EggConfig;->getEggId()Ljava/lang/String;

    move-result-object v1

    .line 305
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 306
    iget-object v5, p0, Lcom/alipay/mobile/egg/chatapp/EggMgr;->mEggEffectMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/egg/EggEffectGroup;

    .line 312
    invoke-static {v1}, Lcom/alipay/mobile/egg/util/EggHelper;->isAtTime(Lcom/alipay/mobile/egg/EggEffectGroup;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 313
    new-instance v2, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 317
    const-string/jumbo v3, "20000167"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppID(Ljava/lang/String;)V

    .line 318
    const-string/jumbo v3, "UC-SJJR-150909-03"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    .line 319
    const-string/jumbo v3, "eggs"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v0}, Lcom/alipay/mobile/egg/rpc/EggConfig;->getKeyword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0}, Lcom/alipay/mobile/egg/rpc/EggConfig;->getEggName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam3(Ljava/lang/String;)V

    .line 322
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    const-string/jumbo v3, "event"

    invoke-interface {v0, v3, v2}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    move-object v2, v1

    .line 323
    goto :goto_0

    :cond_3
    move-object v1, v2

    goto :goto_1
.end method

.method public prepareEggData()V
    .locals 4

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/egg/chatapp/EggMgr;->mEggDataModelList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/egg/chatapp/EggMgr;->mEggDataModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/egg/chatapp/EggMgr;->createPatternMap()V

    .line 96
    invoke-direct {p0}, Lcom/alipay/mobile/egg/chatapp/EggMgr;->createEggEffectMap()V

    .line 100
    invoke-direct {p0}, Lcom/alipay/mobile/egg/chatapp/EggMgr;->downloadImage()V

    .line 101
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/egg/chatapp/EggMgr;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "prepareEggData end"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/egg/chatapp/EggMgr;->mEggDataModelList:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setEggTyle(Lcom/alipay/mobile/egg/chatapp/EggMgr$EggType;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/alipay/mobile/egg/chatapp/EggMgr;->eggType:Lcom/alipay/mobile/egg/chatapp/EggMgr$EggType;

    .line 168
    return-void
.end method
