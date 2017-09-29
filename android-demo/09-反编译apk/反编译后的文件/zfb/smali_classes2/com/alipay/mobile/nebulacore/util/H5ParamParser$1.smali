.class Lcom/alipay/mobile/nebulacore/util/H5ParamParser$1;
.super Ljava/util/HashMap;
.source "H5ParamParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 16
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 18
    const-string/jumbo v0, "url"

    new-instance v1, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;

    const-string/jumbo v2, "url"

    const-string/jumbo v3, "u"

    .line 19
    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-string/jumbo v0, "defaultTitle"

    new-instance v1, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;

    const-string/jumbo v2, "defaultTitle"

    .line 22
    const-string/jumbo v3, "dt"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 21
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string/jumbo v0, "showTitleBar"

    new-instance v1, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;

    const-string/jumbo v2, "showTitleBar"

    .line 25
    const-string/jumbo v3, "st"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 24
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string/jumbo v0, "showFavorites"

    new-instance v1, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;

    const-string/jumbo v2, "showFavorites"

    .line 28
    const-string/jumbo v3, "sf"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 27
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string/jumbo v0, "showReportBtn"

    new-instance v1, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;

    const-string/jumbo v2, "showReportBtn"

    .line 31
    const-string/jumbo v3, "sr"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 30
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string/jumbo v0, "showToolBar"

    new-instance v1, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;

    const-string/jumbo v2, "showToolBar"

    .line 34
    const-string/jumbo v3, "sb"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 33
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string/jumbo v0, "showLoading"

    new-instance v1, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;

    const-string/jumbo v2, "showLoading"

    .line 37
    const-string/jumbo v3, "sl"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 36
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string/jumbo v0, "closeButtonText"

    new-instance v1, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;

    const-string/jumbo v2, "closeButtonText"

    .line 40
    const-string/jumbo v3, "cb"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string/jumbo v0, "ssoLoginEnabled"

    new-instance v1, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;

    const-string/jumbo v2, "ssoLoginEnabled"

    .line 43
    const-string/jumbo v3, "le"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 42
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string/jumbo v0, "safePayEnabled"

    new-instance v1, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;

    const-string/jumbo v2, "safePayEnabled"

    .line 46
    const-string/jumbo v3, "pe"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string/jumbo v0, "safePayContext"

    new-instance v1, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;

    const-string/jumbo v2, "safePayContext"

    .line 49
    const-string/jumbo v3, "sc"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 48
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string/jumbo v0, "readTitle"

    new-instance v1, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;

    const-string/jumbo v2, "readTitle"

    .line 52
    const-string/jumbo v3, "rt"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 51
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string/jumbo v0, "bizScenario"

    new-instance v1, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;

    const-string/jumbo v2, "bizScenario"

    .line 55
    const-string/jumbo v3, "bz"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 54
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string/jumbo v0, "antiPhishing"

    new-instance v1, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;

    const-string/jumbo v2, "antiPhishing"

    .line 58
    const-string/jumbo v3, "ap"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 57
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string/jumbo v0, "toolbarMenu"

    new-instance v1, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;

    const-string/jumbo v2, "toolbarMenu"

    .line 61
    const-string/jumbo v3, "tm"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 60
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string/jumbo v0, "backBehavior"

    new-instance v1, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;

    const-string/jumbo v2, "backBehavior"

    .line 64
    const-string/jumbo v3, "bb"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v5, "back"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 63
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string/jumbo v0, "pullRefresh"

    new-instance v1, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;

    const-string/jumbo v2, "pullRefresh"

    .line 67
    const-string/jumbo v3, "pr"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 66
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string/jumbo v0, "showTitleLoading"

    new-instance v1, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;

    const-string/jumbo v2, "showTitleLoading"

    .line 70
    const-string/jumbo v3, "tl"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 69
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string/jumbo v0, "showProgress"

    new-instance v1, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;

    const-string/jumbo v2, "showProgress"

    .line 73
    const-string/jumbo v3, "sp"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 72
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string/jumbo v0, "smartToolBar"

    new-instance v1, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;

    const-string/jumbo v2, "smartToolBar"

    .line 76
    const-string/jumbo v3, "tb"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 75
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string/jumbo v0, "enableProxy"

    new-instance v1, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;

    const-string/jumbo v2, "enableProxy"

    .line 79
    const-string/jumbo v3, "ep"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 78
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string/jumbo v0, "canPullDown"

    new-instance v1, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;

    const-string/jumbo v2, "canPullDown"

    .line 82
    const-string/jumbo v3, "pd"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 81
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string/jumbo v0, "showDomain"

    new-instance v1, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;

    const-string/jumbo v2, "showDomain"

    .line 85
    const-string/jumbo v3, "sd"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 84
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string/jumbo v0, "prefetchLocation"

    new-instance v1, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;

    const-string/jumbo v2, "prefetchLocation"

    .line 88
    const-string/jumbo v3, "pl"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 87
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string/jumbo v0, "showOptionMenu"

    new-instance v1, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;

    const-string/jumbo v2, "showOptionMenu"

    .line 91
    const-string/jumbo v3, "so"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 90
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string/jumbo v0, "shareChannels"

    new-instance v1, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;

    const-string/jumbo v2, "shareChannels"

    .line 94
    const-string/jumbo v3, "scs"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 93
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string/jumbo v0, "backgroundColor"

    new-instance v1, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;

    const-string/jumbo v2, "backgroundColor"

    .line 98
    const-string/jumbo v3, "bc"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->INT:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 97
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string/jumbo v0, "interceptJump"

    new-instance v1, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;

    const-string/jumbo v2, "interceptJump"

    const-string/jumbo v3, "ij"

    .line 101
    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 100
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string/jumbo v0, "closeAfterPayFinish"

    .line 103
    new-instance v1, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;

    const-string/jumbo v2, "closeAfterPayFinish"

    const-string/jumbo v3, "cf"

    .line 104
    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 103
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 102
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string/jumbo v0, "transparent"

    new-instance v1, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;

    const-string/jumbo v2, "transparent"

    const-string/jumbo v3, "tt"

    .line 106
    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebulacore/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 105
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    return-void
.end method
