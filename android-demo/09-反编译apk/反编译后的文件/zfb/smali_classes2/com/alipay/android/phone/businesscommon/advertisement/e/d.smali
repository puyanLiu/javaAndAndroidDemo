.class final Lcom/alipay/android/phone/businesscommon/advertisement/e/d;
.super Ljava/lang/Object;
.source "AdExcutorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/advertisement/e/a;

.field private final b:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSpaceInfoCallBack;


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/businesscommon/advertisement/e/a;Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSpaceInfoCallBack;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/e/d;->a:Lcom/alipay/android/phone/businesscommon/advertisement/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/e/d;->b:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSpaceInfoCallBack;

    .line 225
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 228
    const-string/jumbo v0, "AdExcutorService.init:Execute initialSpaceInfoRunnable"

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    .line 229
    new-instance v0, Lcom/alipay/android/phone/businesscommon/advertisement/b/a;

    invoke-direct {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/b/a;-><init>()V

    .line 232
    :try_start_0
    invoke-interface {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/a/a;->a()Lcom/alipay/cdp/common/service/facade/space/domain/SpaceQueryResult;

    move-result-object v0

    .line 233
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceQueryResult;->success:Z

    if-eqz v1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/e/d;->b:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSpaceInfoCallBack;

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/e/d;->b:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSpaceInfoCallBack;

    iget-object v2, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceQueryResult;->spaceInfoList:Ljava/util/List;

    invoke-interface {v1, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSpaceInfoCallBack;->onSuccess(Ljava/util/List;)V

    .line 237
    :cond_0
    iget-wide v1, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceQueryResult;->globalOpLogId:J

    invoke-static {v1, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->b(J)V

    .line 238
    iget-wide v1, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceQueryResult;->userOpLogId:J

    invoke-static {v1, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->c(J)V

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AdExcutorService.queryBySpaceCodeRunnable.run:result.spaceInfoList :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 240
    iget-object v2, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceQueryResult;->spaceInfoList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 239
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    .line 242
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a()Lcom/alipay/android/phone/businesscommon/advertisement/g/a;

    move-result-object v1

    .line 243
    iget-object v0, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceQueryResult;->spaceInfoList:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a(Ljava/util/List;)Z

    move-result v0

    .line 244
    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a(Z)V

    .line 245
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/e/a;->b()V

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AdExcutorService.init completed! success? "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/e/d;->a:Lcom/alipay/android/phone/businesscommon/advertisement/e/a;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/e/a;->a(Lcom/alipay/android/phone/businesscommon/advertisement/e/a;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :goto_0
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/e/a;->b()V

    .line 260
    :goto_1
    return-void

    .line 250
    :cond_1
    if-eqz v0, :cond_2

    .line 251
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "initialSpaceInfo faild :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceQueryResult;->resultDesc:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    :try_start_2
    const-string/jumbo v1, "initialSpaceInfo"

    invoke-static {v1, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 258
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/e/a;->b()V

    goto :goto_1

    .line 253
    :cond_2
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "initialSpaceInfo faild :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->b(Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 257
    :catchall_0
    move-exception v0

    .line 258
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/e/a;->b()V

    .line 259
    throw v0
.end method
