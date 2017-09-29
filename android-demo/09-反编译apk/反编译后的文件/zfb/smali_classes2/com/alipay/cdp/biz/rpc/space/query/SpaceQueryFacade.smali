.class public interface abstract Lcom/alipay/cdp/biz/rpc/space/query/SpaceQueryFacade;
.super Ljava/lang/Object;
.source "SpaceQueryFacade.java"


# virtual methods
.method public abstract initialSpaceInfo()Lcom/alipay/cdp/common/service/facade/space/domain/SpaceQueryResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.cdp.space.initialSpaceInfo"
    .end annotation
.end method

.method public abstract queryBySpaceCode(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceQueryReq;)Lcom/alipay/cdp/common/service/facade/space/domain/SpaceQueryResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.cdp.space.queryBySpaceCode"
    .end annotation
.end method
