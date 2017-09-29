.class public Lmtopsdk/security/SecuritySignImpl;
.super Ljava/lang/Object;
.source "SecuritySignImpl.java"

# interfaces
.implements Lmtopsdk/security/ISign;


# instance fields
.field private a:Lcom/taobao/securityjni/StaticDataStore;

.field private b:Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

.field private c:Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lmtopsdk/security/SecuritySignImpl;->a:Lcom/taobao/securityjni/StaticDataStore;

    .line 33
    iput-object v0, p0, Lmtopsdk/security/SecuritySignImpl;->b:Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    .line 34
    iput-object v0, p0, Lmtopsdk/security/SecuritySignImpl;->c:Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 192
    if-nez p0, :cond_0

    const-string/jumbo p0, ""

    :cond_0
    return-object p0
.end method

.method private static a(Ljava/util/Map;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 103
    :cond_0
    const/4 v0, 0x0

    .line 118
    :goto_0
    return-object v0

    .line 105
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 106
    const-string/jumbo v2, "ECODE"

    const-string/jumbo v0, "ecode"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lmtopsdk/security/SecuritySignImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string/jumbo v2, "DATA"

    const-string/jumbo v0, "data"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lmtopsdk/security/SecuritySignImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string/jumbo v2, "TIME"

    const-string/jumbo v0, "t"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lmtopsdk/security/SecuritySignImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string/jumbo v2, "API"

    const-string/jumbo v0, "api"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lmtopsdk/security/SecuritySignImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string/jumbo v2, "V"

    const-string/jumbo v0, "v"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lmtopsdk/security/SecuritySignImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string/jumbo v2, "SID"

    const-string/jumbo v0, "sid"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lmtopsdk/security/SecuritySignImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string/jumbo v2, "TTID"

    const-string/jumbo v0, "ttid"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lmtopsdk/security/SecuritySignImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string/jumbo v2, "DEVICEID"

    const-string/jumbo v0, "deviceId"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lmtopsdk/security/SecuritySignImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string/jumbo v2, "LAT"

    const-string/jumbo v0, "lat"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lmtopsdk/security/SecuritySignImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string/jumbo v2, "LNG"

    const-string/jumbo v0, "lng"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lmtopsdk/security/SecuritySignImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string/jumbo v2, "EXT"

    const-string/jumbo v0, "extdata"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lmtopsdk/security/SecuritySignImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 118
    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 177
    invoke-static {p2}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-object v0

    .line 182
    :cond_1
    :try_start_0
    iget-object v1, p0, Lmtopsdk/security/SecuritySignImpl;->c:Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lmtopsdk/security/SecuritySignImpl;->c:Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;

    invoke-interface {v1, p1, p2}, Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;->getSecurityBodyData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v1

    .line 186
    const-string/jumbo v2, "mtopsdk.SecuritySignImpl"

    const-string/jumbo v3, "[getSecBodyData] ISecurityBodyComponent getSecurityBodyData(String,String) error"

    invoke-static {v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 125
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-object v0

    .line 129
    :cond_1
    iget-object v1, p0, Lmtopsdk/security/SecuritySignImpl;->b:Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    if-nez v1, :cond_2

    .line 130
    const-string/jumbo v1, "mtopsdk.SecuritySignImpl"

    const-string/jumbo v2, "[getMtopSignApi4]SecurityGuardManager is null,please call ISign init()"

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_2
    :try_start_0
    new-instance v1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;

    invoke-direct {v1}, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;-><init>()V

    .line 136
    iput-object p2, v1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    .line 137
    const/4 v2, 0x4

    iput v2, v1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->requestType:I

    .line 138
    invoke-static {p1}, Lmtopsdk/security/SecuritySignImpl;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, v1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->paramMap:Ljava/util/Map;

    .line 139
    iget-object v2, p0, Lmtopsdk/security/SecuritySignImpl;->b:Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    invoke-virtual {v2}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getSecureSignatureComp()Lcom/taobao/wireless/security/sdk/securesignature/ISecureSignatureComponent;

    move-result-object v2

    .line 140
    invoke-interface {v2, v1}, Lcom/taobao/wireless/security/sdk/securesignature/ISecureSignatureComponent;->signRequest(Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v1

    .line 142
    const-string/jumbo v2, "mtopsdk.SecuritySignImpl"

    const-string/jumbo v3, "[getMtopSignApi4] ISecureSignatureComponent signRequest error"

    invoke-static {v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Lmtopsdk/security/ISign$SignCtx;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 63
    iget-object v0, p1, Lmtopsdk/security/ISign$SignCtx;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p1, Lmtopsdk/security/ISign$SignCtx;->b:Ljava/lang/String;

    .line 71
    :goto_0
    return-object v0

    .line 70
    :cond_0
    new-instance v0, Lcom/taobao/securityjni/tools/DataContext;

    iget v1, p1, Lmtopsdk/security/ISign$SignCtx;->a:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/taobao/securityjni/tools/DataContext;-><init>(I[B)V

    .line 71
    iget-object v1, p0, Lmtopsdk/security/SecuritySignImpl;->a:Lcom/taobao/securityjni/StaticDataStore;

    invoke-virtual {v1, v0}, Lcom/taobao/securityjni/StaticDataStore;->getAppKey(Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;I)V
    .locals 7

    .prologue
    .line 37
    if-nez p1, :cond_0

    .line 38
    const-string/jumbo v0, "mtopsdk.SecuritySignImpl"

    const-string/jumbo v1, "[init]SecuritySignImpl init.context is null"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :goto_0
    return-void

    .line 42
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 44
    new-instance v2, Landroid/content/ContextWrapper;

    invoke-direct {v2, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v3, Lcom/taobao/securityjni/StaticDataStore;

    invoke-direct {v3, v2}, Lcom/taobao/securityjni/StaticDataStore;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v3, p0, Lmtopsdk/security/SecuritySignImpl;->a:Lcom/taobao/securityjni/StaticDataStore;

    .line 46
    iget-object v3, p0, Lmtopsdk/security/SecuritySignImpl;->a:Lcom/taobao/securityjni/StaticDataStore;

    new-instance v4, Lcom/taobao/securityjni/tools/DataContext;

    const/4 v5, 0x0

    invoke-direct {v4, p2, v5}, Lcom/taobao/securityjni/tools/DataContext;-><init>(I[B)V

    invoke-virtual {v3, v4}, Lcom/taobao/securityjni/StaticDataStore;->getAppKey(Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v3

    .line 47
    const-string/jumbo v4, "mtopsdk.SecuritySignImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[init]SecuritySignImpl ISign init.set GlobalAppKey="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {v3}, Lcom/taobao/securityjni/GlobalInit;->SetGlobalAppKey(Ljava/lang/String;)V

    .line 49
    invoke-static {v2}, Lcom/taobao/securityjni/GlobalInit;->GlobalSecurityInitAsyncSo(Landroid/content/ContextWrapper;)V

    .line 51
    invoke-static {p1}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v2

    iput-object v2, p0, Lmtopsdk/security/SecuritySignImpl;->b:Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    .line 53
    iget-object v2, p0, Lmtopsdk/security/SecuritySignImpl;->b:Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    invoke-virtual {v2}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getSecurityBodyComp()Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;

    move-result-object v2

    iput-object v2, p0, Lmtopsdk/security/SecuritySignImpl;->c:Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;

    .line 54
    iget-object v2, p0, Lmtopsdk/security/SecuritySignImpl;->c:Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;

    invoke-interface {v2, v3}, Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;->initSecurityBody(Ljava/lang/String;)Z

    .line 55
    const-string/jumbo v2, "mtopsdk.SecuritySignImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[init]SecuritySignImpl ISign init succeed.init time="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    const-string/jumbo v1, "mtopsdk.SecuritySignImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[init]SecuritySignImpl init securityguard error.---"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final b(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 151
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-object v0

    .line 155
    :cond_1
    iget-object v1, p0, Lmtopsdk/security/SecuritySignImpl;->b:Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    if-nez v1, :cond_2

    .line 156
    const-string/jumbo v1, "mtopsdk.SecuritySignImpl"

    const-string/jumbo v2, "[getMtopSignApi4Ext]SecurityGuardManager is null,please call ISign init()"

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_2
    :try_start_0
    new-instance v1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;

    invoke-direct {v1}, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;-><init>()V

    .line 162
    iput-object p2, v1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    .line 163
    const/16 v2, 0xf

    iput v2, v1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->requestType:I

    .line 164
    invoke-static {p1}, Lmtopsdk/security/SecuritySignImpl;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, v1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->paramMap:Ljava/util/Map;

    .line 165
    iget-object v2, p0, Lmtopsdk/security/SecuritySignImpl;->b:Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    invoke-virtual {v2}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getSecureSignatureComp()Lcom/taobao/wireless/security/sdk/securesignature/ISecureSignatureComponent;

    move-result-object v2

    .line 166
    invoke-interface {v2, v1}, Lcom/taobao/wireless/security/sdk/securesignature/ISecureSignatureComponent;->signRequest(Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v1

    .line 168
    const-string/jumbo v2, "mtopsdk.SecuritySignImpl"

    const-string/jumbo v3, "[getMtopSignApi4Ext] ISecureSignatureComponent signRequest error"

    invoke-static {v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
