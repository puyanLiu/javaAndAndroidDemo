.class public Lmtopsdk/mtop/intf/async4j/MtopBuilderForAsync4j;
.super Lmtopsdk/mtop/intf/MtopBuilder;
.source "MtopBuilderForAsync4j.java"


# instance fields
.field private enablePolling:Z

.field private interceptor:Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;


# direct methods
.method public constructor <init>(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lmtopsdk/mtop/intf/MtopBuilder;-><init>(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lmtopsdk/mtop/intf/MtopBuilder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method private intercept()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;

    invoke-direct {v0}, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;-><init>()V

    iput-object v0, p0, Lmtopsdk/mtop/intf/async4j/MtopBuilderForAsync4j;->interceptor:Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;

    .line 53
    iget-object v0, p0, Lmtopsdk/mtop/intf/async4j/MtopBuilderForAsync4j;->interceptor:Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;

    iget-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->setOriginalRequest(Lmtopsdk/mtop/domain/MtopRequest;)V

    .line 54
    iget-object v0, p0, Lmtopsdk/mtop/intf/async4j/MtopBuilderForAsync4j;->interceptor:Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;

    iget-object v1, p0, Lmtopsdk/mtop/intf/async4j/MtopBuilderForAsync4j;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v1, v1, Lmtopsdk/mtop/common/MtopNetworkProp;->ttid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->setTtid(Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lmtopsdk/mtop/intf/async4j/MtopBuilderForAsync4j;->interceptor:Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;

    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->listener:Lmtopsdk/mtop/common/MtopListener;

    check-cast v0, Lmtopsdk/mtop/common/DefaultMtopCallback;

    invoke-virtual {v1, v0}, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->setCallback(Lmtopsdk/mtop/common/DefaultMtopCallback;)V

    .line 56
    iget-object v0, p0, Lmtopsdk/mtop/intf/async4j/MtopBuilderForAsync4j;->interceptor:Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;

    iput-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->listener:Lmtopsdk/mtop/common/MtopListener;

    .line 57
    return-void
.end method


# virtual methods
.method public asyncRequest()Lmtopsdk/mtop/common/ApiID;
    .locals 3

    .prologue
    .line 28
    iget-boolean v0, p0, Lmtopsdk/mtop/intf/async4j/MtopBuilderForAsync4j;->enablePolling:Z

    if-eqz v0, :cond_0

    .line 29
    invoke-direct {p0}, Lmtopsdk/mtop/intf/async4j/MtopBuilderForAsync4j;->intercept()V

    .line 31
    const-string/jumbo v0, "m-async"

    .line 32
    const-string/jumbo v1, "10"

    .line 33
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 34
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-super {p0, v2}, Lmtopsdk/mtop/intf/MtopBuilder;->headers(Ljava/util/Map;)Lmtopsdk/mtop/intf/MtopBuilder;

    .line 38
    :cond_0
    invoke-super {p0}, Lmtopsdk/mtop/intf/MtopBuilder;->asyncRequest()Lmtopsdk/mtop/common/ApiID;

    move-result-object v0

    return-object v0
.end method

.method public cancelRequest()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lmtopsdk/mtop/intf/async4j/MtopBuilderForAsync4j;->interceptor:Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lmtopsdk/mtop/intf/async4j/MtopBuilderForAsync4j;->interceptor:Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;

    invoke-virtual {v0}, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->cancelPolling()V

    .line 45
    :cond_0
    return-void
.end method

.method public enablePolling(Z)V
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lmtopsdk/mtop/intf/async4j/MtopBuilderForAsync4j;->enablePolling:Z

    .line 49
    return-void
.end method
