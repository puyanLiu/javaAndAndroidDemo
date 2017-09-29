.class public Lcom/alipay/mobile/h5container/api/H5SsoFlagHolder;
.super Ljava/lang/Object;
.source "H5SsoFlagHolder.java"


# static fields
.field public static final DOMAIN_TYPE_INVALID:Ljava/lang/String; = "INVALID_DOMAIN"

.field public static final DOMAIN_TYPE_LAIWANG:Ljava/lang/String; = "laiwangDomains"

.field public static final DOMAIN_TYPE_WEIBO:Ljava/lang/String; = "weiboDomains"

.field private static SsoFlagMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static tbSsoLoginStartTime:J

.field private static final weiboCookieName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5SsoFlagHolder$1;

    invoke-direct {v0}, Lcom/alipay/mobile/h5container/api/H5SsoFlagHolder$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5SsoFlagHolder;->weiboCookieName:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5SsoFlagHolder;->SsoFlagMap:Ljava/util/HashMap;

    .line 32
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alipay/mobile/h5container/api/H5SsoFlagHolder;->tbSsoLoginStartTime:J

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTbSsoLoginStartTime()J
    .locals 2

    .prologue
    .line 75
    sget-wide v0, Lcom/alipay/mobile/h5container/api/H5SsoFlagHolder;->tbSsoLoginStartTime:J

    return-wide v0
.end method

.method public static initialize(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/h5container/api/H5SsoFlagHolder;->SsoFlagMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 42
    :cond_0
    return-void

    .line 39
    :cond_1
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 40
    sget-object v2, Lcom/alipay/mobile/h5container/api/H5SsoFlagHolder;->SsoFlagMap:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Boolean;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static needSso(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5SsoFlagHolder;->SsoFlagMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5SsoFlagHolder;->SsoFlagMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 48
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setNeedAutoLogin(Z)V
    .locals 4

    .prologue
    .line 63
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 64
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 65
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5SsoFlagHolder;->weiboCookieName:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5SsoFlagHolder;->SsoFlagMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alipay/mobile/h5container/api/H5SsoFlagHolder;->tbSsoLoginStartTime:J

    .line 72
    return-void

    .line 65
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    const-string/jumbo v3, ".weibo.cn"

    invoke-virtual {v1, v3, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 69
    sget-object v2, Lcom/alipay/mobile/h5container/api/H5SsoFlagHolder;->SsoFlagMap:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p0}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static setTbSsoLoginStartTime(J)V
    .locals 0

    .prologue
    .line 79
    sput-wide p0, Lcom/alipay/mobile/h5container/api/H5SsoFlagHolder;->tbSsoLoginStartTime:J

    .line 80
    return-void
.end method

.method public static updateNeedSsoFlag(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 52
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5SsoFlagHolder;->SsoFlagMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_0
    return-void
.end method
