.class public Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;
.super Ljava/lang/Object;
.source "GroupInfoProcesser.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

.field private final c:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

.field private final d:Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

.field private final e:Lcom/alipay/mobile/framework/service/common/RpcService;

.field private final f:Lcom/alipay/mobilechat/biz/group/rpc/GroupRpcService;

.field private final g:Lcom/alipay/mobilechat/biz/group/rpc/GroupRpcService;

.field private final h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

.field private final i:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;->a:Ljava/lang/String;

    .line 52
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;->b:Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    .line 53
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;->c:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    .line 54
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;->d:Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

    .line 55
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 56
    const-class v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;->e:Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;->e:Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v2, Lcom/alipay/mobilechat/biz/group/rpc/GroupRpcService;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilechat/biz/group/rpc/GroupRpcService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;->g:Lcom/alipay/mobilechat/biz/group/rpc/GroupRpcService;

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;->e:Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v2, Lcom/alipay/mobilechat/biz/group/rpc/GroupRpcService;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilechat/biz/group/rpc/GroupRpcService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;->f:Lcom/alipay/mobilechat/biz/group/rpc/GroupRpcService;

    .line 59
    const-class v0, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;->i:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    .line 60
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 61
    return-void
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "processGroupsInfo:\u5904\u7406\u4ece\u670d\u52a1\u7aef\u83b7\u53d6\u5230\u7684\u7fa4"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 175
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;->b:Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->refreshDataSource(Ljava/util/List;)Z

    move-result v0

    .line 195
    if-eqz v0, :cond_5

    move-object v0, v1

    .line 198
    :goto_1
    return-object v0

    .line 175
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;

    .line 176
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;->memberInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 177
    new-instance v4, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;

    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;->a:Ljava/lang/String;

    invoke-direct {v4, v5, v0, v3}, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;-><init>(Ljava/lang/String;Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;Ljava/util/List;)V

    .line 178
    iget-object v0, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;->a:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 180
    iput-boolean v8, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->isCurrentUserQuit:Z

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v5, "SocialSdk_Sdk"

    .line 183
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "processGroupsInfo:\u7fa4"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u5305\u542b"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u7fa4\u6210\u5458"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 182
    invoke-interface {v0, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->memberAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 185
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;->c:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    iget-object v5, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->memberAccounts:Ljava/util/List;

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v8}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->refreshDataSource(Ljava/util/List;ZZ)Z

    .line 187
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;->d:Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;->saveGroupMemberNicks(Ljava/util/List;)V

    .line 190
    :cond_4
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 198
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public markGroupTop(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 202
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;->b:Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->queryGroupById(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;

    move-result-object v1

    .line 203
    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->top:Z

    if-ne v1, p2, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-object v0

    .line 206
    :cond_1
    new-instance v1, Lcom/alipay/mobilechat/biz/group/rpc/request/GroupConfigModifyReq;

    invoke-direct {v1}, Lcom/alipay/mobilechat/biz/group/rpc/request/GroupConfigModifyReq;-><init>()V

    .line 207
    iput-object p1, v1, Lcom/alipay/mobilechat/biz/group/rpc/request/GroupConfigModifyReq;->groupId:Ljava/lang/String;

    .line 208
    const-string/jumbo v2, "top"

    iput-object v2, v1, Lcom/alipay/mobilechat/biz/group/rpc/request/GroupConfigModifyReq;->bizType:Ljava/lang/String;

    .line 209
    iput-boolean p2, v1, Lcom/alipay/mobilechat/biz/group/rpc/request/GroupConfigModifyReq;->top:Z

    .line 210
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;->g:Lcom/alipay/mobilechat/biz/group/rpc/GroupRpcService;

    invoke-interface {v2, v1}, Lcom/alipay/mobilechat/biz/group/rpc/GroupRpcService;->modifyGroupConfig(Lcom/alipay/mobilechat/biz/group/rpc/request/GroupConfigModifyReq;)Lcom/alipay/mobilechat/common/service/facade/result/CommonResult;

    move-result-object v1

    .line 211
    if-eqz v1, :cond_2

    iget v2, v1, Lcom/alipay/mobilechat/common/service/facade/result/CommonResult;->resultCode:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_2

    .line 212
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;->b:Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    const-string/jumbo v2, "top"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->updateCertainGroupStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 214
    :cond_2
    if-eqz v1, :cond_0

    .line 215
    iget-object v0, v1, Lcom/alipay/mobilechat/common/service/facade/result/CommonResult;->resultDesc:Ljava/lang/String;

    goto :goto_0
.end method

.method public declared-synchronized queryAndLoadGroupProfile(Ljava/util/List;Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "queryAndLoadGroupProfile:\u8981\u67e5\u8be2\u7684\u5217\u8868\u4e3a\u7a7a"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 136
    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 137
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 138
    if-eqz p2, :cond_2

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;->b:Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->checkExistingGroups(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 140
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_0

    .line 144
    invoke-interface {v2, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-object v1, v0

    .line 146
    :cond_2
    new-instance v0, Lcom/alipay/mobilechat/biz/group/rpc/request/QueryGroupInfoReq;

    invoke-direct {v0}, Lcom/alipay/mobilechat/biz/group/rpc/request/QueryGroupInfoReq;-><init>()V

    .line 147
    iput-object v2, v0, Lcom/alipay/mobilechat/biz/group/rpc/request/QueryGroupInfoReq;->groupIds:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    :try_start_2
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_Sdk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "queryAndLoadGroupProfile:\u8bf7\u6c42"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "\u7fa4\u4fe1\u606f"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;->g:Lcom/alipay/mobilechat/biz/group/rpc/GroupRpcService;

    invoke-interface {v2, v0}, Lcom/alipay/mobilechat/biz/group/rpc/GroupRpcService;->queryGroupInfo(Lcom/alipay/mobilechat/biz/group/rpc/request/QueryGroupInfoReq;)Lcom/alipay/mobilechat/biz/group/rpc/response/GroupResult;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_5

    iget v2, v0, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupResult;->resultCode:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_5

    iget-object v2, v0, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupResult;->group:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupResult;->group:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 152
    iget-object v0, v0, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupResult;->group:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 154
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 158
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "queryAndLoadGroupProfile:\u5408\u5e76\u7f51\u7edc\u8bf7\u6c42\u540e,\u603b\u5171"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u7fa4\u4fe1\u606f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 158
    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 160
    goto/16 :goto_0

    .line 154
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;

    .line 155
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupId:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    :try_start_3
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "queryAndLoadGroupProfile:\u672c\u5730\u53ea\u6709"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u4e2a\u7fa4\u4fe1\u606f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 167
    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    .line 169
    goto/16 :goto_0

    .line 162
    :cond_5
    :try_start_4
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v3, "queryAndLoadGroupProfile:\u8bf7\u6c42\u7fa4\u4fe1\u606f\u8fd4\u56de\u7ed3\u679c\u4e3a\u7a7a"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tryToRefreshData(Z)V
    .locals 14

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "group_load_v2"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 84
    if-eqz p1, :cond_0

    if-nez v1, :cond_8

    .line 85
    :cond_0
    const-wide/16 v3, 0x0

    .line 88
    const/4 v1, 0x0

    move v10, v0

    move-wide v11, v3

    move-wide v4, v11

    move v3, v10

    move-object v13, v1

    move v1, v0

    move-object v0, v13

    .line 91
    :goto_0
    if-nez v3, :cond_5

    .line 93
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;->g:Lcom/alipay/mobilechat/biz/group/rpc/GroupRpcService;

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobilechat/biz/group/rpc/GroupRpcService;->queryAllJoinedGroup(J)Lcom/alipay/mobilechat/biz/group/rpc/response/GroupResult;

    move-result-object v3

    .line 97
    :goto_1
    if-eqz v3, :cond_2

    iget v4, v3, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupResult;->resultCode:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_2

    .line 99
    iget-object v1, v3, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupResult;->group:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, v3, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupResult;->group:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    const-string/jumbo v4, "tryToRefreshData:\u6ca1\u6709\u901a\u8baf\u5f55\u7684\u7fa4"

    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 119
    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "group_load_v2"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->putBoolean(Ljava/lang/String;Z)V

    .line 122
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 123
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;->i:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;->a:Ljava/lang/String;

    const-string/jumbo v3, "UCHAT-M"

    invoke-virtual {v1, v2, v3, v0}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->updateBizSyncKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "tryToRefreshData:\u7fa4\u5217\u8868\u62c9\u53d6\u540e\u7248\u672c\u53f7"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :goto_3
    return-void

    .line 95
    :cond_5
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;->f:Lcom/alipay/mobilechat/biz/group/rpc/GroupRpcService;

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobilechat/biz/group/rpc/GroupRpcService;->queryAllJoinedGroup(J)Lcom/alipay/mobilechat/biz/group/rpc/response/GroupResult;

    move-result-object v3

    goto :goto_1

    .line 103
    :cond_6
    iget-boolean v1, v3, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupResult;->hasMore:Z

    .line 104
    iget-wide v4, v3, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupResult;->lastSyncKey:J

    .line 105
    iget-object v0, v3, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupResult;->syncMaxOpId:Ljava/lang/String;

    .line 107
    iget-object v3, v3, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupResult;->group:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 108
    if-nez v3, :cond_7

    .line 109
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v6, "SocialSdk_Sdk"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "tryToRefreshData:\u6ca1\u83b7\u53d6\u5230\u7fa4\u5217\u8868\u4fe1\u606f"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " hm="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 110
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 109
    invoke-interface {v3, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :goto_4
    if-nez v1, :cond_9

    move v1, v2

    goto :goto_2

    .line 112
    :cond_7
    iget-object v6, p0, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v7, "SocialSdk_Sdk"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "tryToRefreshData:\u83b7\u53d6\u5230"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, "\u7fa4\u4fe1\u606f hm="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 113
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-interface {v6, v7, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 127
    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "tryToRefreshData:\u5df2\u7ecf\u83b7\u53d6\u8fc7\u7fa4\u5217\u8868,\u4e0d\u9700\u8981\u518d\u6b21\u83b7\u53d6"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    move v3, v1

    move v1, v2

    goto/16 :goto_0
.end method
