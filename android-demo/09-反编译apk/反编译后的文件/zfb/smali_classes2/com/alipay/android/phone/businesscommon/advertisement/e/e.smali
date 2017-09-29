.class final Lcom/alipay/android/phone/businesscommon/advertisement/e/e;
.super Ljava/lang/Object;
.source "AdExcutorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/advertisement/e/a;

.field private final b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceQueryReq;

.field private final c:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSpaceInfoCallBack;

.field private final d:Z


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/businesscommon/advertisement/e/a;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceQueryReq;ZLcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSpaceInfoCallBack;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/e/e;->a:Lcom/alipay/android/phone/businesscommon/advertisement/e/a;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/e/e;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceQueryReq;

    .line 135
    iput-object p4, p0, Lcom/alipay/android/phone/businesscommon/advertisement/e/e;->c:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSpaceInfoCallBack;

    .line 136
    iput-boolean p3, p0, Lcom/alipay/android/phone/businesscommon/advertisement/e/e;->d:Z

    .line 137
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Execute queryRunnable:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/e/e;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceQueryReq;

    iget-object v2, v2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceQueryReq;->spaceCodeList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 141
    const-string/jumbo v2, " immediately:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/e/e;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 140
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    .line 142
    new-instance v1, Lcom/alipay/android/phone/businesscommon/advertisement/b/a;

    invoke-direct {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/b/a;-><init>()V

    .line 145
    :try_start_0
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/e/e;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceQueryReq;

    invoke-interface {v1, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/a/a;->a(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceQueryReq;)Lcom/alipay/cdp/common/service/facade/space/domain/SpaceQueryResult;

    move-result-object v3

    .line 147
    if-eqz v3, :cond_9

    iget-boolean v1, v3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceQueryResult;->success:Z

    if-eqz v1, :cond_9

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AdExcutorService.query.run:result.spaceInfoList :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    iget-object v2, v3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceQueryResult;->spaceInfoList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 148
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    .line 151
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 152
    iget-boolean v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/e/e;->d:Z

    if-nez v1, :cond_1

    iget-object v1, v3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceQueryResult;->spaceInfoList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 154
    iget-object v1, v3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceQueryResult;->spaceInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    .line 167
    :cond_1
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a()Lcom/alipay/android/phone/businesscommon/advertisement/g/a;

    move-result-object v1

    .line 168
    iget-object v4, v3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceQueryResult;->spaceInfoList:Ljava/util/List;

    .line 167
    invoke-virtual {v1, v4}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a(Ljava/util/List;)Z

    .line 169
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/e/e;->c:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSpaceInfoCallBack;

    if-eqz v1, :cond_4

    iget-object v1, v3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceQueryResult;->spaceInfoList:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 170
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 172
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    .line 188
    :cond_3
    iget-object v1, v3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceQueryResult;->spaceInfoList:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 189
    iget-object v1, v3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceQueryResult;->spaceInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_8

    .line 192
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/e/e;->c:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSpaceInfoCallBack;

    iget-object v2, v3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceQueryResult;->spaceInfoList:Ljava/util/List;

    invoke-interface {v1, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSpaceInfoCallBack;->onSuccess(Ljava/util/List;)V

    .line 211
    :cond_4
    :goto_2
    return-void

    .line 154
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    .line 155
    if-eqz v1, :cond_0

    .line 156
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a()Lcom/alipay/android/phone/businesscommon/advertisement/g/a;

    move-result-object v5

    .line 159
    iget-object v6, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a(Ljava/lang/String;)Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    move-result-object v5

    .line 158
    invoke-static {v5}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a(Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;)Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    move-result-object v5

    .line 160
    if-eqz v5, :cond_0

    .line 161
    invoke-virtual {v5, v1}, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, v5, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceCode:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v1

    .line 206
    const-string/jumbo v2, "queryBySpaceCode"

    invoke-static {v2, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/e/e;->c:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSpaceInfoCallBack;

    if-eqz v1, :cond_4

    .line 208
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/e/e;->c:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSpaceInfoCallBack;

    invoke-interface {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSpaceInfoCallBack;->onFail()V

    goto :goto_2

    .line 172
    :cond_6
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 173
    iget-object v1, v3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceQueryResult;->spaceInfoList:Ljava/util/List;

    .line 174
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 175
    :cond_7
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 176
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    .line 177
    if-eqz v1, :cond_7

    .line 178
    iget-object v6, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceCode:Ljava/lang/String;

    if-eqz v6, :cond_7

    .line 179
    iget-object v6, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceCode:Ljava/lang/String;

    .line 180
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 181
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "AdExcutorService.query.run:filter same spaceInfo :"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 181
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    .line 183
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 189
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    .line 190
    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->b(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    goto/16 :goto_1

    .line 197
    :cond_9
    if-eqz v3, :cond_a

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "queryBySpaceCode faild :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceQueryResult;->resultDesc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->b(Ljava/lang/String;)V

    .line 201
    :goto_4
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/e/e;->c:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSpaceInfoCallBack;

    if-eqz v1, :cond_4

    .line 202
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/e/e;->c:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSpaceInfoCallBack;

    invoke-interface {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSpaceInfoCallBack;->onFail()V

    goto/16 :goto_2

    .line 200
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "queryBySpaceCode faild :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method
