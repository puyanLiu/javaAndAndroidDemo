.class public Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;
.super Ljava/lang/Object;
.source "FollowAccountBiz.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "chatsdk_FollowAccountBiz"

.field private static final lock:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field private configService:Lcom/alipay/mobile/base/config/ConfigService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 63
    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    .line 61
    iput-object v0, p0, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->configService:Lcom/alipay/mobile/base/config/ConfigService;

    .line 64
    return-void
.end method

.method private convert(Ljava/lang/String;Lcom/alipay/publiccore/client/model/FollowAccountInfo;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;
    .locals 3

    .prologue
    .line 925
    new-instance v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;

    iget-object v1, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->followObjectId:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    iget-object v1, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->avatar:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->avatar:Ljava/lang/String;

    .line 927
    iget-object v1, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->cltDefIconType:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->cltDefIconType:Ljava/lang/String;

    .line 928
    invoke-virtual {p2}, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->getDeleteType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->deleteType:Ljava/lang/String;

    .line 929
    iget-boolean v1, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->disturb:Z

    iput-boolean v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->disturb:Z

    .line 930
    iget-object v1, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->followType:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->followType:Ljava/lang/String;

    .line 931
    iget-wide v1, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->gmtFollowTime:J

    iput-wide v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->gmtFollowTime:J

    .line 932
    iget-object v1, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->gotoAppUri:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->gotoAppUri:Ljava/lang/String;

    .line 933
    iget-object v1, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->msgNoteType:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->msgNoteType:Ljava/lang/String;

    .line 934
    iget-object v1, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->name:Ljava/lang/String;

    .line 935
    iget-object v1, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->publicType:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->publicType:Ljava/lang/String;

    .line 936
    invoke-virtual {p2}, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->getTopType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->topType:Ljava/lang/String;

    .line 937
    iget-object v1, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->wgtMsgId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->wgtMsgId:Ljava/lang/String;

    .line 938
    iget-object v1, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->pinyin:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->pinyin:Ljava/lang/String;

    .line 939
    iget-object v1, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->isFollow:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->isFollow:Ljava/lang/String;

    .line 940
    iget-object v1, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->vip:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->vip:Ljava/lang/String;

    .line 941
    iget-object v1, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->pluginType:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->pluginType:Ljava/lang/String;

    .line 942
    iget-boolean v1, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->acceptMsg:Z

    iput-boolean v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->acceptMsg:Z

    .line 943
    return-object v0
.end method

.method private convert(Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;)Lcom/alipay/publiccore/client/result/OfficialHomeListResult;
    .locals 7

    .prologue
    .line 191
    if-nez p1, :cond_0

    .line 192
    const/4 v0, 0x0

    .line 243
    :goto_0
    return-object v0

    .line 194
    :cond_0
    new-instance v2, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;

    invoke-direct {v2}, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;-><init>()V

    .line 195
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->dynamicConfigUid:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->dynamicConfigUid:Ljava/lang/String;

    .line 196
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->userId:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->userId:Ljava/lang/String;

    .line 197
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->syncMaxOpLogId:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->syncMaxOpLogId:Ljava/lang/String;

    .line 199
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->success:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v2, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->success:Z

    .line 200
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->resultCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v2, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->resultCode:I

    .line 201
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->resultMsg:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->resultMsg:Ljava/lang/String;

    .line 202
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->pageNum:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v2, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->pageNum:I

    .line 203
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->pageSize:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v2, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->pageSize:I

    .line 204
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->rowCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v2, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->rowCount:I

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->followAccounts:Ljava/util/List;

    .line 208
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->followAccountList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v2

    .line 243
    goto :goto_0

    .line 208
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;

    .line 209
    new-instance v4, Lcom/alipay/publiccore/client/model/FollowAccountInfo;

    invoke-direct {v4}, Lcom/alipay/publiccore/client/model/FollowAccountInfo;-><init>()V

    .line 210
    iget-object v1, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->avatar:Ljava/lang/String;

    iput-object v1, v4, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->avatar:Ljava/lang/String;

    .line 211
    iget-object v1, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->avatar:Ljava/lang/String;

    iput-object v1, v4, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->avatar:Ljava/lang/String;

    .line 213
    iget-object v1, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->followObjectId:Ljava/lang/String;

    iput-object v1, v4, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->followObjectId:Ljava/lang/String;

    .line 214
    iget-object v1, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->name:Ljava/lang/String;

    iput-object v1, v4, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->name:Ljava/lang/String;

    .line 215
    iget-object v1, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->avatar:Ljava/lang/String;

    iput-object v1, v4, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->avatar:Ljava/lang/String;

    .line 216
    iget-object v1, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->latestMsg:Ljava/lang/String;

    iput-object v1, v4, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->latestMsg:Ljava/lang/String;

    .line 217
    iget-object v1, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->unReadMsgCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v4, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->unReadMsgCount:I

    .line 218
    iget-object v1, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->followType:Ljava/lang/String;

    iput-object v1, v4, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->followType:Ljava/lang/String;

    .line 220
    iget-object v1, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->gmtFollowTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->gmtFollowTime:J

    .line 221
    iget-object v1, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->latestMsgTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->latestMsgTime:J

    .line 223
    iget-object v1, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->msgNoteType:Ljava/lang/String;

    iput-object v1, v4, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->msgNoteType:Ljava/lang/String;

    .line 224
    iget-object v1, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->gotoAppUri:Ljava/lang/String;

    iput-object v1, v4, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->gotoAppUri:Ljava/lang/String;

    .line 226
    new-instance v1, Lcom/alipay/publiccore/client/model/OperateProperties;

    invoke-direct {v1}, Lcom/alipay/publiccore/client/model/OperateProperties;-><init>()V

    iput-object v1, v4, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->operateProperties:Lcom/alipay/publiccore/client/model/OperateProperties;

    .line 228
    iget-object v1, v4, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->operateProperties:Lcom/alipay/publiccore/client/model/OperateProperties;

    iget-object v5, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->operateProperties:Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;

    iget-object v5, v5, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->topType:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/alipay/publiccore/client/model/OperateProperties;->setTopType(Ljava/lang/String;)V

    .line 229
    iget-object v1, v4, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->operateProperties:Lcom/alipay/publiccore/client/model/OperateProperties;

    iget-object v5, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->operateProperties:Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;

    iget-object v5, v5, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->deleteType:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/alipay/publiccore/client/model/OperateProperties;->setDeleteType(Ljava/lang/String;)V

    .line 230
    iget-object v1, v4, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->operateProperties:Lcom/alipay/publiccore/client/model/OperateProperties;

    iget-object v5, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->operateProperties:Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;

    iget-object v5, v5, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->defaultOrder:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/alipay/publiccore/client/model/OperateProperties;->setDefaultOrder(Ljava/lang/String;)V

    .line 234
    iget-object v1, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->disturb:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v4, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->disturb:Z

    .line 235
    iget-object v1, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->isFollow:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "1"

    :goto_2
    iput-object v1, v4, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->isFollow:Ljava/lang/String;

    .line 236
    iget-object v1, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->vip:Ljava/lang/String;

    iput-object v1, v4, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->vip:Ljava/lang/String;

    .line 237
    iget-object v1, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->pluginType:Ljava/lang/String;

    iput-object v1, v4, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->pluginType:Ljava/lang/String;

    .line 238
    iget-object v0, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->acceptMsg:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v4, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->acceptMsg:Z

    .line 240
    iget-object v0, v2, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->followAccounts:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 235
    :cond_2
    const-string/jumbo v1, "0"

    goto :goto_2
.end method

.method private createOfficialHomeReq()Lcom/alipay/publiccore/client/req/OfficialHomeReq;
    .locals 3

    .prologue
    .line 285
    new-instance v0, Lcom/alipay/publiccore/client/req/OfficialHomeReq;

    invoke-direct {v0}, Lcom/alipay/publiccore/client/req/OfficialHomeReq;-><init>()V

    .line 286
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/publiccore/client/req/OfficialHomeReq;->setPageNum(I)V

    .line 287
    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/alipay/publiccore/client/req/OfficialHomeReq;->setPageSize(I)V

    .line 288
    const-string/jumbo v1, "Android"

    iput-object v1, v0, Lcom/alipay/publiccore/client/req/OfficialHomeReq;->terminal:Ljava/lang/String;

    .line 289
    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v1

    .line 290
    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/AppInfo;->getmChannels()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/publiccore/client/req/OfficialHomeReq;->channelPackage:Ljava/lang/String;

    .line 291
    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/publiccore/client/req/OfficialHomeReq;->clientVersion:Ljava/lang/String;

    .line 292
    return-object v0
.end method

.method private entryShouldShowPoint()Z
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->configService:Lcom/alipay/mobile/base/config/ConfigService;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->configService:Lcom/alipay/mobile/base/config/ConfigService;

    const-string/jumbo v1, "PUBLIC_PLATFORM_RED_DOT_TYPE"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    const-string/jumbo v1, "mixed"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 74
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private filterUseLess(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/client/model/FollowAccountInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/client/model/FollowAccountInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    if-nez p1, :cond_1

    .line 261
    const/4 p1, 0x0

    .line 275
    :cond_0
    return-object p1

    .line 263
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 265
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;

    .line 268
    const-string/jumbo v2, "ALIPAY_MSG"

    iget-object v3, v0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->followObjectId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 269
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 271
    :cond_3
    const-string/jumbo v2, "2014120100018252"

    iget-object v0, v0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->followObjectId:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 272
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private followListQuery(Lcom/alipay/publiccore/client/req/OfficialHomeReq;)Lcom/alipay/publiccore/client/result/OfficialHomeListResult;
    .locals 3

    .prologue
    .line 167
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 169
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 167
    const-class v1, Lcom/alipay/publiccore/biz/service/impl/rpc/OfficialAccountFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/publiccore/biz/service/impl/rpc/OfficialAccountFacade;

    .line 174
    invoke-direct {p0}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->isUsePBQuery()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    new-instance v1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;

    invoke-direct {v1}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;-><init>()V

    .line 176
    iget-object v2, p1, Lcom/alipay/publiccore/client/req/OfficialHomeReq;->terminal:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->terminal:Ljava/lang/String;

    .line 177
    iget-object v2, p1, Lcom/alipay/publiccore/client/req/OfficialHomeReq;->clientVersion:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->clientVersion:Ljava/lang/String;

    .line 178
    iget-object v2, p1, Lcom/alipay/publiccore/client/req/OfficialHomeReq;->channelPackage:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->channelPackage:Ljava/lang/String;

    .line 179
    iget-object v2, p1, Lcom/alipay/publiccore/client/req/OfficialHomeReq;->publicIds:Ljava/util/List;

    iput-object v2, v1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->publicIds:Ljava/util/List;

    .line 180
    iget v2, p1, Lcom/alipay/publiccore/client/req/OfficialHomeReq;->pageNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->pageNum:Ljava/lang/Integer;

    .line 181
    iget v2, p1, Lcom/alipay/publiccore/client/req/OfficialHomeReq;->pageSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->pageSize:Ljava/lang/Integer;

    .line 182
    invoke-interface {v0, v1}, Lcom/alipay/publiccore/biz/service/impl/rpc/OfficialAccountFacade;->queryUserFollower(Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;)Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;

    move-result-object v0

    .line 183
    invoke-direct {p0, v0}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->convert(Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;)Lcom/alipay/publiccore/client/result/OfficialHomeListResult;

    move-result-object v0

    .line 185
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0, p1}, Lcom/alipay/publiccore/biz/service/impl/rpc/OfficialAccountFacade;->queryUserFollowAccount(Lcom/alipay/publiccore/client/req/OfficialHomeReq;)Lcom/alipay/publiccore/client/result/OfficialHomeListResult;

    move-result-object v0

    goto :goto_0
.end method

.method private getFollowAccountBaseInfoFormDB(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;
    .locals 5

    .prologue
    .line 885
    const/4 v0, 0x0

    .line 887
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountBaseInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 891
    :goto_0
    return-object v0

    .line 888
    :catch_0
    move-exception v1

    .line 889
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "chatsdk_FollowAccountBiz"

    const-string/jumbo v4, "exception"

    invoke-interface {v2, v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getFollowAccountShowInfoFromDB(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;
    .locals 5

    .prologue
    .line 875
    const/4 v0, 0x0

    .line 877
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 881
    :goto_0
    return-object v0

    .line 878
    :catch_0
    move-exception v1

    .line 879
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "chatsdk_FollowAccountBiz"

    const-string/jumbo v4, "exception"

    invoke-interface {v2, v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private isUsePBQuery()Z
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->configService:Lcom/alipay/mobile/base/config/ConfigService;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->configService:Lcom/alipay/mobile/base/config/ConfigService;

    const-string/jumbo v1, "PUBLIC_PLATFORM_LIST_QUERY_WITH_PB"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    const-string/jumbo v1, "OFF"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    const/4 v0, 0x0

    .line 255
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isVip(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;)Z
    .locals 2

    .prologue
    .line 871
    iget-object v0, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->vip:Ljava/lang/String;

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public convertTabBundle(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;ZZ)Landroid/os/Bundle;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 326
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 327
    const-string/jumbo v0, "itemType"

    const-string/jumbo v4, "public_vip"

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string/jumbo v0, "itemId"

    iget-object v4, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->followObjectId:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string/jumbo v0, "displayName"

    iget-object v4, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->name:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string/jumbo v0, "bizMemo"

    iget-object v4, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->latestMsg:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string/jumbo v0, "icon"

    iget-object v4, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->avatar:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v0, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->gotoAppUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->gotoAppUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "alipays://platformapi/startapp?appId=20000042&publicId="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 334
    iget-object v4, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->followObjectId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "&publicName="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "&thirdPartyAccount"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->latestMsgThridAccount:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 335
    const-string/jumbo v4, "&followType=PUBLIC&actionType=TARGET_LIST&sourceId=friendTab"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 333
    iput-object v0, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->gotoAppUri:Ljava/lang/String;

    .line 337
    :cond_1
    const-string/jumbo v0, "uri"

    iget-object v4, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->gotoAppUri:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string/jumbo v0, "wgtnumber"

    iget-object v4, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->msgNoteType:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 341
    const-string/jumbo v0, "number"

    iget-object v4, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->msgNoteType:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 342
    :cond_2
    const-string/jumbo v0, "num"

    .line 346
    :goto_0
    const-string/jumbo v4, "redPointStyle"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-wide v4, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->latestMsgTime:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_7

    .line 348
    const-string/jumbo v0, "createTime"

    iget-wide v4, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->latestMsgTime:J

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 352
    :cond_3
    :goto_1
    const-string/jumbo v4, "notDisturb"

    iget-boolean v0, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->disturb:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_2
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 353
    const-string/jumbo v0, "unread"

    iget v4, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->unReadMsgCount:I

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 354
    if-eqz p3, :cond_9

    .line 355
    const-string/jumbo v0, "revert"

    invoke-virtual {v3, v0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 361
    :cond_4
    :goto_3
    iget-boolean v0, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->top:Z

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->topType:Ljava/lang/String;

    const-string/jumbo v4, "force"

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 362
    :cond_5
    const-string/jumbo v0, "top"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 368
    :goto_4
    const-string/jumbo v0, "lastOperateTime"

    iget-wide v1, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->lastOperateTime:J

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 369
    return-object v3

    .line 344
    :cond_6
    const-string/jumbo v0, "point"

    goto :goto_0

    .line 349
    :cond_7
    iget-wide v4, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->gmtFollowTime:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_3

    .line 350
    const-string/jumbo v0, "createTime"

    iget-wide v4, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->gmtFollowTime:J

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    :cond_8
    move v0, v2

    .line 352
    goto :goto_2

    .line 357
    :cond_9
    if-eqz p2, :cond_4

    .line 358
    const-string/jumbo v0, "holdPosition"

    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_3

    .line 364
    :cond_a
    const-string/jumbo v0, "top"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_4
.end method

.method public deleteFollowAccountInfoByUserId(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 126
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->deleteFollowAccountBaseInfo(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->deleteFollowAccountShowInfo(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v0

    const-string/jumbo v1, "20000042"

    invoke-virtual {v0, p1, v1, p2}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatDeleteMsgByTargetId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "FollowAccountBiz"

    const-string/jumbo v3, "exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteShowItem(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 620
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v0

    const-string/jumbo v1, "20000042"

    invoke-virtual {v0, p1, v1, p2}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatDeleteMsgByTargetId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->deleteFollowAccountShowInfo(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    const/4 v0, 0x1

    .line 627
    :goto_0
    return v0

    .line 624
    :catch_0
    move-exception v0

    .line 625
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "chatsdk_FollowAccountBiz"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 627
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public generateMergeItem(Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 13

    .prologue
    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    .line 380
    const-string/jumbo v0, ""

    .line 385
    const/4 v2, 0x0

    .line 387
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v1

    const/4 v5, 0x0

    invoke-interface {v1, p1, v5}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getLatestFollowAccountShowModel(Ljava/lang/String;I)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 391
    :goto_0
    if-eqz v1, :cond_9

    .line 392
    iget-wide v5, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->latestMsgTime:J

    .line 393
    iget-object v2, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->latestMsg:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->name:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->latestMsg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 398
    :cond_0
    :goto_1
    iget-wide v1, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->gmtFollowTime:J

    move-wide v11, v1

    move-object v2, v0

    move-wide v0, v11

    .line 402
    :goto_2
    const-string/jumbo v8, ""

    .line 403
    cmp-long v9, v5, v3

    if-lez v9, :cond_5

    move-object v8, v2

    .line 436
    :goto_3
    cmp-long v2, v5, v3

    if-nez v2, :cond_8

    .line 442
    :goto_4
    const-string/jumbo v2, "point"

    .line 445
    :try_start_1
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, p1, v6}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->calculateUnreadMsgCount(Ljava/lang/String;I)Lcom/alipay/mobile/android/main/publichome/dao/impl/UnreadCount;

    move-result-object v5

    .line 446
    if-eqz v5, :cond_7

    .line 447
    iget v6, v5, Lcom/alipay/mobile/android/main/publichome/dao/impl/UnreadCount;->numberCount:I

    if-lez v6, :cond_6

    .line 448
    iget v5, v5, Lcom/alipay/mobile/android/main/publichome/dao/impl/UnreadCount;->numberCount:I
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 449
    :try_start_2
    const-string/jumbo v2, "num"
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    .line 471
    :goto_5
    invoke-direct {p0}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->entryShouldShowPoint()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 472
    const-string/jumbo v2, "point"

    .line 474
    :cond_1
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 475
    const-string/jumbo v7, "itemType"

    const-string/jumbo v9, "public"

    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-string/jumbo v7, "itemId"

    const-string/jumbo v9, "publicEntryId"

    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string/jumbo v7, "displayName"

    sget v9, Lcom/alipay/android/phone/publicplatform/synccenter/R$string;->FollowAccountBiz_473:I

    invoke-static {v9}, Lcom/alipay/mobile/chatsdk/util/ContextUtils;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string/jumbo v7, "bizMemo"

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string/jumbo v7, "uri"

    const-string/jumbo v8, "alipays://platformapi/startapp?appId=20000101&target=chatList"

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string/jumbo v7, "redPointStyle"

    invoke-virtual {v6, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    cmp-long v2, v0, v3

    if-lez v2, :cond_2

    .line 483
    const-string/jumbo v2, "createTime"

    invoke-virtual {v6, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 485
    :cond_2
    if-eqz p2, :cond_3

    .line 486
    const-string/jumbo v0, "holdPosition"

    invoke-virtual {v6, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 488
    :cond_3
    const-string/jumbo v0, "unread"

    invoke-virtual {v6, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 489
    return-object v6

    .line 388
    :catch_0
    move-exception v1

    .line 389
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string/jumbo v6, "chatsdk_FollowAccountBiz"

    const-string/jumbo v8, "exception"

    invoke-interface {v5, v6, v8, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v2

    goto/16 :goto_0

    .line 395
    :cond_4
    iget-object v2, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->latestMsg:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 396
    iget-object v0, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->latestMsg:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    move-wide v5, v3

    .line 432
    goto/16 :goto_3

    .line 450
    :cond_6
    :try_start_3
    iget v6, v5, Lcom/alipay/mobile/android/main/publichome/dao/impl/UnreadCount;->dotCount:I

    if-lez v6, :cond_7

    .line 451
    iget v5, v5, Lcom/alipay/mobile/android/main/publichome/dao/impl/UnreadCount;->dotCount:I
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    .line 452
    :try_start_4
    const-string/jumbo v2, "point"
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_5

    .line 466
    :catch_1
    move-exception v5

    move-object v6, v5

    move v5, v7

    .line 467
    :goto_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    const-string/jumbo v9, "chatsdk_FollowAccountBiz"

    const-string/jumbo v10, "exception"

    invoke-interface {v7, v9, v10, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 466
    :catch_2
    move-exception v6

    goto :goto_6

    :cond_7
    move v5, v7

    goto/16 :goto_5

    :cond_8
    move-wide v0, v5

    goto/16 :goto_4

    :cond_9
    move-wide v5, v3

    move-object v2, v0

    move-wide v0, v3

    goto/16 :goto_2
.end method

.method public getFollowAccountBaseInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;
    .locals 4

    .prologue
    .line 88
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountBaseInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "FollowAccountBiz"

    const-string/jumbo v3, "exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFollowAccountShowModel(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;
    .locals 4

    .prologue
    .line 79
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowModel(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 83
    :goto_0
    return-object v0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "FollowAccountBiz"

    const-string/jumbo v3, "exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFollowAccountShowModelFormDB(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;
    .locals 5

    .prologue
    .line 895
    const/4 v0, 0x0

    .line 897
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowModel(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 901
    :goto_0
    return-object v0

    .line 898
    :catch_0
    move-exception v1

    .line 899
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "chatsdk_FollowAccountBiz"

    const-string/jumbo v4, "exception"

    invoke-interface {v2, v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getFollowAccountShowModels(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, p1, v1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowModels(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 143
    :goto_0
    return-object v0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "chatsdk_FollowAccountBiz"

    const-string/jumbo v3, "exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initFollowAccountInfos(Ljava/lang/String;Ljava/util/List;)Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/client/model/FollowAccountInfo;",
            ">;)",
            "Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 652
    if-nez p2, :cond_0

    .line 653
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 656
    :cond_0
    new-instance v3, Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;

    invoke-direct {v3}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;-><init>()V

    .line 657
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;

    .line 659
    if-eqz v0, :cond_1

    .line 660
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;->loadPinyinLib()V

    .line 662
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_3

    .line 669
    if-eqz v0, :cond_2

    .line 670
    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;->releasePinyinLib()V

    .line 673
    :cond_2
    return-object v3

    .line 662
    :cond_3
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/publiccore/client/model/FollowAccountInfo;

    .line 663
    invoke-virtual {p0, p1, v1, v0}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->updateFollowAccountInfo(Ljava/lang/String;Lcom/alipay/publiccore/client/model/FollowAccountInfo;Lcom/alipay/mobile/personalbase/service/PinyinSearchService;)Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;

    move-result-object v5

    .line 664
    iget v1, v3, Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;->modifyCount:I

    iget v6, v5, Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;->modifyCount:I

    add-int/2addr v1, v6

    iput v1, v3, Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;->modifyCount:I

    .line 665
    iget-boolean v1, v5, Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;->vip2NoVip:Z

    if-eqz v1, :cond_5

    move v1, v2

    :goto_1
    iput-boolean v1, v3, Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;->vip2NoVip:Z

    .line 666
    iget-boolean v1, v5, Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;->noVip2Vip:Z

    if-eqz v1, :cond_6

    move v1, v2

    :goto_2
    iput-boolean v1, v3, Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;->noVip2Vip:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 668
    :catchall_0
    move-exception v1

    .line 669
    if-eqz v0, :cond_4

    .line 670
    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;->releasePinyinLib()V

    .line 672
    :cond_4
    throw v1

    .line 665
    :cond_5
    :try_start_2
    iget-boolean v1, v3, Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;->vip2NoVip:Z

    goto :goto_1

    .line 666
    :cond_6
    iget-boolean v1, v3, Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;->noVip2Vip:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method isBaseInfoChanged(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 955
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 958
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->avatar:Ljava/lang/String;

    iget-object v2, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->avatar:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 959
    iget-object v1, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->deleteType:Ljava/lang/String;

    iget-object v2, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->deleteType:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 960
    iget-boolean v1, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->disturb:Z

    iget-boolean v2, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->disturb:Z

    if-ne v1, v2, :cond_0

    .line 961
    iget-object v1, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->followType:Ljava/lang/String;

    iget-object v2, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->followType:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 962
    iget-wide v1, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->gmtFollowTime:J

    iget-wide v3, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->gmtFollowTime:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 963
    iget-object v1, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->gotoAppUri:Ljava/lang/String;

    iget-object v2, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->gotoAppUri:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 964
    iget-object v1, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->msgNoteType:Ljava/lang/String;

    iget-object v2, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->msgNoteType:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 965
    iget-object v1, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->name:Ljava/lang/String;

    iget-object v2, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 966
    iget-object v1, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->topType:Ljava/lang/String;

    iget-object v2, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->topType:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 967
    iget-object v1, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->wgtMsgId:Ljava/lang/String;

    iget-object v2, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->wgtMsgId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 968
    iget-object v1, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->pinyin:Ljava/lang/String;

    iget-object v2, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->pinyin:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 969
    iget-object v1, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->isFollow:Ljava/lang/String;

    iget-object v2, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->isFollow:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 970
    iget-object v1, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->vip:Ljava/lang/String;

    iget-object v2, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->vip:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 971
    iget-boolean v1, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->acceptMsg:Z

    iget-boolean v2, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->acceptMsg:Z

    if-ne v1, v2, :cond_0

    .line 972
    iget-object v1, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->pluginType:Ljava/lang/String;

    iget-object v2, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->pluginType:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 958
    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public markReaded(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;
    .locals 3

    .prologue
    .line 530
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    move-result-object v0

    .line 531
    if-eqz v0, :cond_0

    .line 532
    const/4 v1, 0x0

    iput v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->markUnReadMsgCount:I

    .line 533
    const/4 v1, 0x0

    iput v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->unReadMsgCount:I

    .line 534
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->updateFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;)V

    .line 536
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v0

    const-string/jumbo v1, "20000042"

    invoke-virtual {v0, p1, v1, p2}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatMarkMsgReadedByTargetId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowModel(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 542
    :goto_0
    return-object v0

    .line 539
    :catch_0
    move-exception v0

    .line 540
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 542
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markunReaded(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 554
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    move-result-object v1

    .line 555
    if-eqz v1, :cond_0

    .line 556
    const/4 v2, 0x1

    iput v2, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->unReadMsgCount:I

    .line 558
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->updateFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    :cond_0
    :goto_0
    return v0

    .line 561
    :catch_0
    move-exception v0

    .line 562
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "chatsdk_FollowAccountBiz"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 564
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/publiccore/client/model/FollowAccountInfo;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;
    .locals 3

    .prologue
    .line 914
    new-instance v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    iget-object v1, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->followObjectId:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    const-string/jumbo v1, "default"

    invoke-virtual {p2}, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->getTopType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 917
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->top:Z

    .line 918
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->topOperateTime:J

    .line 920
    :cond_0
    return-object v0
.end method

.method public declared-synchronized processPPChatMsgSummary(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)V
    .locals 6

    .prologue
    .line 820
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 822
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v1, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->toId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    move-result-object v0

    .line 823
    if-nez v0, :cond_1

    .line 824
    const-string/jumbo v0, "chatsdk_FollowAccountBiz"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "receive message and not exist showed item "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->toId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", add show item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    new-instance v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    iget-object v1, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->toId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    iget-object v1, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mSum:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    .line 827
    invoke-static {p1}, Lcom/alipay/mobile/publicplatform/relation/RelationUtils;->calculateMsgTime(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgTime:J

    .line 828
    const-string/jumbo v1, "n"

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->isRead:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 829
    const/4 v1, 0x1

    iput v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->unReadMsgCount:I

    .line 831
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "chatsdk_FollowAccountBiz"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "update summary userId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", followObjectId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->followObjectId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , latestMsg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", latestMsgTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ,unReadMsgCount"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->unReadMsgCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->updateFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 846
    :goto_0
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 848
    :goto_1
    monitor-exit p0

    return-void

    .line 834
    :cond_1
    :try_start_2
    const-string/jumbo v1, "chatsdk_FollowAccountBiz"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "receive message and  exist showed item "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->toId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", and update show item"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    iget-object v1, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mSum:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    .line 836
    invoke-static {p1}, Lcom/alipay/mobile/publicplatform/relation/RelationUtils;->calculateMsgTime(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgTime:J

    .line 837
    const-string/jumbo v1, "n"

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->isRead:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 838
    iget v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->unReadMsgCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->unReadMsgCount:I

    .line 840
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "chatsdk_FollowAccountBiz"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "update summary userId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", followObjectId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->followObjectId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , latestMsg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", latestMsgTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ,unReadMsgCount"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->unReadMsgCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->updateFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_0

    .line 843
    :catch_0
    move-exception v0

    .line 844
    :try_start_3
    const-string/jumbo v1, "chatsdk_FollowAccountBiz"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "OnDispatch: [ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 846
    :try_start_4
    sget-object v0, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 820
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 845
    :catchall_1
    move-exception v0

    .line 846
    :try_start_5
    sget-object v1, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 847
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public queryFewUserFollowAccountFromRemote(Ljava/util/List;)Lcom/alipay/publiccore/client/result/OfficialHomeListResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/publiccore/client/result/OfficialHomeListResult;"
        }
    .end annotation

    .prologue
    .line 501
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 502
    :cond_0
    const/4 v0, 0x0

    .line 517
    :cond_1
    :goto_0
    return-object v0

    .line 504
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->createOfficialHomeReq()Lcom/alipay/publiccore/client/req/OfficialHomeReq;

    move-result-object v1

    .line 505
    iput-object p1, v1, Lcom/alipay/publiccore/client/req/OfficialHomeReq;->publicIds:Ljava/util/List;

    .line 506
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 507
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 508
    const-class v2, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 506
    const-class v2, Lcom/alipay/publiccore/biz/service/impl/rpc/OfficialAccountFacade;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/publiccore/biz/service/impl/rpc/OfficialAccountFacade;

    .line 509
    invoke-interface {v0, v1}, Lcom/alipay/publiccore/biz/service/impl/rpc/OfficialAccountFacade;->queryUserFollowAccountByPIds(Lcom/alipay/publiccore/client/req/OfficialHomeReq;)Lcom/alipay/publiccore/client/result/OfficialHomeListResult;

    move-result-object v0

    .line 512
    if-eqz v0, :cond_1

    .line 513
    iget-object v1, v0, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->followAccounts:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->filterUseLess(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->followAccounts:Ljava/util/List;

    goto :goto_0
.end method

.method public queryTabList(Ljava/lang/String;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 305
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, p1, v2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowModels(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 306
    if-eqz v0, :cond_1

    .line 307
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_3

    .line 317
    :cond_1
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->generateMergeItem(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 318
    if-eqz v0, :cond_2

    .line 319
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    :cond_2
    return-object v1

    .line 307
    :cond_3
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;

    .line 308
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->latestMsg:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 309
    const/4 v3, 0x0

    invoke-virtual {p0, v0, p2, v3}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->convertTabBundle(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;ZZ)Landroid/os/Bundle;

    move-result-object v0

    .line 310
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "chatsdk_FollowAccountBiz"

    const-string/jumbo v4, "query vip items exception"

    invoke-interface {v2, v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public queryUserFollowAccountFromRemote()Lcom/alipay/publiccore/client/result/OfficialHomeListResult;
    .locals 5

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->createOfficialHomeReq()Lcom/alipay/publiccore/client/req/OfficialHomeReq;

    move-result-object v0

    .line 154
    const/4 v1, 0x0

    .line 156
    :try_start_0
    invoke-direct {p0, v0}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->followListQuery(Lcom/alipay/publiccore/client/req/OfficialHomeReq;)Lcom/alipay/publiccore/client/result/OfficialHomeListResult;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 157
    if-eqz v0, :cond_0

    .line 158
    :try_start_1
    iget-object v1, v0, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->followAccounts:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->filterUseLess(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->followAccounts:Ljava/util/List;
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_1

    .line 163
    :cond_0
    :goto_0
    return-object v0

    .line 160
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 161
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 160
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public declared-synchronized recalulateUnreadMsgCount(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;)V
    .locals 6

    .prologue
    .line 783
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 784
    :try_start_1
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v1, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->followObjectId:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 787
    if-nez v2, :cond_0

    .line 810
    :try_start_2
    sget-object v0, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 812
    :goto_0
    monitor-exit p0

    return-void

    .line 790
    :cond_0
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v0

    const-string/jumbo v1, "20000042"

    iget-object v3, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->userId:Ljava/lang/String;

    iget-object v4, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->followObjectId:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getLastSummeryForTarget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/chatsdk/api/TargetSummary;

    move-result-object v1

    .line 791
    if-eqz v1, :cond_3

    iget-object v0, v1, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    if-eqz v0, :cond_3

    .line 792
    iget-object v0, v1, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    invoke-static {v0}, Lcom/alipay/mobile/chatsdk/util/SummaryUtil;->completeMsgSummary(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    .line 793
    iget v0, v1, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->unReadCount:I

    iput v0, v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->unReadMsgCount:I

    .line 794
    iget-object v0, v1, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    iget-object v0, v0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mSum:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :goto_1
    iput-object v0, v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    .line 795
    iget-object v0, v1, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    iget-object v0, v0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mExt:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgThridAccount:Ljava/lang/String;

    .line 796
    iget-object v0, v1, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    iget-wide v3, v0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->bTime:J

    .line 797
    iget-object v0, v1, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    iget-object v0, v0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mct:Ljava/util/Date;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    iget-object v0, v0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mct:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 796
    :goto_2
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgTime:J

    .line 798
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    invoke-interface {v0, p1, v2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->updateFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 810
    :goto_3
    :try_start_4
    sget-object v0, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 783
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 794
    :cond_1
    :try_start_5
    iget-object v0, v1, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    iget-object v0, v0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mSum:Ljava/lang/String;

    goto :goto_1

    .line 797
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_2

    .line 800
    :cond_3
    const-string/jumbo v0, ""

    iput-object v0, v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    .line 801
    const/4 v0, 0x0

    iput v0, v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->unReadMsgCount:I

    .line 802
    const-string/jumbo v0, ""

    iput-object v0, v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgThridAccount:Ljava/lang/String;

    .line 803
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    invoke-interface {v0, p1, v2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->updateFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 806
    :catch_0
    move-exception v0

    .line 807
    :try_start_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "chatsdk_FollowAccountBiz"

    const-string/jumbo v3, "exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    .line 809
    :catchall_1
    move-exception v0

    .line 810
    :try_start_7
    sget-object v1, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 811
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public top(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 576
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    move-result-object v1

    .line 577
    if-eqz v1, :cond_0

    .line 578
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->top:Z

    .line 579
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->topOperateTime:J

    .line 580
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->updateFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    :cond_0
    :goto_0
    return v0

    .line 583
    :catch_0
    move-exception v0

    .line 584
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "chatsdk_FollowAccountBiz"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 586
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public untop(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 598
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    move-result-object v1

    .line 599
    if-eqz v1, :cond_0

    .line 600
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->top:Z

    .line 601
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->updateFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    :cond_0
    const/4 v0, 0x1

    .line 607
    :goto_0
    return v0

    .line 604
    :catch_0
    move-exception v1

    .line 605
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "chatsdk_FollowAccountBiz"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public updateFollowAccountInfo(Ljava/lang/String;Lcom/alipay/publiccore/client/model/FollowAccountInfo;)Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;
    .locals 2

    .prologue
    .line 638
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;

    .line 640
    if-eqz v0, :cond_0

    .line 641
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;->loadPinyinLib()V

    .line 643
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->updateFollowAccountInfo(Ljava/lang/String;Lcom/alipay/publiccore/client/model/FollowAccountInfo;Lcom/alipay/mobile/personalbase/service/PinyinSearchService;)Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 645
    if-eqz v0, :cond_1

    .line 646
    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;->releasePinyinLib()V

    .line 643
    :cond_1
    return-object v1

    .line 644
    :catchall_0
    move-exception v1

    .line 645
    if-eqz v0, :cond_2

    .line 646
    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;->releasePinyinLib()V

    .line 648
    :cond_2
    throw v1
.end method

.method public declared-synchronized updateFollowAccountInfo(Ljava/lang/String;Lcom/alipay/publiccore/client/model/FollowAccountInfo;Lcom/alipay/mobile/personalbase/service/PinyinSearchService;)Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 678
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 679
    new-instance v0, Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;

    invoke-direct {v0}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 680
    if-nez p2, :cond_0

    .line 776
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 774
    :goto_0
    monitor-exit p0

    return-object v0

    .line 684
    :cond_0
    :try_start_2
    iget-object v1, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->pluginType:Ljava/lang/String;

    const-string/jumbo v3, "sina_news"

    invoke-static {v1, v3}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->isFollow:Ljava/lang/String;

    const-string/jumbo v3, "1"

    invoke-static {v1, v3}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    if-nez v1, :cond_1

    .line 776
    :try_start_3
    sget-object v1, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 678
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 692
    :cond_1
    :try_start_4
    iget-object v1, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->followObjectId:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->getFollowAccountBaseInfoFormDB(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;

    move-result-object v3

    .line 693
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v4, "chatsdk_FollowAccountBiz"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "add new followAccountinfo userId="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " followObjectId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->followObjectId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    if-nez v3, :cond_7

    .line 696
    const/4 v1, 0x1

    iput v1, v0, Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;->modifyCount:I

    .line 697
    iget-object v1, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->name:Ljava/lang/String;

    invoke-static {p3, v1}, Lcom/alipay/android/phone/publicplatform/common/api/impl/PinyinUtils;->name2Pinyin(Lcom/alipay/mobile/personalbase/service/PinyinSearchService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->pinyin:Ljava/lang/String;

    .line 698
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "chatsdk_FollowAccountBiz"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "add new followAccountinfo "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " pinyin:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->pinyin:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->convert(Ljava/lang/String;Lcom/alipay/publiccore/client/model/FollowAccountInfo;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;

    move-result-object v1

    .line 700
    iget-wide v3, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->gmtFollowTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 701
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->gmtFollowTime:J

    .line 705
    :cond_2
    iget-object v3, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->followObjectId:Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->getFollowAccountShowInfoFromDB(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    move-result-object v3

    .line 706
    if-nez v3, :cond_6

    .line 707
    iget-object v3, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->pluginType:Ljava/lang/String;

    const-string/jumbo v4, "sina_news"

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 708
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->mergeFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/publiccore/client/model/FollowAccountInfo;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    move-result-object v2

    .line 710
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "chatsdk_FollowAccountBiz"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "add new showInfo top:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->top:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " topOperateTime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->topOperateTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 759
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 761
    :try_start_5
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v3

    invoke-interface {v3, p1, v1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->saveFollowBaseAccountInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;)V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 766
    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    .line 768
    :try_start_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "chatsdk_FollowAccountBiz"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "to save showInfo top:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->top:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " topOperateTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->topOperateTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v1

    invoke-interface {v1, p1, v2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->updateFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;)V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 776
    :cond_5
    :goto_3
    :try_start_7
    sget-object v1, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 713
    :cond_6
    :try_start_8
    const-string/jumbo v4, "default"

    invoke-virtual {p2}, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->getTopType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v2, v3

    .line 752
    :goto_4
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->top:Z

    .line 753
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->topOperateTime:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    .line 775
    :catchall_1
    move-exception v0

    .line 776
    :try_start_9
    sget-object v1, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 777
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 720
    :cond_7
    :try_start_a
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v4, "chatsdk_FollowAccountBiz"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "update followAccountinfo old name"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "old pingyin:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->pinyin:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " new name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " new pinyin:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->pinyin:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->convert(Ljava/lang/String;Lcom/alipay/publiccore/client/model/FollowAccountInfo;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;

    move-result-object v1

    .line 724
    iget-object v4, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->name:Ljava/lang/String;

    iget-object v5, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->name:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 725
    iget-object v4, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->pinyin:Ljava/lang/String;

    iput-object v4, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->pinyin:Ljava/lang/String;

    .line 729
    :goto_5
    invoke-virtual {p0, v1, v3}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->isBaseInfoChanged(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 730
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v5, "chatsdk_FollowAccountBiz"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "need update  followAccountinfo "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " pinyin:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->pinyin:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    const/4 v4, 0x1

    iput v4, v0, Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;->modifyCount:I

    .line 733
    invoke-direct {p0, v3}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->isVip(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;)Z

    move-result v4

    .line 734
    invoke-direct {p0, v1}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->isVip(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;)Z

    move-result v5

    .line 735
    if-eqz v4, :cond_a

    if-nez v5, :cond_a

    .line 736
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;->vip2NoVip:Z

    .line 744
    :cond_8
    :goto_6
    const-string/jumbo v4, "default"

    invoke-virtual {p2}, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->getTopType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "default"

    iget-object v3, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->topType:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 745
    iget-object v3, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->followObjectId:Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->getFollowAccountShowInfoFromDB(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    move-result-object v3

    .line 746
    if-nez v3, :cond_b

    .line 747
    iget-object v3, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->pluginType:Ljava/lang/String;

    const-string/jumbo v4, "sina_news"

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 748
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->mergeFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/publiccore/client/model/FollowAccountInfo;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    move-result-object v2

    goto/16 :goto_1

    .line 727
    :cond_9
    iget-object v4, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->name:Ljava/lang/String;

    invoke-static {p3, v4}, Lcom/alipay/android/phone/publicplatform/common/api/impl/PinyinUtils;->name2Pinyin(Lcom/alipay/mobile/personalbase/service/PinyinSearchService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->pinyin:Ljava/lang/String;

    goto :goto_5

    .line 737
    :cond_a
    if-nez v4, :cond_8

    if-eqz v5, :cond_8

    .line 738
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;->noVip2Vip:Z

    goto :goto_6

    .line 762
    :catch_0
    move-exception v1

    .line 763
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "chatsdk_FollowAccountBiz"

    const-string/jumbo v5, "exception"

    invoke-interface {v3, v4, v5, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 770
    :catch_1
    move-exception v1

    .line 771
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "chatsdk_FollowAccountBiz"

    const-string/jumbo v4, "exception"

    invoke-interface {v2, v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_3

    :cond_b
    move-object v2, v3

    goto/16 :goto_4

    :cond_c
    move-object v1, v2

    goto :goto_6
.end method

.method public declared-synchronized updateFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;)V
    .locals 4

    .prologue
    .line 858
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->updateFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 862
    :goto_0
    monitor-exit p0

    return-void

    .line 859
    :catch_0
    move-exception v0

    .line 860
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "chatsdk_FollowAccountBiz"

    const-string/jumbo v3, "exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 858
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateOnlySummary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;
    .locals 3

    .prologue
    .line 984
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    move-result-object v0

    .line 987
    if-nez v0, :cond_0

    .line 988
    const-string/jumbo v0, "chatsdk_FollowAccountBiz"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "receive message and not exist showed item "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", add show item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    new-instance v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    invoke-direct {v0, p1, p2}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    :cond_0
    iput-object p3, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    .line 994
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->updateFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;)V

    .line 997
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowModel(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1002
    :goto_0
    return-object v0

    .line 999
    :catch_0
    move-exception v0

    .line 1000
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "chatsdk_FollowAccountBiz"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1002
    const/4 v0, 0x0

    goto :goto_0
.end method
