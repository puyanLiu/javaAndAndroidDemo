.class public final Lcom/alipay/android/phone/businesscommon/advertisement/b/a;
.super Ljava/lang/Object;
.source "AdBizImpl.java"

# interfaces
.implements Lcom/alipay/android/phone/businesscommon/advertisement/a/a;


# instance fields
.field private a:Lcom/alipay/cdp/biz/rpc/space/feedback/SpaceFeedbackFacade;

.field private b:Lcom/alipay/cdp/biz/rpc/space/query/SpaceQueryFacade;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-class v0, Lcom/alipay/cdp/biz/rpc/space/feedback/SpaceFeedbackFacade;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/b;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/cdp/biz/rpc/space/feedback/SpaceFeedbackFacade;

    .line 31
    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/b/a;->a:Lcom/alipay/cdp/biz/rpc/space/feedback/SpaceFeedbackFacade;

    .line 33
    const-class v0, Lcom/alipay/cdp/biz/rpc/space/query/SpaceQueryFacade;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/b;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/cdp/biz/rpc/space/query/SpaceQueryFacade;

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/b/a;->b:Lcom/alipay/cdp/biz/rpc/space/query/SpaceQueryFacade;

    .line 34
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceFeedbackReq;)Lcom/alipay/cdp/common/service/facade/space/domain/SpaceFeedbackResult;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/b/a;->a:Lcom/alipay/cdp/biz/rpc/space/feedback/SpaceFeedbackFacade;

    invoke-interface {v0, p1}, Lcom/alipay/cdp/biz/rpc/space/feedback/SpaceFeedbackFacade;->feedback(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceFeedbackReq;)Lcom/alipay/cdp/common/service/facade/space/domain/SpaceFeedbackResult;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lcom/alipay/cdp/common/service/facade/space/domain/SpaceQueryResult;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/b/a;->b:Lcom/alipay/cdp/biz/rpc/space/query/SpaceQueryFacade;

    invoke-interface {v0}, Lcom/alipay/cdp/biz/rpc/space/query/SpaceQueryFacade;->initialSpaceInfo()Lcom/alipay/cdp/common/service/facade/space/domain/SpaceQueryResult;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceQueryReq;)Lcom/alipay/cdp/common/service/facade/space/domain/SpaceQueryResult;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/b/a;->b:Lcom/alipay/cdp/biz/rpc/space/query/SpaceQueryFacade;

    invoke-interface {v0, p1}, Lcom/alipay/cdp/biz/rpc/space/query/SpaceQueryFacade;->queryBySpaceCode(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceQueryReq;)Lcom/alipay/cdp/common/service/facade/space/domain/SpaceQueryResult;

    move-result-object v0

    return-object v0
.end method
