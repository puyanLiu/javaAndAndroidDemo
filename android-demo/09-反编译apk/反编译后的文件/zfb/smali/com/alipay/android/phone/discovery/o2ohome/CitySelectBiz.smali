.class public abstract Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;
.super Ljava/lang/Object;
.source "CitySelectBiz.java"

# interfaces
.implements Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$BackgroundListener;


# static fields
.field private static final CITY_DATA_CACHE_TIME:J = 0x927c0L

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/app/Activity;

.field private hotList:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

.field private lastRequestTimestamp:J

.field private mCityCallBack:Lcom/alipay/mobile/beehive/cityselect/service/CitySelectService$ICitySelectCallBack;

.field private normalList:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

.field private rpcExecutor:Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;

.field private rpcModel:Lcom/alipay/android/phone/discovery/o2ohome/biz/mobilecsa/CityQueryRpcModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string/jumbo v0, "CitySelectBiz"

    sput-object v0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->TAG:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->hotList:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    .line 46
    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->normalList:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->lastRequestTimestamp:J

    .line 50
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz$1;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->mCityCallBack:Lcom/alipay/mobile/beehive/cityselect/service/CitySelectService$ICitySelectCallBack;

    .line 64
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->context:Landroid/app/Activity;

    .line 65
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private readFromCache()V
    .locals 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->normalList:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->hotList:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->hotList:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    .line 98
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->hotList:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    .line 99
    new-instance v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->normalList:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    .line 100
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->normalList:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    .line 103
    const-class v0, Lcom/alipay/mobilecsa/common/service/rpc/response/CityQueryResponse;

    const-class v1, Lcom/alipay/mobilecsa/common/service/rpc/response/CityQueryResponse;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/o2o/o2ocommon/util/DiskCacheHelper;->readFromCache(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilecsa/common/service/rpc/response/CityQueryResponse;

    .line 104
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/CityQueryResponse;->cityList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/CityQueryResponse;->cityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/CityQueryResponse;->cityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    :cond_0
    return-void

    .line 105
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;

    .line 106
    new-instance v2, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;

    invoke-direct {v2}, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;-><init>()V

    .line 107
    iget-object v3, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->cityName:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->city:Ljava/lang/String;

    .line 108
    iget-object v3, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->cityId:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->adCode:Ljava/lang/String;

    .line 109
    const-string/jumbo v3, "h"

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->cityType:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->hotList:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->normalList:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private startRequestTask()V
    .locals 4

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->normalList:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->normalList:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->normalList:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->lastRequestTimestamp:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->rpcModel:Lcom/alipay/android/phone/discovery/o2ohome/biz/mobilecsa/CityQueryRpcModel;

    if-nez v0, :cond_1

    .line 134
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/biz/mobilecsa/CityQueryRpcModel;

    invoke-direct {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/mobilecsa/CityQueryRpcModel;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->rpcModel:Lcom/alipay/android/phone/discovery/o2ohome/biz/mobilecsa/CityQueryRpcModel;

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->rpcExecutor:Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;

    if-nez v0, :cond_2

    .line 138
    new-instance v0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->rpcModel:Lcom/alipay/android/phone/discovery/o2ohome/biz/mobilecsa/CityQueryRpcModel;

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;-><init>(Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/model/BaseRpcModel;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->rpcExecutor:Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;

    .line 139
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->rpcExecutor:Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;

    invoke-virtual {v0, p0}, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;->setListener(Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$BackgroundListener;)V

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->rpcExecutor:Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;

    invoke-virtual {v0}, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;->run()V

    .line 143
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startRequestTask"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_3
    return-void
.end method

.method private writeToDisk(Lcom/alipay/mobilecsa/common/service/rpc/response/CityQueryResponse;)V
    .locals 1

    .prologue
    .line 119
    if-eqz p1, :cond_0

    .line 120
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz$2;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz$2;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;Lcom/alipay/mobilecsa/common/service/rpc/response/CityQueryResponse;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 127
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    iput-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->mCityCallBack:Lcom/alipay/mobile/beehive/cityselect/service/CitySelectService$ICitySelectCallBack;

    .line 69
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->rpcExecutor:Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->rpcExecutor:Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;

    invoke-virtual {v0}, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;->clearListener()V

    .line 71
    iput-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->rpcExecutor:Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;

    .line 73
    :cond_0
    iput-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->rpcModel:Lcom/alipay/android/phone/discovery/o2ohome/biz/mobilecsa/CityQueryRpcModel;

    .line 74
    return-void
.end method

.method public abstract onCitySelected(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public onFailed(Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$Info;)V
    .locals 4

    .prologue
    .line 190
    if-eqz p2, :cond_0

    .line 191
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onFailed, bizCode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p2, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$Info;->bizCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " describe: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$Info;->Str:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onFailed"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSuccess(Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$Info;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 149
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v3, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onSuccess: "

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->lastRequestTimestamp:J

    .line 151
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->rpcModel:Lcom/alipay/android/phone/discovery/o2ohome/biz/mobilecsa/CityQueryRpcModel;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/mobilecsa/CityQueryRpcModel;->getResponse()Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilecsa/common/service/rpc/response/CityQueryResponse;

    .line 152
    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/CityQueryResponse;->cityList:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 153
    invoke-direct {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->writeToDisk(Lcom/alipay/mobilecsa/common/service/rpc/response/CityQueryResponse;)V

    .line 154
    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->hotList:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    iget-object v3, v3, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 155
    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->normalList:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    iget-object v3, v3, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 157
    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/CityQueryResponse;->cityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 178
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 179
    const-string/jumbo v0, "com.alipay.mobile.common.ui.SelectCityActivity.UPDATE_CITYS"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string/jumbo v4, "hotCityVisible"

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->hotList:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 182
    const-string/jumbo v0, "cityList"

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->normalList:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 183
    const-string/jumbo v0, "hotCityList"

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->hotList:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 184
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 186
    :cond_1
    return-void

    .line 157
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;

    .line 158
    iget-object v4, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->cityName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 159
    new-instance v4, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;

    invoke-direct {v4}, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;-><init>()V

    .line 163
    iget-object v5, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->cityName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->cityName:Ljava/lang/String;

    const-string/jumbo v6, "\u5e02"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 164
    iget-object v5, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->cityName:Ljava/lang/String;

    iget-object v6, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->cityName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->cityName:Ljava/lang/String;

    .line 166
    :cond_3
    iget-object v5, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->cityName:Ljava/lang/String;

    iput-object v5, v4, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->city:Ljava/lang/String;

    .line 167
    iget-object v5, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->cityId:Ljava/lang/String;

    iput-object v5, v4, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->adCode:Ljava/lang/String;

    .line 168
    iget-object v5, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->pinYin:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 169
    iget-object v5, v4, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->city:Ljava/lang/String;

    invoke-virtual {v5, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/common/utils/ChineseToPy;->getSinglePy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->pinYin:Ljava/lang/String;

    .line 171
    :cond_4
    iget-object v5, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->pinYin:Ljava/lang/String;

    iput-object v5, v4, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->pinyin:Ljava/lang/String;

    .line 172
    const-string/jumbo v5, "h"

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->cityType:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 173
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->hotList:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_5
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->normalList:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 181
    goto/16 :goto_1
.end method

.method public showSelectActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 77
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->readFromCache()V

    .line 78
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[\u4f20\u9012\u53c2\u6570\u7ed9\u57ce\u5e02\u63a7\u4ef6] adCode: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " cityName:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-class v0, Lcom/alipay/mobile/beehive/cityselect/service/CitySelectService;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/OpenPageHelper;->getExtServiceByInterface(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/cityselect/service/CitySelectService;

    .line 81
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->mCityCallBack:Lcom/alipay/mobile/beehive/cityselect/service/CitySelectService$ICitySelectCallBack;

    if-eqz v1, :cond_1

    .line 82
    new-instance v1, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;

    invoke-direct {v1}, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;-><init>()V

    .line 83
    iput-object p1, v1, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->adCode:Ljava/lang/String;

    .line 84
    iput-object p2, v1, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->city:Ljava/lang/String;

    .line 85
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->context:Landroid/app/Activity;

    sget v4, Lcom/alipay/android/phone/discovery/o2ohome/R$string;->select_city_title:I

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 86
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->normalList:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->normalList:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    iget-object v2, v2, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    .line 87
    :goto_0
    iget-object v4, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->hotList:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    if-eqz v4, :cond_0

    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->hotList:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    iget-object v3, v3, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    .line 88
    :cond_0
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v5, 0x1

    .line 90
    :goto_1
    iget-object v4, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->mCityCallBack:Lcom/alipay/mobile/beehive/cityselect/service/CitySelectService$ICitySelectCallBack;

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/beehive/cityselect/service/CitySelectService;->callCitySelect(Lcom/alipay/mobile/beehive/cityselect/model/CityVO;Ljava/util/List;Ljava/util/List;Lcom/alipay/mobile/beehive/cityselect/service/CitySelectService$ICitySelectCallBack;ZLjava/lang/String;)V

    .line 91
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->startRequestTask()V

    .line 93
    :cond_1
    return-void

    :cond_2
    move-object v2, v3

    .line 86
    goto :goto_0

    .line 88
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method
