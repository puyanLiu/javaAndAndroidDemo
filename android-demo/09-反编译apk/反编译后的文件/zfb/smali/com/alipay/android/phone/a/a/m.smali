.class public final Lcom/alipay/android/phone/a/a/m;
.super Ljava/lang/Object;
.source "ServerRequester.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static c:Lcom/alipay/android/mobilesearch/biz/rpc/service/SearchFacade;

.field private static d:Ljava/lang/String;

.field private static e:Lcom/alipay/android/phone/a/a/m;

.field private static i:Ljava/lang/String;


# instance fields
.field private f:Ljava/lang/String;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/alipay/android/app/template/service/DynamicTemplateService;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "gift"

    aput-object v1, v0, v3

    const-string/jumbo v1, "contact"

    aput-object v1, v0, v4

    const-string/jumbo v1, "messagegroup"

    aput-object v1, v0, v5

    const-string/jumbo v1, "messagelog"

    aput-object v1, v0, v6

    const-string/jumbo v1, "advertising"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "app"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "publicplatformclient"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "messagebox"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "alppass"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "bill"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "stockalipay"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 24
    const-string/jumbo v2, "movie"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "taobao_shop"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "publicplatform"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "helpcenter"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "movieshow"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "moviecinema"

    aput-object v2, v0, v1

    .line 23
    sput-object v0, Lcom/alipay/android/phone/a/a/m;->a:[Ljava/lang/String;

    .line 25
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "gift"

    aput-object v1, v0, v3

    const-string/jumbo v1, "app"

    aput-object v1, v0, v4

    const-string/jumbo v1, "contact"

    aput-object v1, v0, v5

    const-string/jumbo v1, "messagegroup"

    aput-object v1, v0, v6

    const-string/jumbo v1, "messagelog"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "advertising"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "publicplatformclient"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "messagebox"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "alppass"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "bill"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "stockalipay"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 26
    const-string/jumbo v2, "movie"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "taobao_shop"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "publicplatform"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "helpcenter"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "movieshow"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "moviecinema"

    aput-object v2, v0, v1

    .line 25
    sput-object v0, Lcom/alipay/android/phone/a/a/m;->b:[Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "hometab"

    sput-object v0, Lcom/alipay/android/phone/a/a/m;->i:Ljava/lang/String;

    .line 22
    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/a/a/m;->g:Ljava/util/ArrayList;

    .line 49
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 50
    const-class v1, Lcom/alipay/android/mobilesearch/biz/rpc/service/SearchFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mobilesearch/biz/rpc/service/SearchFacade;

    sput-object v0, Lcom/alipay/android/phone/a/a/m;->c:Lcom/alipay/android/mobilesearch/biz/rpc/service/SearchFacade;

    .line 52
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    iput-object v0, p0, Lcom/alipay/android/phone/a/a/m;->h:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    .line 53
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/m;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 54
    sget-object v1, Lcom/alipay/android/phone/a/a/m;->a:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 57
    return-void

    .line 54
    :cond_0
    aget-object v3, v1, v0

    .line 55
    iget-object v4, p0, Lcom/alipay/android/phone/a/a/m;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a()Lcom/alipay/android/phone/a/a/m;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/alipay/android/phone/a/a/m;->e:Lcom/alipay/android/phone/a/a/m;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/alipay/android/phone/a/a/m;

    invoke-direct {v0}, Lcom/alipay/android/phone/a/a/m;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/a/a/m;->e:Lcom/alipay/android/phone/a/a/m;

    .line 45
    :cond_0
    sget-object v0, Lcom/alipay/android/phone/a/a/m;->e:Lcom/alipay/android/phone/a/a/m;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/phone/a/a/m;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/m;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/phone/a/a/m;Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchResult;)V
    .locals 7

    .prologue
    .line 139
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchResult;->searchParams:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/phone/a/a/m;->f:Ljava/lang/String;

    const-string/jumbo v0, "jiushi"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "query : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchResult;->query:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " searchParam : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/a/a/m;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p1, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchResult;->sort:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/a/a/m;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    aget-object v3, v1, v0

    const-string/jumbo v4, "search_sort"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "sort key is : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/android/phone/a/a/m;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/alipay/android/phone/a/a/m;)Lcom/alipay/android/app/template/service/DynamicTemplateService;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/m;->h:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    sput-object p0, Lcom/alipay/android/phone/a/a/m;->d:Ljava/lang/String;

    .line 87
    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/alipay/android/phone/a/a/m;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e()Lcom/alipay/android/mobilesearch/biz/rpc/service/SearchFacade;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/alipay/android/phone/a/a/m;->c:Lcom/alipay/android/mobilesearch/biz/rpc/service/SearchFacade;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/alipay/android/phone/a/a/m;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 60
    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/a/a/m;->i:Ljava/lang/String;

    .line 63
    :cond_0
    const-string/jumbo v0, "homeTab"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "fundTab"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    :cond_1
    sget-object v0, Lcom/alipay/android/phone/a/a/m;->b:[Ljava/lang/String;

    .line 66
    invoke-static {}, Lcom/alipay/android/phone/a/a/o;->a()V

    .line 71
    :goto_0
    iget-object v1, p0, Lcom/alipay/android/phone/a/a/m;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 72
    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v2, :cond_3

    .line 75
    return-void

    .line 68
    :cond_2
    sget-object v0, Lcom/alipay/android/phone/a/a/m;->a:[Ljava/lang/String;

    .line 69
    invoke-static {}, Lcom/alipay/android/phone/a/a/o;->b()V

    goto :goto_0

    .line 72
    :cond_3
    aget-object v3, v0, v1

    .line 73
    iget-object v4, p0, Lcom/alipay/android/phone/a/a/m;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;IILjava/lang/String;)V
    .locals 6

    .prologue
    .line 90
    sput-object p1, Lcom/alipay/android/phone/a/a/m;->d:Ljava/lang/String;

    .line 91
    new-instance v0, Lcom/alipay/android/phone/a/a/n;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/phone/a/a/n;-><init>(Lcom/alipay/android/phone/a/a/m;Ljava/lang/String;IILjava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 137
    return-void
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 82
    const/16 v0, 0x14

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/alipay/android/phone/a/a/m;->a(Ljava/lang/String;IILjava/lang/String;)V

    .line 83
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 161
    const-string/jumbo v0, "jiushi"

    const-string/jumbo v1, "clear searchParam"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/a/a/m;->f:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/m;->g:Ljava/util/ArrayList;

    return-object v0
.end method
